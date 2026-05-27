.class public final Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;
.super Ljava/lang/Object;
.source "HlsInterstitialsAdsLoader.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/ads/AdsLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;,
        Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;,
        Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$AdsMediaSourceFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HlsInterstitiaAdsLoader"


# instance fields
.field private final activeAdPlaybackStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/media3/common/AdPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field private final activeEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private isReleased:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private player:Landroidx/media3/common/Player;

.field private final playerListener:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;

.field private final unsupportedAdsIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;-><init>(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$1;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->playerListener:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeEventListeners:Ljava/util/Map;

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeAdPlaybackStates:Ljava/util/Map;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->listeners:Ljava/util/List;

    .line 298
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->unsupportedAdsIds:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/common/Player;
    .locals 0

    .line 72
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/common/Player;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Ljava/util/Map;
    .locals 0

    .line 72
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeAdPlaybackStates:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Landroidx/media3/common/util/Consumer;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)V

    return-void
.end method

.method private static getInterstitialDurationUs(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;J)J
    .locals 5

    .line 589
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->playoutLimitUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 590
    iget-wide p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->playoutLimitUs:J

    return-wide p0

    .line 591
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->durationUs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 592
    iget-wide p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->durationUs:J

    return-wide p0

    .line 593
    :cond_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->endDateUnixUs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 594
    iget-wide p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->endDateUnixUs:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->startDateUnixUs:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 595
    :cond_2
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->plannedDurationUs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 596
    iget-wide p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->plannedDurationUs:J

    return-wide p0

    :cond_3
    return-wide p1
.end method

.method private static isHlsMediaItem(Landroidx/media3/common/MediaItem;)Z
    .locals 2

    .line 521
    iget-object p0, p0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 522
    iget-object v0, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    const-string v1, "application/x-mpegURL"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 523
    invoke-static {p0}, Landroidx/media3/common/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isLiveMediaItem(Landroidx/media3/common/MediaItem;Landroidx/media3/common/Timeline;)Z
    .locals 4

    const/4 v0, 0x0

    .line 506
    invoke-virtual {p1, v0}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    .line 507
    new-instance v2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 509
    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 510
    iget-object v3, v2, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v3, p0}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 511
    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p0

    return p0

    .line 514
    :cond_0
    invoke-virtual {p1, v1, v0, v0}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static isSupportedMediaItem(Landroidx/media3/common/MediaItem;Landroidx/media3/common/Timeline;)Z
    .locals 1

    .line 502
    invoke-static {p0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isHlsMediaItem(Landroidx/media3/common/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isLiveMediaItem(Landroidx/media3/common/MediaItem;Landroidx/media3/common/Timeline;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$handleContentTimelineChanged$1(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 0

    .line 413
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p0

    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onContentTimelineChanged(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method static synthetic lambda$handlePrepareComplete$2(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;IILandroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 0

    .line 425
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p0

    .line 424
    invoke-interface {p4, p0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onPrepareCompleted(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic lambda$handlePrepareError$3(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;IILjava/io/IOException;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 6

    .line 444
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v1

    move-object v0, p5

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 443
    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onPrepareError(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILjava/io/IOException;)V

    return-void
.end method

.method static synthetic lambda$start$0(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/common/AdViewProvider;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 0

    .line 372
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onStart(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/common/AdViewProvider;)V

    return-void
.end method

.method static synthetic lambda$stop$4(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/common/AdPlaybackState;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 1

    .line 463
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 464
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getAdsId()Ljava/lang/Object;

    move-result-object p0

    .line 465
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/AdPlaybackState;

    .line 462
    invoke-interface {p2, v0, p0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onStop(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)V

    return-void
.end method

.method private static mapHlsInterstitialsToAdPlaybackState(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 528
    :goto_0
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->interstitials:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 529
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->interstitials:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;

    .line 530
    iget-object v5, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->assetUri:Landroid/net/Uri;

    if-nez v5, :cond_0

    .line 531
    const-string v4, "HlsInterstitiaAdsLoader"

    const-string v5, "Ignoring interstitials with X-ASSET-LIST. Not yet supported."

    invoke-static {v4, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 535
    :cond_0
    iget-object v5, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->cue:Ljava/util/List;

    const-string v6, "PRE"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-wide/16 v8, 0x0

    goto :goto_1

    .line 537
    :cond_1
    iget-object v5, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->cue:Ljava/util/List;

    const-string v8, "POST"

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide/high16 v8, -0x8000000000000000L

    goto :goto_1

    .line 540
    :cond_2
    iget-wide v8, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->startDateUnixUs:J

    iget-wide v10, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    sub-long/2addr v8, v10

    .line 543
    :goto_1
    iget-wide v10, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    .line 544
    invoke-virtual {v2, v8, v9, v10, v11}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result v5

    const/4 v10, -0x1

    if-ne v5, v10, :cond_3

    .line 549
    invoke-virtual {v2, v1, v8, v9}, Landroidx/media3/common/AdPlaybackState;->withNewAdGroup(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    const/4 v5, 0x0

    goto :goto_2

    .line 550
    :cond_3
    invoke-virtual {v2, v5}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v10

    iget-wide v10, v10, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v12, v10, v8

    if-eqz v12, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 553
    invoke-virtual {v2, v5, v8, v9}, Landroidx/media3/common/AdPlaybackState;->withNewAdGroup(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    .line 556
    :cond_4
    :goto_2
    invoke-virtual {v2, v5}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v8

    iget v8, v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 560
    invoke-static {v4, v9, v10}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->getInterstitialDurationUs(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;J)J

    move-result-wide v11

    const/4 v13, 0x1

    if-nez v8, :cond_5

    .line 563
    new-array v14, v13, [J

    goto :goto_3

    .line 565
    :cond_5
    invoke-virtual {v2, v5}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v14

    iget-object v14, v14, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 566
    array-length v15, v14

    add-int/2addr v15, v13

    new-array v15, v15, [J

    .line 567
    array-length v6, v14

    invoke-static {v14, v1, v15, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v14, v15

    .line 569
    :goto_3
    array-length v6, v14

    sub-int/2addr v6, v13

    aput-wide v11, v14, v6

    .line 572
    iget-wide v6, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->resumeOffsetUs:J

    cmp-long v13, v6, v9

    if-eqz v13, :cond_6

    .line 573
    iget-wide v6, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->resumeOffsetUs:J

    goto :goto_4

    :cond_6
    cmp-long v6, v11, v9

    if-eqz v6, :cond_7

    move-wide v6, v11

    goto :goto_4

    :cond_7
    const-wide/16 v6, 0x0

    .line 576
    :goto_4
    invoke-virtual {v2, v5}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v9

    iget-wide v9, v9, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v9, v6

    add-int/lit8 v6, v8, 0x1

    .line 579
    invoke-virtual {v2, v5, v6}, Landroidx/media3/common/AdPlaybackState;->withAdCount(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    .line 580
    invoke-virtual {v2, v5, v14}, Landroidx/media3/common/AdPlaybackState;->withAdDurationsUs(I[J)Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    .line 581
    invoke-virtual {v2, v5, v9, v10}, Landroidx/media3/common/AdPlaybackState;->withContentResumeOffsetUs(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;->assetUri:Landroid/net/Uri;

    .line 583
    invoke-static {v4}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object v4

    .line 582
    invoke-virtual {v2, v5, v8, v4}, Landroidx/media3/common/AdPlaybackState;->withAvailableAdMediaItem(IILandroidx/media3/common/MediaItem;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v2
.end method

.method private notifyListeners(Landroidx/media3/common/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 496
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 497
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    invoke-interface {p1, v1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)V
    .locals 1

    .line 484
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeAdPlaybackStates:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 485
    invoke-virtual {p2, v0}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 486
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeEventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;

    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v0, p2}, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;->onAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V

    goto :goto_0

    .line 490
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeAdPlaybackStates:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 1

    .line 303
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handleContentTimelineChanged(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/common/Timeline;)V
    .locals 4

    .line 384
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getAdsId()Ljava/lang/Object;

    move-result-object v0

    .line 385
    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 386
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeEventListeners:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;

    if-eqz p1, :cond_0

    .line 388
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->unsupportedAdsIds:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 389
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeAdPlaybackStates:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/AdPlaybackState;

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/AdPlaybackState;

    .line 390
    sget-object v1, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p2, v1}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 392
    new-instance p2, Landroidx/media3/common/AdPlaybackState;

    new-array v1, v2, [J

    invoke-direct {p2, v0, v1}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;->onAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V

    :cond_0
    return-void

    .line 397
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeAdPlaybackStates:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/AdPlaybackState;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/AdPlaybackState;

    .line 398
    sget-object v3, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v1, v3}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 402
    :cond_2
    new-instance v1, Landroidx/media3/common/AdPlaybackState;

    new-array v3, v2, [J

    invoke-direct {v1, v0, v3}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    .line 403
    new-instance v3, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {p2, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    .line 404
    iget-object v3, v2, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    instance-of v3, v3, Landroidx/media3/exoplayer/hls/HlsManifest;

    if-eqz v3, :cond_3

    .line 405
    iget-object v2, v2, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/hls/HlsManifest;

    iget-object v2, v2, Landroidx/media3/exoplayer/hls/HlsManifest;->mediaPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 406
    invoke-static {v2, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->mapHlsInterstitialsToAdPlaybackState(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    .line 409
    :cond_3
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)V

    .line 410
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->unsupportedAdsIds:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 411
    new-instance v1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;Landroidx/media3/common/Timeline;)V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    :cond_4
    return-void
.end method

.method public handlePrepareComplete(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;II)V
    .locals 2

    .line 420
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getAdsId()Ljava/lang/Object;

    move-result-object v0

    .line 421
    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->unsupportedAdsIds:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    new-instance v1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, v0, p2, p3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;II)V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public handlePrepareError(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;IILjava/io/IOException;)V
    .locals 7

    .line 435
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getAdsId()Ljava/lang/Object;

    move-result-object v2

    .line 436
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeAdPlaybackStates:Ljava/util/Map;

    .line 437
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 438
    invoke-virtual {v0, p2, p3}, Landroidx/media3/common/AdPlaybackState;->withAdLoadError(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    .line 439
    invoke-direct {p0, v2, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)V

    .line 440
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->unsupportedAdsIds:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    new-instance v6, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda1;

    move-object v0, v6

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;IILjava/io/IOException;)V

    invoke-direct {p0, v6}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 474
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/common/Player;

    :cond_0
    const/4 v0, 0x1

    .line 477
    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    return-void
.end method

.method public removeListener(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 1

    .line 308
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 3

    .line 324
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 325
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/common/Player;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/common/Player;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->playerListener:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;

    invoke-interface {v0, v2}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    :cond_1
    if-eqz p1, :cond_3

    .line 331
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 332
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/common/Player;

    return-void
.end method

.method public varargs setSupportedContentTypes([I)V
    .locals 4

    .line 337
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public start(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/datasource/DataSpec;Ljava/lang/Object;Landroidx/media3/common/AdViewProvider;Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;)V
    .locals 2

    .line 352
    iget-boolean p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 354
    new-instance p1, Landroidx/media3/common/AdPlaybackState;

    new-array p2, v0, [J

    invoke-direct {p1, p3, p2}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    invoke-interface {p5, p1}, Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;->onAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V

    return-void

    .line 357
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeAdPlaybackStates:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->unsupportedAdsIds:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 363
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeEventListeners:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 365
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/common/Player;

    const-string v1, "setPlayer(Player) needs to be called"

    invoke-static {p2, v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/Player;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->playerListener:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;

    invoke-interface {p2, v1}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 367
    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeEventListeners:Ljava/util/Map;

    invoke-interface {p2, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p1

    .line 369
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/common/Player;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isSupportedMediaItem(Landroidx/media3/common/MediaItem;Landroidx/media3/common/Timeline;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 371
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeAdPlaybackStates:Ljava/util/Map;

    sget-object p5, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    invoke-interface {p2, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    new-instance p2, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1, p3, p4}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/common/AdViewProvider;)V

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    goto :goto_0

    .line 374
    :cond_2
    new-instance p1, Landroidx/media3/common/AdPlaybackState;

    new-array p2, v0, [J

    invoke-direct {p1, p3, p2}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[J)V

    invoke-direct {p0, p3, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->putAndNotifyAdPlaybackStateUpdate(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)V

    .line 375
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/common/Player;

    if-eqz p1, :cond_3

    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported media item. Playing without ads for adsId="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HlsInterstitiaAdsLoader"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->unsupportedAdsIds:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void

    .line 358
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "media item with adsId=\'"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\' already started. Make sure adsIds are unique within the same playlist."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stop(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;)V
    .locals 3

    .line 450
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getAdsId()Ljava/lang/Object;

    move-result-object p2

    .line 451
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeEventListeners:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeAdPlaybackStates:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 453
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/common/Player;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->activeEventListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/common/Player;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->playerListener:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;

    invoke-interface {v1, v2}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 455
    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 456
    iput-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->player:Landroidx/media3/common/Player;

    .line 459
    :cond_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->isReleased:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->unsupportedAdsIds:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 460
    new-instance v1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/common/AdPlaybackState;)V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    .line 467
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->unsupportedAdsIds:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
