.class public Lcom/streamtv/app/model/Category;
.super Ljava/lang/Object;
.source "Category.java"


# instance fields
.field private icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private stations:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Station;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/streamtv/app/model/Category;->icon:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/streamtv/app/model/Category;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/streamtv/app/model/Category;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/streamtv/app/model/Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/streamtv/app/model/Category;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/streamtv/app/model/Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Station;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/streamtv/app/model/Category;->stations:Ljava/util/List;

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/streamtv/app/model/Category;->icon:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/streamtv/app/model/Category;->name:Ljava/lang/String;

    return-void
.end method

.method public setStations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Station;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/streamtv/app/model/Category;->stations:Ljava/util/List;

    return-void
.end method
