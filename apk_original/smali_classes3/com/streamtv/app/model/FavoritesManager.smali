.class public Lcom/streamtv/app/model/FavoritesManager;
.super Ljava/lang/Object;
.source "FavoritesManager.java"


# static fields
.field private static final KEY_FAVORITES:Ljava/lang/String; = "favorite_stations"

.field private static final PREFS_NAME:Ljava/lang/String; = "streamtv_favorites"

.field private static instance:Lcom/streamtv/app/model/FavoritesManager;


# instance fields
.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "streamtv_favorites"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/streamtv/app/model/FavoritesManager;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/streamtv/app/model/FavoritesManager;
    .locals 3

    const-class v0, Lcom/streamtv/app/model/FavoritesManager;

    monitor-enter v0

    .line 23
    :try_start_0
    const-class v1, Lcom/streamtv/app/model/FavoritesManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    sget-object v2, Lcom/streamtv/app/model/FavoritesManager;->instance:Lcom/streamtv/app/model/FavoritesManager;

    if-nez v2, :cond_0

    .line 25
    new-instance v2, Lcom/streamtv/app/model/FavoritesManager;

    invoke-direct {v2, p0}, Lcom/streamtv/app/model/FavoritesManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/streamtv/app/model/FavoritesManager;->instance:Lcom/streamtv/app/model/FavoritesManager;

    .line 27
    :cond_0
    sget-object p0, Lcom/streamtv/app/model/FavoritesManager;->instance:Lcom/streamtv/app/model/FavoritesManager;

    .line 28
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 28
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private getStationKey(Lcom/streamtv/app/model/Station;)Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getFavoriteStations(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Station;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Station;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/streamtv/app/model/FavoritesManager;->getFavoritesSet()Ljava/util/Set;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/streamtv/app/model/Station;

    .line 59
    invoke-direct {p0, v2}, Lcom/streamtv/app/model/FavoritesManager;->getStationKey(Lcom/streamtv/app/model/Station;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getFavoritesSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/streamtv/app/model/FavoritesManager;->prefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "favorite_stations"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isFavorite(Lcom/streamtv/app/model/Station;)Z
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/streamtv/app/model/FavoritesManager;->getFavoritesSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/streamtv/app/model/FavoritesManager;->getStationKey(Lcom/streamtv/app/model/Station;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toggleFavorite(Lcom/streamtv/app/model/Station;)Z
    .locals 3

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/streamtv/app/model/FavoritesManager;->getFavoritesSet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/streamtv/app/model/FavoritesManager;->getStationKey(Lcom/streamtv/app/model/Station;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/streamtv/app/model/FavoritesManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "favorite_stations"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return p1
.end method
