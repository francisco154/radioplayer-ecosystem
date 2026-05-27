.class public Lcom/streamtv/app/model/StationListHolder;
.super Ljava/lang/Object;
.source "StationListHolder.java"


# static fields
.field private static currentIndex:I

.field private static stations:Ljava/util/List;
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

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentIndex()I
    .locals 1

    .line 20
    sget v0, Lcom/streamtv/app/model/StationListHolder;->currentIndex:I

    return v0
.end method

.method public static getCurrentStation()Lcom/streamtv/app/model/Station;
    .locals 2

    .line 29
    sget-object v0, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 30
    sget v1, Lcom/streamtv/app/model/StationListHolder;->currentIndex:I

    if-ltz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    sget v1, Lcom/streamtv/app/model/StationListHolder;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/streamtv/app/model/Station;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNextStation()Lcom/streamtv/app/model/Station;
    .locals 4

    .line 53
    sget-object v0, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    sget v0, Lcom/streamtv/app/model/StationListHolder;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    const/4 v1, 0x0

    .line 56
    :goto_0
    sget-object v2, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 57
    sget-object v2, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/streamtv/app/model/Station;

    .line 58
    invoke-virtual {v2}, Lcom/streamtv/app/model/Station;->isPlayable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    sput v0, Lcom/streamtv/app/model/StationListHolder;->currentIndex:I

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 62
    sget-object v2, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPreviousStation()Lcom/streamtv/app/model/Station;
    .locals 4

    .line 37
    sget-object v0, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 38
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    sget v0, Lcom/streamtv/app/model/StationListHolder;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    const/4 v1, 0x0

    .line 40
    :goto_0
    sget-object v2, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 41
    sget-object v2, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/streamtv/app/model/Station;

    .line 42
    invoke-virtual {v2}, Lcom/streamtv/app/model/Station;->isPlayable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    sput v0, Lcom/streamtv/app/model/StationListHolder;->currentIndex:I

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 46
    sget-object v2, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    sget-object v2, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Station;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    return-object v0
.end method

.method public static hasNext()Z
    .locals 5

    .line 81
    sget-object v0, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    .line 83
    :goto_0
    sget-object v2, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 84
    sget-object v2, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    sget v3, Lcom/streamtv/app/model/StationListHolder;->currentIndex:I

    add-int/2addr v3, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/streamtv/app/model/Station;

    invoke-virtual {v2}, Lcom/streamtv/app/model/Station;->isPlayable()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static hasPrevious()Z
    .locals 5

    .line 69
    sget-object v0, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    .line 71
    :goto_0
    sget-object v2, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 72
    sget-object v2, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    sget v3, Lcom/streamtv/app/model/StationListHolder;->currentIndex:I

    sub-int/2addr v3, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/streamtv/app/model/Station;

    invoke-virtual {v2}, Lcom/streamtv/app/model/Station;->isPlayable()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static setCurrentIndex(I)V
    .locals 0

    .line 24
    sput p0, Lcom/streamtv/app/model/StationListHolder;->currentIndex:I

    return-void
.end method

.method public static setStations(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Station;",
            ">;I)V"
        }
    .end annotation

    .line 11
    sput-object p0, Lcom/streamtv/app/model/StationListHolder;->stations:Ljava/util/List;

    .line 12
    sput p1, Lcom/streamtv/app/model/StationListHolder;->currentIndex:I

    return-void
.end method
