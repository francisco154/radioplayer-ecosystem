.class Landroidx/media3/exoplayer/RendererHolder;
.super Ljava/lang/Object;
.source "RendererHolder.java"


# static fields
.field static final RENDERER_PREWARMING_STATE_NOT_PREWARMING_USING_PRIMARY:I = 0x0

.field static final RENDERER_PREWARMING_STATE_NOT_PREWARMING_USING_SECONDARY:I = 0x1

.field static final RENDERER_PREWARMING_STATE_PREWARMING_PRIMARY:I = 0x2

.field static final RENDERER_PREWARMING_STATE_TRANSITIONING_TO_PRIMARY:I = 0x4

.field static final RENDERER_PREWARMING_STATE_TRANSITIONING_TO_SECONDARY:I = 0x3

.field static final REPLACE_STREAMS_DISABLE_RENDERERS_COMPLETED:I = 0x1

.field static final REPLACE_STREAMS_DISABLE_RENDERERS_DISABLE_OFFLOAD_SCHEDULING:I = 0x2


# instance fields
.field private final index:I

.field private prewarmingState:I

.field private final primaryRenderer:Landroidx/media3/exoplayer/Renderer;

.field private primaryRequiresReset:Z

.field private final secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

.field private secondaryRequiresReset:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/Renderer;I)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    .line 60
    iput p3, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    .line 61
    iput-object p2, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    .line 63
    iput-boolean p1, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    .line 64
    iput-boolean p1, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    return-void
.end method

.method private disableRenderer(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V
    .locals 1

    .line 639
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 640
    invoke-static {p1}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 643
    :cond_2
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->onRendererDisabled(Landroidx/media3/exoplayer/Renderer;)V

    .line 644
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/RendererHolder;->ensureStopped(Landroidx/media3/exoplayer/Renderer;)V

    .line 645
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->disable()V

    return-void
.end method

.method private ensureStopped(Landroidx/media3/exoplayer/Renderer;)V
    .locals 2

    .line 445
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 446
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->stop()V

    :cond_0
    return-void
.end method

.method private static getFormats(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)[Landroidx/media3/common/Format;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 748
    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 749
    :goto_0
    new-array v2, v1, [Landroidx/media3/common/Format;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 751
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v3, v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 816
    iget-object v1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    iget v2, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 819
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v1

    iget-object v2, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    iget v3, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_1

    .line 820
    iget-object p1, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    return-object p1

    .line 821
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v1, :cond_2

    .line 822
    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v1

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    iget v2, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    aget-object p1, p1, v2

    if-ne v1, p1, :cond_2

    .line 823
    iget-object p1, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private hasFinishedReadingFromPeriodInternal(Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/Renderer;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 337
    :cond_0
    iget-object v1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    iget v2, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    aget-object v1, v1, v2

    .line 338
    invoke-interface {p2}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 339
    invoke-interface {p2}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v2

    if-ne v2, v1, :cond_1

    if-eqz v1, :cond_3

    .line 341
    invoke-interface {p2}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result v1

    if-nez v1, :cond_3

    .line 342
    invoke-direct {p0, p2, p1}, Landroidx/media3/exoplayer/RendererHolder;->hasReachedServerSideInsertedAdsTransition(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 344
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 347
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    iget v1, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    aget-object p1, p1, v1

    .line 348
    invoke-interface {p2}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object p2

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method private hasReachedServerSideInsertedAdsTransition(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;)Z
    .locals 3

    .line 355
    invoke-virtual {p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 361
    iget-object p2, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean p2, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    iget-boolean p2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz p2, :cond_1

    instance-of p2, p1, Landroidx/media3/exoplayer/text/TextRenderer;

    if-nez p2, :cond_0

    instance-of p2, p1, Landroidx/media3/exoplayer/metadata/MetadataRenderer;

    if-nez p2, :cond_0

    .line 366
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getReadingPositionUs()J

    move-result-wide p1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPrimaryRendererPrewarming()Z
    .locals 2

    .line 92
    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z
    .locals 0

    .line 800
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSecondaryRendererPrewarming()Z
    .locals 2

    .line 97
    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeDisableOrResetPositionInternal(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/SampleStream;Landroidx/media3/exoplayer/DefaultMediaClock;JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 616
    invoke-static {p1}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 619
    invoke-direct {p0, p1, p3}, Landroidx/media3/exoplayer/RendererHolder;->disableRenderer(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    .line 622
    invoke-interface {p1, p4, p5}, Landroidx/media3/exoplayer/Renderer;->resetPosition(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeResetRenderer(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 676
    iget-boolean p1, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    if-eqz p1, :cond_1

    .line 677
    iget-object p1, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->reset()V

    .line 678
    iput-boolean v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    goto :goto_0

    .line 680
    :cond_0
    iget-boolean p1, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    if-eqz p1, :cond_1

    .line 681
    iget-object p1, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->reset()V

    .line 682
    iput-boolean v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private replaceStreamsOrDisableRendererForTransitionInternal(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/DefaultMediaClock;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    .line 709
    invoke-static {p1}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-ne p1, v1, :cond_0

    .line 710
    invoke-direct {p0}, Landroidx/media3/exoplayer/RendererHolder;->isPrimaryRendererPrewarming()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-ne p1, v1, :cond_1

    .line 711
    invoke-direct {p0}, Landroidx/media3/exoplayer/RendererHolder;->isSecondaryRendererPrewarming()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 715
    :cond_1
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v1

    iget-object v2, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    iget v3, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    aget-object v2, v2, v3

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 716
    :goto_0
    invoke-virtual {p3, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    return v0

    .line 721
    :cond_3
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->isCurrentStreamFinal()Z

    move-result v1

    if-nez v1, :cond_4

    .line 723
    iget-object p3, p3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget p4, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    aget-object p3, p3, p4

    invoke-static {p3}, Landroidx/media3/exoplayer/RendererHolder;->getFormats(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)[Landroidx/media3/common/Format;

    move-result-object v1

    .line 724
    iget-object p3, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    iget p4, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    aget-object p3, p3, p4

    .line 726
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroidx/media3/exoplayer/source/SampleStream;

    .line 727
    invoke-virtual {p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v3

    .line 728
    invoke-virtual {p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v5

    iget-object p2, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v7, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v0, p1

    .line 724
    invoke-interface/range {v0 .. v7}, Landroidx/media3/exoplayer/Renderer;->replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    const/4 p1, 0x3

    return p1

    .line 733
    :cond_4
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 735
    invoke-direct {p0, p1, p4}, Landroidx/media3/exoplayer/RendererHolder;->disableRenderer(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    if-eqz v2, :cond_5

    .line 736
    invoke-virtual {p0}, Landroidx/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 737
    :cond_5
    iget-object p2, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-ne p1, p2, :cond_6

    const/4 v4, 0x1

    :cond_6
    invoke-direct {p0, v4}, Landroidx/media3/exoplayer/RendererHolder;->maybeResetRenderer(Z)V

    :cond_7
    return v0

    :cond_8
    return v4

    :cond_9
    :goto_1
    return v0
.end method

.method private setCurrentStreamFinalInternal(Landroidx/media3/exoplayer/Renderer;J)V
    .locals 1

    .line 218
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->setCurrentStreamFinal()V

    .line 219
    instance-of v0, p1, Landroidx/media3/exoplayer/text/TextRenderer;

    if-eqz v0, :cond_0

    .line 220
    check-cast p1, Landroidx/media3/exoplayer/text/TextRenderer;

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/text/TextRenderer;->setFinalStreamEndPositionUs(J)V

    :cond_0
    return-void
.end method

.method private transferResources(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/16 v0, 0x11

    if-eqz p1, :cond_0

    .line 571
    iget-object p1, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/Renderer;

    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/Renderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 573
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/Renderer;->handleMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public allowsPlayback(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z
    .locals 1

    .line 401
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 403
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public disable(Landroidx/media3/exoplayer/DefaultMediaClock;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/RendererHolder;->disableRenderer(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    .line 540
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 542
    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 544
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-direct {p0, v3, p1}, Landroidx/media3/exoplayer/RendererHolder;->disableRenderer(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    .line 545
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/RendererHolder;->maybeResetRenderer(Z)V

    if-eqz v0, :cond_1

    .line 547
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/RendererHolder;->transferResources(Z)V

    .line 550
    :cond_1
    iput v1, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    return-void
.end method

.method public disablePrewarming(Landroidx/media3/exoplayer/DefaultMediaClock;)V
    .locals 5

    .line 578
    invoke-virtual {p0}, Landroidx/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 581
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-ne v0, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v4, :cond_4

    .line 587
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/Renderer;

    .line 586
    :goto_2
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/RendererHolder;->disableRenderer(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    .line 588
    invoke-direct {p0, v4}, Landroidx/media3/exoplayer/RendererHolder;->maybeResetRenderer(Z)V

    .line 592
    iput v1, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    return-void
.end method

.method public enable(Landroidx/media3/exoplayer/RendererConfiguration;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/exoplayer/source/SampleStream;JZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/DefaultMediaClock;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p13

    .line 482
    invoke-static/range {p2 .. p2}, Landroidx/media3/exoplayer/RendererHolder;->getFormats(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)[Landroidx/media3/common/Format;

    move-result-object v4

    .line 483
    iget v2, v0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    iput-boolean v3, v0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    .line 502
    iget-object v2, v0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/Renderer;

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    .line 503
    invoke-interface/range {v2 .. v14}, Landroidx/media3/exoplayer/Renderer;->enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 513
    iget-object v2, v0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->onRendererEnabled(Landroidx/media3/exoplayer/Renderer;)V

    goto :goto_1

    .line 488
    :cond_1
    :goto_0
    iput-boolean v3, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    .line 489
    iget-object v2, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    invoke-interface/range {v2 .. v14}, Landroidx/media3/exoplayer/Renderer;->enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 499
    iget-object v2, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->onRendererEnabled(Landroidx/media3/exoplayer/Renderer;)V

    :goto_1
    return-void
.end method

.method public enableMayRenderStartOfStream()V
    .locals 1

    .line 261
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->enableMayRenderStartOfStream()V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->enableMayRenderStartOfStream()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getEnabledRendererCount()I
    .locals 2

    .line 102
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    .line 103
    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getMinDurationToProgressUs(JJ)J
    .locals 3

    .line 241
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/Renderer;->getDurationToProgressUs(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 245
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    .line 249
    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/exoplayer/Renderer;->getDurationToProgressUs(JJ)J

    move-result-wide p1

    .line 247
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public getReadingPositionUs(Landroidx/media3/exoplayer/MediaPeriodHolder;)J
    .locals 2

    .line 128
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getReadingPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackType()I
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v0

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;Landroidx/media3/exoplayer/MediaPeriodHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 528
    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object p3

    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/Renderer;

    .line 529
    invoke-interface {p3, p1, p2}, Landroidx/media3/exoplayer/Renderer;->handleMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public hasFinishedReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z
    .locals 1

    .line 328
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/RendererHolder;->hasFinishedReadingFromPeriodInternal(Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    .line 329
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/RendererHolder;->hasFinishedReadingFromPeriodInternal(Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/Renderer;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasReadPeriodToEnd(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/Renderer;

    .line 138
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result p1

    return p1
.end method

.method public hasSecondary()Z
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 2

    .line 301
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 304
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public isPrewarming()Z
    .locals 1

    .line 82
    invoke-direct {p0}, Landroidx/media3/exoplayer/RendererHolder;->isPrimaryRendererPrewarming()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/RendererHolder;->isSecondaryRendererPrewarming()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z
    .locals 0

    .line 317
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRendererEnabled()Z
    .locals 2

    .line 790
    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    goto :goto_1

    .line 795
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    :goto_1
    return v0
.end method

.method public isRendererPrewarming(I)Z
    .locals 4

    .line 86
    invoke-direct {p0}, Landroidx/media3/exoplayer/RendererHolder;->isPrimaryRendererPrewarming()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/RendererHolder;->isSecondaryRendererPrewarming()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    if-eq p1, v3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    return v1
.end method

.method public maybeDisableOrResetPosition(Landroidx/media3/exoplayer/source/SampleStream;Landroidx/media3/exoplayer/DefaultMediaClock;JZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 601
    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/RendererHolder;->maybeDisableOrResetPositionInternal(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/SampleStream;Landroidx/media3/exoplayer/DefaultMediaClock;JZ)V

    .line 603
    iget-object v3, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v3, :cond_0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move v8, p5

    .line 604
    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/RendererHolder;->maybeDisableOrResetPositionInternal(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/SampleStream;Landroidx/media3/exoplayer/DefaultMediaClock;JZ)V

    :cond_0
    return-void
.end method

.method public maybeHandlePrewarmingTransition()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 555
    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 565
    iput v2, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 557
    :goto_1
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/RendererHolder;->transferResources(Z)V

    .line 561
    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    .line 563
    :goto_2
    iput v2, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    :cond_4
    :goto_3
    return-void
.end method

.method public maybeSetOldStreamToFinal(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;J)V
    .locals 4

    .line 171
    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v0

    .line 172
    iget v1, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    invoke-virtual {p2, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    .line 173
    iget-object v2, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v2, :cond_1

    iget v2, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    .line 177
    invoke-static {v2}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/Renderer;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    :goto_1
    if-eqz v0, :cond_4

    .line 179
    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->isCurrentStreamFinal()Z

    move-result v0

    if-nez v0, :cond_4

    .line 180
    invoke-virtual {p0}, Landroidx/media3/exoplayer/RendererHolder;->getTrackType()I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 181
    :goto_2
    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    iget v3, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    aget-object p1, p1, v3

    .line 182
    iget-object p2, p2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    iget v3, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    aget-object p2, p2, v3

    if-eqz v1, :cond_3

    .line 184
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    .line 186
    invoke-virtual {p0}, Landroidx/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 193
    :cond_3
    invoke-direct {p0, v2, p3, p4}, Landroidx/media3/exoplayer/RendererHolder;->setCurrentStreamFinalInternal(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_4
    return-void
.end method

.method public maybeThrowStreamError(Landroidx/media3/exoplayer/MediaPeriodHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->maybeThrowStreamError()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 758
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->release()V

    const/4 v0, 0x0

    .line 759
    iput-boolean v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    .line 760
    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v1, :cond_0

    .line 761
    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->release()V

    .line 762
    iput-boolean v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    :cond_0
    return-void
.end method

.method public render(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/Renderer;->render(JJ)V

    .line 383
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/Renderer;->render(JJ)V

    :cond_1
    return-void
.end method

.method public replaceStreamsOrDisableRendererForTransition(Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/DefaultMediaClock;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 691
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    .line 692
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/exoplayer/RendererHolder;->replaceStreamsOrDisableRendererForTransitionInternal(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/DefaultMediaClock;)I

    move-result v0

    .line 694
    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    .line 695
    invoke-direct {p0, v1, p1, p2, p3}, Landroidx/media3/exoplayer/RendererHolder;->replaceStreamsOrDisableRendererForTransitionInternal(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/DefaultMediaClock;)I

    move-result p1

    const/4 p2, 0x1

    if-ne v0, p2, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 666
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 667
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/RendererHolder;->maybeResetRenderer(Z)V

    .line 669
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 670
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/RendererHolder;->maybeResetRenderer(Z)V

    :cond_1
    return-void
.end method

.method public resetPosition(Landroidx/media3/exoplayer/MediaPeriodHolder;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 656
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 658
    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/Renderer;->resetPosition(J)V

    :cond_0
    return-void
.end method

.method public setAllNonPrewarmingRendererStreamsFinal(J)V
    .locals 2

    .line 205
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/exoplayer/RendererHolder;->setCurrentStreamFinalInternal(Landroidx/media3/exoplayer/Renderer;J)V

    .line 210
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1

    .line 211
    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 213
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/exoplayer/RendererHolder;->setCurrentStreamFinalInternal(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_1
    return-void
.end method

.method public setCurrentStreamFinal(Landroidx/media3/exoplayer/MediaPeriodHolder;J)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/Renderer;

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/RendererHolder;->setCurrentStreamFinalInternal(Landroidx/media3/exoplayer/Renderer;J)V

    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/Renderer;->setPlaybackSpeed(FF)V

    .line 276
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/Renderer;->setPlaybackSpeed(FF)V

    :cond_0
    return-void
.end method

.method public setTimeline(Landroidx/media3/common/Timeline;)V
    .locals 1

    .line 287
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/Renderer;->setTimeline(Landroidx/media3/common/Timeline;)V

    .line 288
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v0, :cond_0

    .line 289
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/Renderer;->setTimeline(Landroidx/media3/common/Timeline;)V

    :cond_0
    return-void
.end method

.method public setVideoOutput(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 767
    invoke-virtual {p0}, Landroidx/media3/exoplayer/RendererHolder;->getTrackType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 770
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 774
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0, v2, p1}, Landroidx/media3/exoplayer/Renderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_1

    .line 772
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0, v2, p1}, Landroidx/media3/exoplayer/Renderer;->handleMessage(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 780
    invoke-virtual {p0}, Landroidx/media3/exoplayer/RendererHolder;->getTrackType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 783
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Landroidx/media3/exoplayer/Renderer;->handleMessage(ILjava/lang/Object;)V

    .line 784
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1

    .line 785
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Landroidx/media3/exoplayer/Renderer;->handleMessage(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 426
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->start()V

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1

    .line 428
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 430
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startPrewarming()V
    .locals 1

    .line 72
    invoke-virtual {p0}, Landroidx/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 74
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 78
    :goto_0
    iput v0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    return-void
.end method

.method public stop()V
    .locals 1

    .line 436
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/RendererHolder;->ensureStopped(Landroidx/media3/exoplayer/Renderer;)V

    .line 439
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Landroidx/media3/exoplayer/Renderer;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/RendererHolder;->ensureStopped(Landroidx/media3/exoplayer/Renderer;)V

    :cond_1
    return-void
.end method
