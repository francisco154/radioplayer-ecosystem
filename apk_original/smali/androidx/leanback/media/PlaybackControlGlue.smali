.class public abstract Landroidx/leanback/media/PlaybackControlGlue;
.super Landroidx/leanback/media/PlaybackGlue;
.source "PlaybackControlGlue.java"

# interfaces
.implements Landroidx/leanback/widget/OnActionClickedListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/media/PlaybackControlGlue$UpdatePlaybackStateHandler;
    }
.end annotation


# static fields
.field public static final ACTION_CUSTOM_LEFT_FIRST:I = 0x1

.field public static final ACTION_CUSTOM_RIGHT_FIRST:I = 0x1000

.field public static final ACTION_FAST_FORWARD:I = 0x80

.field public static final ACTION_PLAY_PAUSE:I = 0x40

.field public static final ACTION_REWIND:I = 0x20

.field public static final ACTION_SKIP_TO_NEXT:I = 0x100

.field public static final ACTION_SKIP_TO_PREVIOUS:I = 0x10

.field static final DEBUG:Z = false

.field static final MSG_UPDATE_PLAYBACK_STATE:I = 0x64

.field private static final NUMBER_OF_SEEK_SPEEDS:I = 0x5

.field public static final PLAYBACK_SPEED_FAST_L0:I = 0xa

.field public static final PLAYBACK_SPEED_FAST_L1:I = 0xb

.field public static final PLAYBACK_SPEED_FAST_L2:I = 0xc

.field public static final PLAYBACK_SPEED_FAST_L3:I = 0xd

.field public static final PLAYBACK_SPEED_FAST_L4:I = 0xe

.field public static final PLAYBACK_SPEED_INVALID:I = -0x1

.field public static final PLAYBACK_SPEED_NORMAL:I = 0x1

.field public static final PLAYBACK_SPEED_PAUSED:I = 0x0

.field static final TAG:Ljava/lang/String; = "PlaybackControlGlue"

.field private static final UPDATE_PLAYBACK_STATE_DELAY_MS:I = 0x7d0

.field static final sHandler:Landroid/os/Handler;


# instance fields
.field private mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

.field private mControlsRowPresenter:Landroidx/leanback/widget/PlaybackRowPresenter;

.field private mFadeWhenPlaying:Z

.field private mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

.field private final mFastForwardSpeeds:[I

.field final mGlueWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/leanback/media/PlaybackControlGlue;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

.field private mPlaybackSpeed:I

.field private mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

.field private final mRewindSpeeds:[I

.field private mSkipNextAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

.field private mSkipPreviousAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 208
    new-instance v0, Landroidx/leanback/media/PlaybackControlGlue$UpdatePlaybackStateHandler;

    invoke-direct {v0}, Landroidx/leanback/media/PlaybackControlGlue$UpdatePlaybackStateHandler;-><init>()V

    sput-object v0, Landroidx/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 0

    .line 219
    invoke-direct {p0, p1, p2, p2}, Landroidx/leanback/media/PlaybackControlGlue;-><init>(Landroid/content/Context;[I[I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I[I)V
    .locals 1

    .line 232
    invoke-direct {p0, p1}, Landroidx/leanback/media/PlaybackGlue;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 192
    iput p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    .line 193
    iput-boolean p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFadeWhenPlaying:Z

    .line 210
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    .line 233
    array-length p1, p2

    if-eqz p1, :cond_1

    array-length p1, p2

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    .line 236
    iput-object p2, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFastForwardSpeeds:[I

    .line 237
    array-length p1, p3

    if-eqz p1, :cond_0

    array-length p1, p3

    if-gt p1, v0, :cond_0

    .line 240
    iput-object p3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mRewindSpeeds:[I

    return-void

    .line 238
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid rewindSpeeds array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid fastForwardSpeeds array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getMaxForwardSpeedId()I
    .locals 1

    .line 566
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFastForwardSpeeds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private getMaxRewindSpeedId()I
    .locals 1

    .line 570
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mRewindSpeeds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static notifyItemChanged(Landroidx/leanback/widget/SparseArrayObjectAdapter;Ljava/lang/Object;)V
    .locals 1

    .line 733
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    .line 735
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->notifyArrayItemRangeChanged(II)V

    :cond_0
    return-void
.end method

.method private updateControlsRow()V
    .locals 3

    .line 574
    invoke-direct {p0}, Landroidx/leanback/media/PlaybackControlGlue;->updateRowMetadata()V

    .line 575
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->updateControlButtons()V

    .line 576
    sget-object v0, Landroidx/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    iget-object v2, p0, Landroidx/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 577
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->updatePlaybackState()V

    return-void
.end method

.method private updatePlaybackState(I)V
    .locals 5

    .line 676
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    if-nez v0, :cond_0

    return-void

    .line 681
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getControlsRow()Landroidx/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/SparseArrayObjectAdapter;

    .line 683
    iget-object v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/16 v3, 0xa

    if-lt p1, v3, :cond_1

    add-int/lit8 v3, p1, -0x9

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 688
    :goto_0
    invoke-virtual {v1}, Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;->getIndex()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 689
    iget-object v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;->setIndex(I)V

    .line 690
    iget-object v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-static {v0, v1}, Landroidx/leanback/media/PlaybackControlGlue;->notifyItemChanged(Landroidx/leanback/widget/SparseArrayObjectAdapter;Ljava/lang/Object;)V

    .line 693
    :cond_2
    iget-object v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz v1, :cond_4

    const/16 v3, -0xa

    if-gt p1, v3, :cond_3

    neg-int v3, p1

    add-int/lit8 v3, v3, -0x9

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 698
    :goto_1
    invoke-virtual {v1}, Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;->getIndex()I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 699
    iget-object v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;->setIndex(I)V

    .line 700
    iget-object v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-static {v0, v1}, Landroidx/leanback/media/PlaybackControlGlue;->notifyItemChanged(Landroidx/leanback/widget/SparseArrayObjectAdapter;Ljava/lang/Object;)V

    :cond_4
    const/4 v1, 0x1

    if-nez p1, :cond_5

    .line 705
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->updateProgress()V

    .line 706
    invoke-virtual {p0, v2}, Landroidx/leanback/media/PlaybackControlGlue;->enableProgressUpdating(Z)V

    goto :goto_2

    .line 708
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/leanback/media/PlaybackControlGlue;->enableProgressUpdating(Z)V

    .line 711
    :goto_2
    iget-boolean v3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFadeWhenPlaying:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 712
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v3

    if-ne p1, v1, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Landroidx/leanback/media/PlaybackGlueHost;->setControlsOverlayAutoHideEnabled(Z)V

    .line 715
    :cond_7
    iget-object v3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v3, :cond_9

    if-nez p1, :cond_8

    const/4 v1, 0x0

    .line 719
    :cond_8
    invoke-virtual {v3}, Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;->getIndex()I

    move-result p1

    if-eq p1, v1, :cond_9

    .line 720
    iget-object p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;->setIndex(I)V

    .line 721
    iget-object p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-static {v0, p1}, Landroidx/leanback/media/PlaybackControlGlue;->notifyItemChanged(Landroidx/leanback/widget/SparseArrayObjectAdapter;Ljava/lang/Object;)V

    .line 724
    :cond_9
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 726
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    if-ge v2, v0, :cond_a

    .line 727
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/media/PlaybackGlue$PlayerCallback;

    invoke-virtual {v1, p0}, Landroidx/leanback/media/PlaybackGlue$PlayerCallback;->onPlayStateChanged(Landroidx/leanback/media/PlaybackGlue;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method private updatePlaybackStatusAfterUserAction()V
    .locals 4

    .line 581
    iget v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0, v0}, Landroidx/leanback/media/PlaybackControlGlue;->updatePlaybackState(I)V

    .line 583
    sget-object v0, Landroidx/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 584
    iget-object v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateRowMetadata()V
    .locals 2

    .line 604
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    if-nez v0, :cond_0

    return-void

    .line 610
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->hasValidMedia()Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/PlaybackControlsRow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 612
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/PlaybackControlsRow;->setTotalTime(I)V

    .line 613
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/PlaybackControlsRow;->setCurrentTime(I)V

    goto :goto_0

    .line 615
    :cond_1
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getMediaArt()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/PlaybackControlsRow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 616
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getMediaDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/PlaybackControlsRow;->setTotalTime(I)V

    .line 617
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/PlaybackControlsRow;->setCurrentTime(I)V

    .line 620
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackGlueHost;->notifyPlaybackRowChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected createPrimaryActionsAdapter(Landroidx/leanback/widget/PresenterSelector;)Landroidx/leanback/widget/SparseArrayObjectAdapter;
    .locals 1

    .line 368
    new-instance v0, Landroidx/leanback/widget/SparseArrayObjectAdapter;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/SparseArrayObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    .line 369
    invoke-virtual {p0, v0}, Landroidx/leanback/media/PlaybackControlGlue;->onCreatePrimaryActions(Landroidx/leanback/widget/SparseArrayObjectAdapter;)V

    return-object v0
.end method

.method dispatchAction(Landroidx/leanback/widget/Action;Landroid/view/KeyEvent;)Z
    .locals 4

    .line 499
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_6

    const/16 p1, 0x55

    if-eqz p2, :cond_1

    .line 501
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 502
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x7e

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p2, :cond_2

    .line 504
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, p1, :cond_2

    .line 505
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x7f

    if-ne p1, p2, :cond_4

    .line 510
    :cond_2
    iget p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    if-eqz v0, :cond_3

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 513
    :goto_2
    iput v2, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    .line 514
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->pause()V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    .line 515
    iget p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    if-eq p1, v1, :cond_5

    .line 516
    iput v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    .line 517
    invoke-virtual {p0, v1}, Landroidx/leanback/media/PlaybackControlGlue;->play(I)V

    .line 519
    :cond_5
    :goto_3
    invoke-direct {p0}, Landroidx/leanback/media/PlaybackControlGlue;->updatePlaybackStatusAfterUserAction()V

    goto :goto_6

    .line 521
    :cond_6
    iget-object p2, p0, Landroidx/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-ne p1, p2, :cond_7

    .line 522
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->next()V

    goto :goto_6

    .line 524
    :cond_7
    iget-object p2, p0, Landroidx/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-ne p1, p2, :cond_8

    .line 525
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->previous()V

    goto :goto_6

    .line 527
    :cond_8
    iget-object p2, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-ne p1, p2, :cond_9

    .line 528
    iget p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getMaxForwardSpeedId()I

    move-result p2

    if-ge p1, p2, :cond_b

    .line 529
    iget p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0xa

    .line 537
    iput p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    goto :goto_4

    :pswitch_0
    add-int/2addr p1, v1

    .line 534
    iput p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    .line 540
    :goto_4
    iget p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-virtual {p0, p1}, Landroidx/leanback/media/PlaybackControlGlue;->play(I)V

    .line 541
    invoke-direct {p0}, Landroidx/leanback/media/PlaybackControlGlue;->updatePlaybackStatusAfterUserAction()V

    goto :goto_6

    .line 544
    :cond_9
    iget-object p2, p0, Landroidx/leanback/media/PlaybackControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    if-ne p1, p2, :cond_a

    .line 545
    iget p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getMaxRewindSpeedId()I

    move-result p2

    neg-int p2, p2

    if-le p1, p2, :cond_b

    .line 546
    iget p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    packed-switch p1, :pswitch_data_1

    const/16 p1, -0xa

    .line 554
    iput p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    goto :goto_5

    :pswitch_1
    sub-int/2addr p1, v1

    .line 551
    iput p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    .line 557
    :goto_5
    iget p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-virtual {p0, p1}, Landroidx/leanback/media/PlaybackControlGlue;->play(I)V

    .line 558
    invoke-direct {p0}, Landroidx/leanback/media/PlaybackControlGlue;->updatePlaybackStatusAfterUserAction()V

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xd
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public enableProgressUpdating(Z)V
    .locals 0

    return-void
.end method

.method public getControlsRow()Landroidx/leanback/widget/PlaybackControlsRow;
    .locals 1

    .line 387
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    return-object v0
.end method

.method public getControlsRowPresenter()Landroidx/leanback/widget/PlaybackControlsRowPresenter;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 397
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRowPresenter:Landroidx/leanback/widget/PlaybackRowPresenter;

    instance-of v1, v0, Landroidx/leanback/widget/PlaybackControlsRowPresenter;

    if-eqz v1, :cond_0

    .line 398
    check-cast v0, Landroidx/leanback/widget/PlaybackControlsRowPresenter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getCurrentSpeedId()I
.end method

.method public getFastForwardSpeeds()[I
    .locals 1

    .line 319
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFastForwardSpeeds:[I

    return-object v0
.end method

.method public abstract getMediaArt()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getMediaDuration()I
.end method

.method public abstract getMediaSubtitle()Ljava/lang/CharSequence;
.end method

.method public abstract getMediaTitle()Ljava/lang/CharSequence;
.end method

.method public getPlaybackRowPresenter()Landroidx/leanback/widget/PlaybackRowPresenter;
    .locals 1

    .line 414
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRowPresenter:Landroidx/leanback/widget/PlaybackRowPresenter;

    return-object v0
.end method

.method public getRewindSpeeds()[I
    .locals 1

    .line 326
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mRewindSpeeds:[I

    return-object v0
.end method

.method public abstract getSupportedActions()J
.end method

.method public getUpdatePeriod()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public abstract hasValidMedia()Z
.end method

.method public isFadingEnabled()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFadeWhenPlaying:Z

    return v0
.end method

.method public abstract isMediaPlaying()Z
.end method

.method public isPlaying()Z
    .locals 1

    .line 751
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->isMediaPlaying()Z

    move-result v0

    return v0
.end method

.method public onActionClicked(Landroidx/leanback/widget/Action;)V
    .locals 1

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/media/PlaybackControlGlue;->dispatchAction(Landroidx/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    return-void
.end method

.method protected onAttachedToHost(Landroidx/leanback/media/PlaybackGlueHost;)V
    .locals 1

    .line 245
    invoke-super {p0, p1}, Landroidx/leanback/media/PlaybackGlue;->onAttachedToHost(Landroidx/leanback/media/PlaybackGlueHost;)V

    .line 246
    invoke-virtual {p1, p0}, Landroidx/leanback/media/PlaybackGlueHost;->setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V

    .line 247
    invoke-virtual {p1, p0}, Landroidx/leanback/media/PlaybackGlueHost;->setOnActionClickedListener(Landroidx/leanback/widget/OnActionClickedListener;)V

    .line 248
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getControlsRow()Landroidx/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getPlaybackRowPresenter()Landroidx/leanback/widget/PlaybackRowPresenter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->onCreateControlsRowAndPresenter()V

    .line 251
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getPlaybackRowPresenter()Landroidx/leanback/widget/PlaybackRowPresenter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/leanback/media/PlaybackGlueHost;->setPlaybackRowPresenter(Landroidx/leanback/widget/PlaybackRowPresenter;)V

    .line 252
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getControlsRow()Landroidx/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/leanback/media/PlaybackGlueHost;->setPlaybackRow(Landroidx/leanback/widget/Row;)V

    return-void
.end method

.method protected onCreateControlsRowAndPresenter()V
    .locals 2

    .line 276
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getControlsRow()Landroidx/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/PlaybackControlsRow;-><init>(Ljava/lang/Object;)V

    .line 278
    invoke-virtual {p0, v0}, Landroidx/leanback/media/PlaybackControlGlue;->setControlsRow(Landroidx/leanback/widget/PlaybackControlsRow;)V

    .line 280
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getPlaybackRowPresenter()Landroidx/leanback/widget/PlaybackRowPresenter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 281
    new-instance v0, Landroidx/leanback/media/PlaybackControlGlue$1;

    invoke-direct {v0, p0}, Landroidx/leanback/media/PlaybackControlGlue$1;-><init>(Landroidx/leanback/media/PlaybackControlGlue;)V

    .line 297
    new-instance v1, Landroidx/leanback/media/PlaybackControlGlue$2;

    invoke-direct {v1, p0, v0}, Landroidx/leanback/media/PlaybackControlGlue$2;-><init>(Landroidx/leanback/media/PlaybackControlGlue;Landroidx/leanback/widget/Presenter;)V

    invoke-virtual {p0, v1}, Landroidx/leanback/media/PlaybackControlGlue;->setPlaybackRowPresenter(Landroidx/leanback/widget/PlaybackRowPresenter;)V

    :cond_1
    return-void
.end method

.method protected onCreatePrimaryActions(Landroidx/leanback/widget/SparseArrayObjectAdapter;)V
    .locals 0

    return-void
.end method

.method protected onCreateSecondaryActions(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromHost()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, v0}, Landroidx/leanback/media/PlaybackControlGlue;->enableProgressUpdating(Z)V

    .line 268
    invoke-super {p0}, Landroidx/leanback/media/PlaybackGlue;->onDetachedFromHost()V

    return-void
.end method

.method protected onHostStart()V
    .locals 1

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, v0}, Landroidx/leanback/media/PlaybackControlGlue;->enableProgressUpdating(Z)V

    return-void
.end method

.method protected onHostStop()V
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, v0}, Landroidx/leanback/media/PlaybackControlGlue;->enableProgressUpdating(Z)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 p1, 0x6f

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_3

    if-eq p2, p1, :cond_3

    packed-switch p2, :pswitch_data_0

    .line 475
    iget-object p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    .line 476
    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/SparseArrayObjectAdapter;

    .line 477
    iget-object v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroidx/leanback/widget/ObjectAdapter;I)Landroidx/leanback/widget/Action;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 v0, 0x40

    .line 480
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x20

    .line 481
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    .line 482
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x10

    .line 483
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x100

    .line 484
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_2

    .line 485
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 486
    invoke-virtual {p0, p2, p3}, Landroidx/leanback/media/PlaybackControlGlue;->dispatchAction(Landroidx/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    :cond_1
    return v1

    :cond_2
    return v2

    .line 465
    :cond_3
    :pswitch_0
    iget p3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    const/16 v3, 0xa

    if-ge p3, v3, :cond_5

    const/16 v3, -0xa

    if-gt p3, v3, :cond_4

    goto :goto_0

    :cond_4
    return v2

    .line 468
    :cond_5
    :goto_0
    iput v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    .line 469
    invoke-virtual {p0, v1}, Landroidx/leanback/media/PlaybackControlGlue;->play(I)V

    .line 470
    invoke-direct {p0}, Landroidx/leanback/media/PlaybackControlGlue;->updatePlaybackStatusAfterUserAction()V

    if-eq p2, v0, :cond_7

    if-ne p2, p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMetadataChanged()V
    .locals 0

    .line 837
    invoke-direct {p0}, Landroidx/leanback/media/PlaybackControlGlue;->updateRowMetadata()V

    return-void
.end method

.method protected onStateChanged()V
    .locals 4

    .line 814
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->hasValidMedia()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 817
    :cond_0
    sget-object v0, Landroidx/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 818
    iget-object v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 819
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getCurrentSpeedId()I

    move-result v1

    iget v3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    if-eq v1, v3, :cond_1

    .line 821
    iget-object v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 825
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->updatePlaybackState()V

    goto :goto_0

    .line 828
    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->updatePlaybackState()V

    :goto_0
    return-void
.end method

.method public final play()V
    .locals 1

    const/4 v0, 0x1

    .line 600
    invoke-virtual {p0, v0}, Landroidx/leanback/media/PlaybackControlGlue;->play(I)V

    return-void
.end method

.method public play(I)V
    .locals 0

    return-void
.end method

.method public setControlsRow(Landroidx/leanback/widget/PlaybackControlsRow;)V
    .locals 1

    .line 352
    iput-object p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    .line 353
    new-instance v0, Landroidx/leanback/widget/ControlButtonPresenterSelector;

    invoke-direct {v0}, Landroidx/leanback/widget/ControlButtonPresenterSelector;-><init>()V

    .line 354
    invoke-virtual {p0, v0}, Landroidx/leanback/media/PlaybackControlGlue;->createPrimaryActionsAdapter(Landroidx/leanback/widget/PresenterSelector;)Landroidx/leanback/widget/SparseArrayObjectAdapter;

    move-result-object v0

    .line 353
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/PlaybackControlsRow;->setPrimaryActionsAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 356
    new-instance p1, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v0, Landroidx/leanback/widget/ControlButtonPresenterSelector;

    invoke-direct {v0}, Landroidx/leanback/widget/ControlButtonPresenterSelector;-><init>()V

    invoke-direct {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    .line 358
    invoke-virtual {p0, p1}, Landroidx/leanback/media/PlaybackControlGlue;->onCreateSecondaryActions(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 359
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getControlsRow()Landroidx/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/PlaybackControlsRow;->setSecondaryActionsAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 360
    invoke-direct {p0}, Landroidx/leanback/media/PlaybackControlGlue;->updateControlsRow()V

    return-void
.end method

.method public setControlsRowPresenter(Landroidx/leanback/widget/PlaybackControlsRowPresenter;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    iput-object p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRowPresenter:Landroidx/leanback/widget/PlaybackRowPresenter;

    return-void
.end method

.method public setFadingEnabled(Z)V
    .locals 1

    .line 333
    iput-boolean p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFadeWhenPlaying:Z

    if-nez p1, :cond_0

    .line 334
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/leanback/media/PlaybackGlueHost;->setControlsOverlayAutoHideEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setPlaybackRowPresenter(Landroidx/leanback/widget/PlaybackRowPresenter;)V
    .locals 0

    .line 406
    iput-object p1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRowPresenter:Landroidx/leanback/widget/PlaybackRowPresenter;

    return-void
.end method

.method updateControlButtons()V
    .locals 10

    .line 634
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getControlsRow()Landroidx/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/SparseArrayObjectAdapter;

    .line 635
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getSupportedActions()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    and-long/2addr v3, v1

    const/16 v5, 0x10

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-eqz v9, :cond_0

    .line 636
    iget-object v3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-nez v3, :cond_0

    .line 637
    new-instance v3, Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    .line 638
    invoke-virtual {v0, v5, v3}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez v9, :cond_1

    .line 639
    iget-object v3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-eqz v3, :cond_1

    .line 640
    invoke-virtual {v0, v5}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->clear(I)V

    .line 641
    iput-object v6, p0, Landroidx/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    :cond_1
    :goto_0
    const-wide/16 v3, 0x20

    and-long/2addr v3, v1

    const/16 v5, 0x20

    cmp-long v9, v3, v7

    if-eqz v9, :cond_2

    .line 643
    iget-object v3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    if-nez v3, :cond_2

    .line 644
    new-instance v3, Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v9, p0, Landroidx/leanback/media/PlaybackControlGlue;->mRewindSpeeds:[I

    array-length v9, v9

    invoke-direct {v3, v4, v9}, Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    .line 646
    invoke-virtual {v0, v5, v3}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-nez v9, :cond_3

    .line 647
    iget-object v3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz v3, :cond_3

    .line 648
    invoke-virtual {v0, v5}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->clear(I)V

    .line 649
    iput-object v6, p0, Landroidx/leanback/media/PlaybackControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    :cond_3
    :goto_1
    const-wide/16 v3, 0x40

    and-long/2addr v3, v1

    const/16 v5, 0x40

    cmp-long v9, v3, v7

    if-eqz v9, :cond_4

    .line 651
    iget-object v3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-nez v3, :cond_4

    .line 652
    new-instance v3, Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 653
    invoke-virtual {v0, v5, v3}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-nez v9, :cond_5

    .line 654
    iget-object v3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v3, :cond_5

    .line 655
    invoke-virtual {v0, v5}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->clear(I)V

    .line 656
    iput-object v6, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    :cond_5
    :goto_2
    const-wide/16 v3, 0x80

    and-long/2addr v3, v1

    const/16 v5, 0x80

    cmp-long v9, v3, v7

    if-eqz v9, :cond_6

    .line 658
    iget-object v3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-nez v3, :cond_6

    .line 659
    new-instance v3, Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v9, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFastForwardSpeeds:[I

    array-length v9, v9

    invoke-direct {v3, v4, v9}, Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    .line 661
    invoke-virtual {v0, v5, v3}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    if-nez v9, :cond_7

    .line 662
    iget-object v3, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-eqz v3, :cond_7

    .line 663
    invoke-virtual {v0, v5}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->clear(I)V

    .line 664
    iput-object v6, p0, Landroidx/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    :cond_7
    :goto_3
    const-wide/16 v3, 0x100

    and-long/2addr v1, v3

    const/16 v3, 0x100

    cmp-long v4, v1, v7

    if-eqz v4, :cond_8

    .line 666
    iget-object v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-nez v1, :cond_8

    .line 667
    new-instance v1, Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

    .line 668
    invoke-virtual {v0, v3, v1}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_8
    if-nez v4, :cond_9

    .line 669
    iget-object v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-eqz v1, :cond_9

    .line 670
    invoke-virtual {v0, v3}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->clear(I)V

    .line 671
    iput-object v6, p0, Landroidx/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

    :cond_9
    :goto_4
    return-void
.end method

.method updatePlaybackState()V
    .locals 1

    .line 626
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->hasValidMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getCurrentSpeedId()I

    move-result v0

    iput v0, p0, Landroidx/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    .line 628
    invoke-direct {p0, v0}, Landroidx/leanback/media/PlaybackControlGlue;->updatePlaybackState(I)V

    :cond_0
    return-void
.end method

.method public updateProgress()V
    .locals 2

    .line 437
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getCurrentPosition()I

    move-result v0

    .line 439
    iget-object v1, p0, Landroidx/leanback/media/PlaybackControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/PlaybackControlsRow;->setCurrentTime(I)V

    :cond_0
    return-void
.end method
