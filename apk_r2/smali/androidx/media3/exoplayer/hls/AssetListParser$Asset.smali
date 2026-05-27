.class public final Landroidx/media3/exoplayer/hls/AssetListParser$Asset;
.super Ljava/lang/Object;
.source "AssetListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/AssetListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Asset"
.end annotation


# instance fields
.field public final durationUs:J

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;J)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->uri:Landroid/net/Uri;

    .line 86
    iput-wide p2, p0, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->durationUs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 94
    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 97
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;

    .line 98
    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->durationUs:J

    iget-wide v5, p1, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->durationUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->uri:Landroid/net/Uri;

    iget-object p1, p1, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->uri:Landroid/net/Uri;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 103
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->uri:Landroid/net/Uri;

    iget-wide v1, p0, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->durationUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
