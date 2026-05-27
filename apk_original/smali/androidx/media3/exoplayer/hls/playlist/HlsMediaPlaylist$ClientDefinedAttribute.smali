.class public Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientDefinedAttribute"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute$Type;
    }
.end annotation


# static fields
.field public static final TYPE_DOUBLE:I = 0x2

.field public static final TYPE_HEX_TEXT:I = 0x1

.field public static final TYPE_TEXT:I


# instance fields
.field private final doubleValue:D

.field public final name:Ljava/lang/String;

.field private final textValue:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->name:Ljava/lang/String;

    const/4 p1, 0x2

    .line 650
    iput p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->type:I

    .line 651
    iput-wide p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->doubleValue:D

    const/4 p1, 0x0

    .line 652
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->textValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 657
    const-string v1, "0x"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0X"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 658
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->name:Ljava/lang/String;

    .line 659
    iput p3, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->type:I

    .line 660
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->textValue:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 661
    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->doubleValue:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 690
    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 693
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    .line 694
    iget v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->type:I

    iget v3, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->type:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->doubleValue:D

    iget-wide v5, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->doubleValue:D

    .line 695
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->name:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->name:Ljava/lang/String;

    .line 696
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->textValue:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->textValue:Ljava/lang/String;

    .line 697
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 671
    iget v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 672
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->doubleValue:D

    return-wide v0
.end method

.method public getTextValue()Ljava/lang/String;
    .locals 2

    .line 681
    iget v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 682
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->textValue:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 702
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->name:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->doubleValue:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->textValue:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
