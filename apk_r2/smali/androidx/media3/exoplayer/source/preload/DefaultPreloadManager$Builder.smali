.class public final Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;
.super Landroidx/media3/exoplayer/source/preload/BasePreloadManager$BuilderBase;
.source "DefaultPreloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/source/preload/BasePreloadManager$BuilderBase<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private bandwidthMeterSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/upstream/BandwidthMeter;",
            ">;"
        }
    .end annotation
.end field

.field private buildCalled:Z

.field private buildExoPlayerCalled:Z

.field private final context:Landroid/content/Context;

.field private loadControlSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/LoadControl;",
            ">;"
        }
    .end annotation
.end field

.field private preloadLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

.field private renderersFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/RenderersFactory;",
            ">;"
        }
    .end annotation
.end field

.field private trackSelectorFactory:Landroidx/media3/exoplayer/trackselection/TrackSelector$Factory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 86
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$RankingDataComparator;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$RankingDataComparator;-><init>()V

    new-instance v1, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-static {v1}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v1

    .line 86
    invoke-direct {p0, v0, p2, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$BuilderBase;-><init>(Ljava/util/Comparator;Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;Lcom/google/common/base/Supplier;)V

    .line 90
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->context:Landroid/content/Context;

    .line 91
    new-instance p2, Landroidx/media3/exoplayer/PlaybackLooperProvider;

    invoke-direct {p2}, Landroidx/media3/exoplayer/PlaybackLooperProvider;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->preloadLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    .line 92
    new-instance p2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda4;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->trackSelectorFactory:Landroidx/media3/exoplayer/trackselection/TrackSelector$Factory;

    .line 93
    new-instance p2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    .line 94
    new-instance p2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda6;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    .line 95
    new-instance p1, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda17;

    invoke-direct {p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;)Lcom/google/common/base/Supplier;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;)Landroidx/media3/exoplayer/PlaybackLooperProvider;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->preloadLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;)Landroidx/media3/exoplayer/trackselection/TrackSelector$Factory;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->trackSelectorFactory:Landroidx/media3/exoplayer/trackselection/TrackSelector$Factory;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;)Lcom/google/common/base/Supplier;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;)Lcom/google/common/base/Supplier;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 1

    .line 89
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0

    .line 93
    invoke-static {p0}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->getSingletonInstance(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$2(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 1

    .line 94
    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$setBandwidthMeter$6(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setLoadControl$5(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setMediaSourceFactory$3(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setRenderersFactory$4(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Landroidx/media3/exoplayer/source/preload/BasePreloadManager;
    .locals 1

    .line 67
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->build()Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;
    .locals 2

    .line 265
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 266
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildCalled:Z

    .line 267
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$1;)V

    return-object v0
.end method

.method public buildExoPlayer()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 2

    .line 221
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildExoPlayer(Landroidx/media3/exoplayer/ExoPlayer$Builder;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public buildExoPlayer(Landroidx/media3/exoplayer/ExoPlayer$Builder;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 2

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildExoPlayerCalled:Z

    .line 248
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    .line 249
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    .line 250
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setBandwidthMeter(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    .line 251
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/RenderersFactory;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    .line 252
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/LoadControl;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->preloadLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    .line 253
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setPlaybackLooperProvider(Landroidx/media3/exoplayer/PlaybackLooperProvider;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->trackSelectorFactory:Landroidx/media3/exoplayer/trackselection/TrackSelector$Factory;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->context:Landroid/content/Context;

    .line 254
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelector$Factory;->createTrackSelector(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/TrackSelector;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setTrackSelector(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    return-object p1
.end method

.method public setBandwidthMeter(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;
    .locals 1

    .line 184
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildExoPlayerCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 185
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;
    .locals 1

    .line 166
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildExoPlayerCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 167
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/LoadControl;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;
    .locals 1

    .line 111
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildExoPlayerCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 112
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setPreloadLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;
    .locals 1

    .line 204
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildExoPlayerCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 205
    new-instance v0, Landroidx/media3/exoplayer/PlaybackLooperProvider;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/PlaybackLooperProvider;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->preloadLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    return-object p0
.end method

.method public setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;
    .locals 1

    .line 129
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildExoPlayerCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 130
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/RenderersFactory;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setTrackSelectorFactory(Landroidx/media3/exoplayer/trackselection/TrackSelector$Factory;)Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;
    .locals 1

    .line 148
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->buildExoPlayerCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 149
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->trackSelectorFactory:Landroidx/media3/exoplayer/trackselection/TrackSelector$Factory;

    return-object p0
.end method
