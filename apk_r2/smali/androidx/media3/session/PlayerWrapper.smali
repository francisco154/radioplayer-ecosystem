.class final Landroidx/media3/session/PlayerWrapper;
.super Landroidx/media3/common/ForwardingPlayer;
.source "PlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/PlayerWrapper$LegacyError;,
        Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;
    }
.end annotation


# instance fields
.field private availablePlayerCommands:Landroidx/media3/common/Player$Commands;

.field private availableSessionCommands:Landroidx/media3/session/SessionCommands;

.field private customLayout:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private legacyError:Landroidx/media3/session/PlayerWrapper$LegacyError;

.field private legacyExtras:Landroid/os/Bundle;

.field private mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private final playIfSuppressed:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/Player;ZLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Player;",
            "Z",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Landroidx/media3/common/ForwardingPlayer;-><init>(Landroidx/media3/common/Player;)V

    .line 104
    iput-boolean p2, p0, Landroidx/media3/session/PlayerWrapper;->playIfSuppressed:Z

    .line 105
    iput-object p3, p0, Landroidx/media3/session/PlayerWrapper;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 106
    iput-object p4, p0, Landroidx/media3/session/PlayerWrapper;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 107
    iput-object p5, p0, Landroidx/media3/session/PlayerWrapper;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 108
    iput-object p6, p0, Landroidx/media3/session/PlayerWrapper;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 109
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    .line 110
    invoke-virtual {p4}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 111
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->updateCustomLayoutAndLegacyExtrasForMediaButtonPreferences()V

    :cond_0
    return-void
.end method

.method private static convertCommandToPlaybackStateActions(IZ)J
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/16 p1, 0x1f

    if-eq p0, p1, :cond_0

    packed-switch p0, :pswitch_data_0

    const-wide/16 p0, 0x0

    return-wide p0

    :pswitch_0
    const-wide/32 p0, 0x40000

    return-wide p0

    :pswitch_1
    const-wide/32 p0, 0x280000

    return-wide p0

    :pswitch_2
    const-wide/32 p0, 0x400000

    return-wide p0

    :pswitch_3
    const-wide/16 p0, 0x40

    return-wide p0

    :pswitch_4
    const-wide/16 p0, 0x8

    return-wide p0

    :pswitch_5
    const-wide/16 p0, 0x1000

    return-wide p0

    :pswitch_6
    const-wide/16 p0, 0x20

    return-wide p0

    :pswitch_7
    const-wide/16 p0, 0x10

    return-wide p0

    :pswitch_8
    const-wide/16 p0, 0x100

    return-wide p0

    :cond_0
    const-wide/32 p0, 0x3ac00

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x1

    return-wide p0

    :cond_2
    const-wide/16 p0, 0x4000

    return-wide p0

    :cond_3
    if-eqz p1, :cond_4

    const-wide/16 p0, 0x204

    goto :goto_0

    :cond_4
    const-wide/16 p0, 0x202

    :goto_0
    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateCustomLayoutAndLegacyExtrasForMediaButtonPreferences()V
    .locals 4

    .line 1336
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/session/PlayerWrapper;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v2, p0, Landroidx/media3/session/PlayerWrapper;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 1337
    invoke-static {v0, v1, v2}, Landroidx/media3/session/CommandButton;->copyWithUnavailableButtonsDisabled(Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x1

    .line 1340
    invoke-static {v0, v1, v1}, Landroidx/media3/session/CommandButton;->getCustomLayoutFromMediaButtonPreferences(Ljava/util/List;ZZ)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/PlayerWrapper;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 1344
    iget-object v2, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    const/4 v3, 0x2

    .line 1346
    invoke-static {v0, v3}, Landroidx/media3/session/CommandButton;->containsButtonForSlot(Ljava/util/List;I)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 1344
    const-string v3, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1347
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/media3/session/PlayerWrapper;->customLayout:Lcom/google/common/collect/ImmutableList;

    const/4 v3, 0x3

    .line 1349
    invoke-static {v2, v3}, Landroidx/media3/session/CommandButton;->containsButtonForSlot(Ljava/util/List;I)Z

    move-result v2

    xor-int/2addr v1, v2

    .line 1347
    const-string v2, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private verifyApplicationThread()V
    .locals 2

    .line 1332
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 241
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public addMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 0

    .line 563
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 564
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->addMediaItem(ILandroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public addMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 0

    .line 557
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 558
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->addMediaItem(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 575
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 576
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public addMediaItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 569
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 570
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->addMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public clearLegacyErrorStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Landroidx/media3/session/PlayerWrapper;->legacyError:Landroidx/media3/session/PlayerWrapper$LegacyError;

    return-void
.end method

.method public clearMediaItems()V
    .locals 0

    .line 581
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 582
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->clearMediaItems()V

    return-void
.end method

.method public clearVideoSurface()V
    .locals 0

    .line 455
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 456
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->clearVideoSurface()V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 0

    .line 461
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 462
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->clearVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 479
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 480
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 491
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 492
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 0

    .line 503
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 504
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->clearVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public createPlaybackStateCompat()Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 22

    move-object/from16 v0, p0

    .line 1070
    iget-object v1, v0, Landroidx/media3/session/PlayerWrapper;->legacyError:Landroidx/media3/session/PlayerWrapper$LegacyError;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 1071
    iget-boolean v4, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->isFatal:Z

    if-eqz v4, :cond_0

    .line 1072
    new-instance v4, Landroid/os/Bundle;

    iget-object v5, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->extras:Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1073
    iget-object v5, v0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1074
    new-instance v6, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    invoke-direct {v6}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;-><init>()V

    const/4 v10, 0x0

    .line 1079
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const/4 v7, 0x7

    const-wide/16 v8, -0x1

    .line 1075
    invoke-virtual/range {v6 .. v12}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setState(IJFJ)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v5

    .line 1080
    invoke-virtual {v5, v2, v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setActions(J)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v5

    .line 1081
    invoke-virtual {v5, v2, v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setBufferedPosition(J)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v2

    .line 1082
    invoke-virtual {v2, v4}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v2

    iget v3, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->code:I

    iget-object v4, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->message:Ljava/lang/String;

    .line 1083
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setErrorMessage(ILjava/lang/CharSequence;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v2

    iget-object v1, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->extras:Landroid/os/Bundle;

    .line 1084
    invoke-virtual {v2, v1}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 1085
    invoke-virtual {v1}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->build()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v1

    return-object v1

    .line 1087
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v4

    .line 1088
    iget-boolean v5, v0, Landroidx/media3/session/PlayerWrapper;->playIfSuppressed:Z

    invoke-static {v0, v5}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result v5

    .line 1090
    invoke-static {v0, v5}, Landroidx/media3/session/LegacyConversions;->convertToPlaybackStateCompatState(Landroidx/media3/common/Player;Z)I

    move-result v7

    .line 1094
    iget-object v6, v0, Landroidx/media3/session/PlayerWrapper;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v8

    invoke-static {v6, v8}, Landroidx/media3/session/MediaUtils;->intersect(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v13

    const-wide/16 v8, 0x80

    const/4 v6, 0x0

    .line 1095
    :goto_0
    invoke-virtual {v13}, Landroidx/media3/common/Player$Commands;->size()I

    move-result v10

    if-ge v6, v10, :cond_1

    .line 1097
    invoke-virtual {v13, v6}, Landroidx/media3/common/Player$Commands;->get(I)I

    move-result v10

    invoke-static {v10, v5}, Landroidx/media3/session/PlayerWrapper;->convertCommandToPlaybackStateActions(IZ)J

    move-result-wide v10

    or-long/2addr v8, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1099
    :cond_1
    iget-object v5, v0, Landroidx/media3/session/PlayerWrapper;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    const-string v6, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    .line 1100
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-wide/16 v5, -0x11

    and-long/2addr v8, v5

    .line 1103
    :cond_2
    iget-object v5, v0, Landroidx/media3/session/PlayerWrapper;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    const-string v6, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    .line 1104
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-wide/16 v5, -0x21

    and-long/2addr v8, v5

    :cond_3
    move-wide v11, v8

    const/16 v5, 0x11

    .line 1108
    invoke-virtual {v0, v5}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1109
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v5

    invoke-static {v5}, Landroidx/media3/session/LegacyConversions;->convertToQueueItemId(I)J

    move-result-wide v5

    goto :goto_1

    :cond_4
    const-wide/16 v5, -0x1

    .line 1111
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v10

    iget v10, v10, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 1112
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->isPlaying()Z

    move-result v15

    if-eqz v15, :cond_5

    move v15, v10

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    .line 1113
    :goto_2
    new-instance v2, Landroid/os/Bundle;

    if-eqz v1, :cond_6

    iget-object v3, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->extras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_3

    :cond_6
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1114
    :goto_3
    iget-object v3, v0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1115
    const-string v3, "EXO_SPEED"

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1116
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemWithCommandCheck()Landroidx/media3/common/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1117
    const-string v10, ""

    iget-object v8, v3, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1118
    const-string v8, "androidx.media.PlaybackStateCompat.Extras.KEY_MEDIA_ID"

    iget-object v3, v3, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/16 v3, 0x10

    .line 1120
    invoke-virtual {v0, v3}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1122
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v8

    goto :goto_4

    :cond_8
    const-wide/16 v8, -0x1

    :goto_4
    if-eqz v3, :cond_9

    .line 1123
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getBufferedPosition()J

    move-result-wide v16

    move-wide/from16 v18, v16

    goto :goto_5

    :cond_9
    const-wide/16 v18, 0x0

    .line 1124
    :goto_5
    new-instance v3, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    invoke-direct {v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;-><init>()V

    .line 1126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-wide/from16 v20, v5

    move-object v6, v3

    move v10, v15

    move-wide v14, v11

    move-wide/from16 v11, v16

    invoke-virtual/range {v6 .. v12}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setState(IJFJ)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v5

    .line 1127
    invoke-virtual {v5, v14, v15}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setActions(J)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v5

    move-wide/from16 v8, v20

    .line 1128
    invoke-virtual {v5, v8, v9}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setActiveQueueItemId(J)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v5

    move-wide/from16 v6, v18

    .line 1129
    invoke-virtual {v5, v6, v7}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setBufferedPosition(J)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v5

    .line 1130
    invoke-virtual {v5, v2}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v2

    const/4 v14, 0x0

    .line 1131
    :goto_6
    iget-object v3, v0, Landroidx/media3/session/PlayerWrapper;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v14, v3, :cond_c

    .line 1132
    iget-object v3, v0, Landroidx/media3/session/PlayerWrapper;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v14}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/CommandButton;

    .line 1133
    iget-object v5, v3, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v5, :cond_b

    .line 1134
    iget-boolean v6, v3, Landroidx/media3/session/CommandButton;->isEnabled:Z

    if-eqz v6, :cond_b

    iget v6, v5, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v6, :cond_b

    iget-object v6, v0, Landroidx/media3/session/PlayerWrapper;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 1137
    invoke-static {v3, v6, v13}, Landroidx/media3/session/CommandButton;->isButtonCommandAvailable(Landroidx/media3/session/CommandButton;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1139
    iget-object v6, v5, Landroidx/media3/session/SessionCommand;->customExtras:Landroid/os/Bundle;

    .line 1140
    iget v7, v3, Landroidx/media3/session/CommandButton;->icon:I

    if-eqz v7, :cond_a

    .line 1141
    new-instance v6, Landroid/os/Bundle;

    iget-object v7, v5, Landroidx/media3/session/SessionCommand;->customExtras:Landroid/os/Bundle;

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1142
    const-string v7, "androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT"

    iget v8, v3, Landroidx/media3/session/CommandButton;->icon:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1145
    :cond_a
    new-instance v7, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;

    iget-object v5, v5, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    iget-object v8, v3, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    iget v3, v3, Landroidx/media3/session/CommandButton;->iconResId:I

    invoke-direct {v7, v5, v8, v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1148
    invoke-virtual {v7, v6}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;

    move-result-object v3

    .line 1149
    invoke-virtual {v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;->build()Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;

    move-result-object v3

    .line 1145
    invoke-virtual {v2, v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->addCustomAction(Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_c
    if-eqz v4, :cond_d

    .line 1154
    invoke-static {v4}, Landroidx/media3/session/LegacyConversions;->convertToLegacyErrorCode(Landroidx/media3/common/PlaybackException;)I

    move-result v1

    invoke-virtual {v4}, Landroidx/media3/common/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1153
    invoke-virtual {v2, v1, v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setErrorMessage(ILjava/lang/CharSequence;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    goto :goto_7

    :cond_d
    if-eqz v1, :cond_e

    .line 1156
    iget v3, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->code:I

    iget-object v1, v1, Landroidx/media3/session/PlayerWrapper$LegacyError;->message:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setErrorMessage(ILjava/lang/CharSequence;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    .line 1158
    :cond_e
    :goto_7
    invoke-virtual {v2}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->build()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v1

    return-object v1
.end method

.method public createPlayerInfoForBundling()Landroidx/media3/session/PlayerInfo;
    .locals 36

    .line 1297
    new-instance v35, Landroidx/media3/session/PlayerInfo;

    move-object/from16 v0, v35

    .line 1298
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v1

    .line 1300
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->createSessionPositionInfoForBundling()Landroidx/media3/session/SessionPositionInfo;

    move-result-object v3

    .line 1301
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->createPositionInfoForBundling()Landroidx/media3/common/Player$PositionInfo;

    move-result-object v4

    .line 1302
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->createPositionInfoForBundling()Landroidx/media3/common/Player$PositionInfo;

    move-result-object v5

    .line 1304
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v7

    .line 1305
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getRepeatMode()I

    move-result v8

    .line 1306
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getShuffleModeEnabled()Z

    move-result v9

    .line 1307
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v10

    .line 1308
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentTimelineWithCommandCheck()Landroidx/media3/common/Timeline;

    move-result-object v11

    .line 1310
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaylistMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v13

    .line 1311
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getVolumeWithCommandCheck()F

    move-result v14

    .line 1312
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getAudioAttributesWithCommandCheck()Landroidx/media3/common/AudioAttributes;

    move-result-object v15

    .line 1313
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentCuesWithCommandCheck()Landroidx/media3/common/text/CueGroup;

    move-result-object v16

    .line 1314
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v17

    .line 1315
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceVolumeWithCommandCheck()I

    move-result v18

    .line 1316
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->isDeviceMutedWithCommandCheck()Z

    move-result v19

    .line 1317
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlayWhenReady()Z

    move-result v20

    .line 1319
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackSuppressionReason()I

    move-result v22

    .line 1320
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackState()I

    move-result v23

    .line 1321
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->isPlaying()Z

    move-result v24

    .line 1322
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->isLoading()Z

    move-result v25

    .line 1323
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getMediaMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v26

    .line 1324
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getSeekBackIncrement()J

    move-result-wide v27

    .line 1325
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getSeekForwardIncrement()J

    move-result-wide v29

    .line 1326
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getMaxSeekToPreviousPosition()J

    move-result-wide v31

    .line 1327
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentTracksWithCommandCheck()Landroidx/media3/common/Tracks;

    move-result-object v33

    .line 1328
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v34

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/16 v21, 0x1

    invoke-direct/range {v0 .. v34}, Landroidx/media3/session/PlayerInfo;-><init>(Landroidx/media3/common/PlaybackException;ILandroidx/media3/session/SessionPositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/common/PlaybackParameters;IZLandroidx/media3/common/VideoSize;Landroidx/media3/common/Timeline;ILandroidx/media3/common/MediaMetadata;FLandroidx/media3/common/AudioAttributes;Landroidx/media3/common/text/CueGroup;Landroidx/media3/common/DeviceInfo;IZZIIIZZLandroidx/media3/common/MediaMetadata;JJJLandroidx/media3/common/Tracks;Landroidx/media3/common/TrackSelectionParameters;)V

    return-object v35
.end method

.method public createPositionInfoForBundling()Landroidx/media3/common/Player$PositionInfo;
    .locals 15

    const/16 v0, 0x10

    .line 1262
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    const/16 v1, 0x11

    .line 1263
    invoke-virtual {p0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v1

    .line 1264
    new-instance v14, Landroidx/media3/common/Player$PositionInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1266
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v3

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1267
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v5, v3

    if-eqz v1, :cond_2

    .line 1269
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPeriodIndex()I

    move-result v1

    move v7, v1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 1270
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v8

    goto :goto_3

    :cond_3
    move-wide v8, v1

    :goto_3
    if-eqz v0, :cond_4

    .line 1271
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getContentPosition()J

    move-result-wide v1

    :cond_4
    move-wide v10, v1

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 1272
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentAdGroupIndex()I

    move-result v2

    move v12, v2

    goto :goto_4

    :cond_5
    const/4 v12, -0x1

    :goto_4
    if-eqz v0, :cond_6

    .line 1273
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentAdIndexInAdGroup()I

    move-result v0

    move v13, v0

    goto :goto_5

    :cond_6
    const/4 v13, -0x1

    :goto_5
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v14
.end method

.method public createSessionPositionInfoForBundling()Landroidx/media3/session/SessionPositionInfo;
    .locals 25

    const/16 v0, 0x10

    move-object/from16 v1, p0

    .line 1282
    invoke-virtual {v1, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    .line 1283
    new-instance v20, Landroidx/media3/session/SessionPositionInfo;

    .line 1284
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->createPositionInfoForBundling()Landroidx/media3/common/Player$PositionInfo;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1285
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->isPlayingAd()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1286
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 1287
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getDuration()J

    move-result-wide v9

    goto :goto_1

    :cond_1
    move-wide v9, v7

    :goto_1
    const-wide/16 v11, 0x0

    if-eqz v0, :cond_2

    .line 1288
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getBufferedPosition()J

    move-result-wide v13

    goto :goto_2

    :cond_2
    move-wide v13, v11

    :goto_2
    if-eqz v0, :cond_3

    .line 1289
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getBufferedPercentage()I

    move-result v2

    move v15, v2

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    if-eqz v0, :cond_4

    .line 1290
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getTotalBufferedDuration()J

    move-result-wide v16

    goto :goto_4

    :cond_4
    move-wide/from16 v16, v11

    :goto_4
    if-eqz v0, :cond_5

    .line 1291
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentLiveOffset()J

    move-result-wide v18

    goto :goto_5

    :cond_5
    move-wide/from16 v18, v7

    :goto_5
    if-eqz v0, :cond_6

    .line 1292
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getContentDuration()J

    move-result-wide v7

    :cond_6
    move-wide/from16 v21, v7

    if-eqz v0, :cond_7

    .line 1293
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getContentBufferedPosition()J

    move-result-wide v7

    move-wide/from16 v23, v7

    goto :goto_6

    :cond_7
    move-wide/from16 v23, v11

    :goto_6
    move-object/from16 v2, v20

    move-wide v7, v9

    move-wide v9, v13

    move v11, v15

    move-wide/from16 v12, v16

    move-wide/from16 v14, v18

    move-wide/from16 v16, v21

    move-wide/from16 v18, v23

    invoke-direct/range {v2 .. v19}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    return-object v20
.end method

.method public createVolumeProviderCompat()Landroidx/media3/session/legacy/VolumeProviderCompat;
    .locals 10

    .line 1164
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/DeviceInfo;->playbackType:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1167
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    const/16 v1, 0x1a

    const/16 v2, 0x22

    .line 1169
    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x19

    const/16 v2, 0x21

    .line 1172
    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1177
    :goto_0
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1178
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceVolumeWithCommandCheck()I

    move-result v5

    .line 1180
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    .line 1181
    new-instance v9, Landroidx/media3/session/PlayerWrapper$1;

    iget v4, v0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    iget-object v6, v0, Landroidx/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Landroidx/media3/session/PlayerWrapper$1;-><init>(Landroidx/media3/session/PlayerWrapper;IIILjava/lang/String;Landroid/os/Handler;I)V

    return-object v9
.end method

.method public decreaseDeviceVolume()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 901
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 902
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->decreaseDeviceVolume()V

    return-void
.end method

.method public decreaseDeviceVolume(I)V
    .locals 0

    .line 907
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 908
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->decreaseDeviceVolume(I)V

    return-void
.end method

.method public getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 1

    .line 509
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 510
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getAudioAttributes()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributesWithCommandCheck()Landroidx/media3/common/AudioAttributes;
    .locals 1

    const/16 v0, 0x15

    .line 514
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getAudioAttributes()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    goto :goto_0

    .line 516
    :cond_0
    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    :goto_0
    return-object v0
.end method

.method public getAvailableCommands()Landroidx/media3/common/Player$Commands;
    .locals 1

    .line 984
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 985
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    return-object v0
.end method

.method public getAvailablePlayerCommands()Landroidx/media3/common/Player$Commands;
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    return-object v0
.end method

.method public getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;
    .locals 1

    .line 146
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    return-object v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 389
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 390
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 383
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 384
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 419
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 420
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentDuration()J
    .locals 2

    .line 407
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 408
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 413
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 414
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 431
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 432
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 437
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 438
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentCues()Landroidx/media3/common/text/CueGroup;
    .locals 1

    .line 826
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 827
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentCues()Landroidx/media3/common/text/CueGroup;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCuesWithCommandCheck()Landroidx/media3/common/text/CueGroup;
    .locals 1

    const/16 v0, 0x1c

    .line 831
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentCues()Landroidx/media3/common/text/CueGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    :goto_0
    return-object v0
.end method

.method public getCurrentLiveOffset()J
    .locals 2

    .line 401
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 402
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentLiveOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .line 1031
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 1032
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItem()Landroidx/media3/common/MediaItem;
    .locals 1

    .line 745
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 746
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 1

    .line 776
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 777
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentMediaItemWithCommandCheck()Landroidx/media3/common/MediaItem;
    .locals 1

    const/16 v0, 0x10

    .line 751
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 1037
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 1038
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 367
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 368
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    .line 705
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 706
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTimelineWithCommandCheck()Landroidx/media3/common/Timeline;
    .locals 1

    const/16 v0, 0x11

    .line 710
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    .line 712
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    new-instance v0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;-><init>(Landroidx/media3/session/PlayerWrapper;)V

    return-object v0

    .line 715
    :cond_1
    sget-object v0, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method public getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 1

    .line 1020
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 1021
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTracksWithCommandCheck()Landroidx/media3/common/Tracks;
    .locals 1

    const/16 v0, 0x1e

    .line 1025
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    :goto_0
    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 770
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 771
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method getCustomLayout()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper;->customLayout:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getDeviceInfo()Landroidx/media3/common/DeviceInfo;
    .locals 1

    .line 836
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 837
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceVolume()I
    .locals 1

    .line 842
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 843
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getDeviceVolume()I

    move-result v0

    return v0
.end method

.method public getDeviceVolumeWithCommandCheck()I
    .locals 1

    const/16 v0, 0x17

    .line 847
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceVolume()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 373
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 374
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationWithCommandCheck()J
    .locals 2

    const/16 v0, 0x10

    .line 378
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public getLegacyError()Landroidx/media3/session/PlayerWrapper$LegacyError;
    .locals 1

    .line 227
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper;->legacyError:Landroidx/media3/session/PlayerWrapper$LegacyError;

    return-object v0
.end method

.method public getLegacyExtras()Landroid/os/Bundle;
    .locals 1

    .line 201
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    .line 1008
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 1009
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getMaxSeekToPreviousPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method getMediaButtonPreferences()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getMediaItemAt(I)Landroidx/media3/common/MediaItem;
    .locals 0

    .line 762
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 763
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->getMediaItemAt(I)Landroidx/media3/common/MediaItem;

    move-result-object p1

    return-object p1
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 756
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 757
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 968
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 969
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMediaMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;
    .locals 1

    const/16 v0, 0x12

    .line 973
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    :goto_0
    return-object v0
.end method

.method public getNextMediaItemIndex()I
    .locals 1

    .line 804
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 805
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getNextMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getNextWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 798
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 799
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getNextWindowIndex()I

    move-result v0

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 936
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 937
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 443
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 444
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 950
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 951
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    .line 943
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 944
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlaybackSuppressionReason()I

    move-result v0

    return v0
.end method

.method public getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 1

    .line 253
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 254
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 720
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 721
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;
    .locals 1

    const/16 v0, 0x12

    .line 725
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    goto :goto_0

    .line 727
    :cond_0
    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    :goto_0
    return-object v0
.end method

.method public getPreviousMediaItemIndex()I
    .locals 1

    .line 790
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 791
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPreviousMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getPreviousWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 784
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 785
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPreviousWindowIndex()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 732
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 733
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 331
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 332
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getSeekBackIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 343
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 344
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getSeekForwardIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 738
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 739
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getShuffleModeEnabled()Z

    move-result v0

    return v0
.end method

.method public getSurfaceSize()Landroidx/media3/common/util/Size;
    .locals 1

    .line 1065
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 1066
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getSurfaceSize()Landroidx/media3/common/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 395
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 396
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 990
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 991
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSize()Landroidx/media3/common/VideoSize;
    .locals 1

    .line 449
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 450
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 810
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 811
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getVolume()F

    move-result v0

    return v0
.end method

.method public getVolumeWithCommandCheck()F
    .locals 1

    const/16 v0, 0x16

    .line 815
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getVolume()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 625
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 626
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNextMediaItem()Z
    .locals 1

    .line 645
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 646
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->hasNextMediaItem()Z

    move-result v0

    return v0
.end method

.method public hasNextWindow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 633
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 634
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->hasNextWindow()Z

    move-result v0

    return v0
.end method

.method public hasPreviousMediaItem()Z
    .locals 1

    .line 639
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 640
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->hasPreviousMediaItem()Z

    move-result v0

    return v0
.end method

.method public increaseDeviceVolume()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 884
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 885
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->increaseDeviceVolume()V

    return-void
.end method

.method public increaseDeviceVolume(I)V
    .locals 0

    .line 890
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 891
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->increaseDeviceVolume(I)V

    return-void
.end method

.method public isCommandAvailable(I)Z
    .locals 0

    .line 978
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 979
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->isCommandAvailable(I)Z

    move-result p1

    return p1
.end method

.method public isCurrentMediaItemDynamic()Z
    .locals 1

    .line 1043
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 1044
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isCurrentMediaItemDynamic()Z

    move-result v0

    return v0
.end method

.method public isCurrentMediaItemLive()Z
    .locals 1

    .line 1049
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 1050
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isCurrentMediaItemLive()Z

    move-result v0

    return v0
.end method

.method public isCurrentMediaItemLiveWithCommandCheck()Z
    .locals 1

    const/16 v0, 0x10

    .line 1054
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->isCurrentMediaItemLive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentMediaItemSeekable()Z
    .locals 1

    .line 1059
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 1060
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isCurrentMediaItemSeekable()Z

    move-result v0

    return v0
.end method

.method public isDeviceMuted()Z
    .locals 1

    .line 852
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 853
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isDeviceMuted()Z

    move-result v0

    return v0
.end method

.method public isDeviceMutedWithCommandCheck()Z
    .locals 1

    const/16 v0, 0x17

    .line 857
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->isDeviceMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 962
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 963
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 956
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 957
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 425
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 426
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method public moveMediaItem(II)V
    .locals 0

    .line 599
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 600
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->moveMediaItem(II)V

    return-void
.end method

.method public moveMediaItems(III)V
    .locals 0

    .line 605
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 606
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->moveMediaItems(III)V

    return-void
.end method

.method public next()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 653
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 654
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->next()V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 271
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 272
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->pause()V

    return-void
.end method

.method public play()V
    .locals 0

    .line 259
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 260
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->play()V

    return-void
.end method

.method public playIfCommandAvailable()V
    .locals 1

    const/4 v0, 0x1

    .line 264
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->play()V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 0

    .line 277
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 278
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->prepare()V

    return-void
.end method

.method public prepareIfCommandAvailable()V
    .locals 1

    const/4 v0, 0x2

    .line 282
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->prepare()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 295
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 296
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->release()V

    return-void
.end method

.method public removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 246
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 247
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->removeListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public removeMediaItem(I)V
    .locals 0

    .line 587
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 588
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->removeMediaItem(I)V

    return-void
.end method

.method public removeMediaItems(II)V
    .locals 0

    .line 593
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 594
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->removeMediaItems(II)V

    return-void
.end method

.method public replaceMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 0

    .line 611
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 612
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->replaceMediaItem(ILandroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public replaceMediaItems(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 617
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 618
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->replaceMediaItems(IILjava/util/List;)V

    return-void
.end method

.method public seekBack()V
    .locals 0

    .line 337
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 338
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekBack()V

    return-void
.end method

.method public seekForward()V
    .locals 0

    .line 349
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 350
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekForward()V

    return-void
.end method

.method public seekTo(IJ)V
    .locals 0

    .line 325
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 326
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->seekTo(IJ)V

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 320
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->seekTo(J)V

    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 0

    .line 307
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 308
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToDefaultPosition()V

    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 0

    .line 301
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 302
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->seekToDefaultPosition(I)V

    return-void
.end method

.method public seekToDefaultPositionIfCommandAvailable()V
    .locals 1

    const/4 v0, 0x4

    .line 312
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->seekToDefaultPosition()V

    :cond_0
    return-void
.end method

.method public seekToNext()V
    .locals 0

    .line 1014
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 1015
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToNext()V

    return-void
.end method

.method public seekToNextMediaItem()V
    .locals 0

    .line 681
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 682
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToNextMediaItem()V

    return-void
.end method

.method public seekToNextWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 669
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 670
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToNextWindow()V

    return-void
.end method

.method public seekToPrevious()V
    .locals 0

    .line 1002
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 1003
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToPrevious()V

    return-void
.end method

.method public seekToPreviousMediaItem()V
    .locals 0

    .line 675
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 676
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToPreviousMediaItem()V

    return-void
.end method

.method public seekToPreviousWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 661
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 662
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToPreviousWindow()V

    return-void
.end method

.method public setAvailableCommands(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Z
    .locals 4

    .line 125
    iput-object p1, p0, Landroidx/media3/session/PlayerWrapper;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 126
    iput-object p2, p0, Landroidx/media3/session/PlayerWrapper;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 127
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    .line 130
    :cond_0
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    .line 131
    const-string v0, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 133
    iget-object v1, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    .line 134
    const-string v2, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 136
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->updateCustomLayoutAndLegacyExtrasForMediaButtonPreferences()V

    .line 137
    iget-object v3, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    .line 140
    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eq p1, v1, :cond_2

    :cond_1
    const/4 p2, 0x1

    :cond_2
    return p2
.end method

.method public setCustomLayout(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Landroidx/media3/session/PlayerWrapper;->customLayout:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 918
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 919
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setDeviceMuted(Z)V

    return-void
.end method

.method public setDeviceMuted(ZI)V
    .locals 0

    .line 924
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 925
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->setDeviceMuted(ZI)V

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 867
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 868
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setDeviceVolume(I)V

    return-void
.end method

.method public setDeviceVolume(II)V
    .locals 0

    .line 873
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 874
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->setDeviceVolume(II)V

    return-void
.end method

.method public setLegacyError(ZILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 221
    new-instance v6, Landroidx/media3/session/PlayerWrapper$LegacyError;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/PlayerWrapper$LegacyError;-><init>(ZILjava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/PlayerWrapper$1;)V

    iput-object v6, p0, Landroidx/media3/session/PlayerWrapper;->legacyError:Landroidx/media3/session/PlayerWrapper$LegacyError;

    return-void
.end method

.method public setLegacyExtras(Landroid/os/Bundle;)V
    .locals 1

    .line 191
    const-string v0, "EXO_SPEED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 192
    const-string v0, "androidx.media.PlaybackStateCompat.Extras.KEY_MEDIA_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 193
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    .line 194
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 196
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->updateCustomLayoutAndLegacyExtrasForMediaButtonPreferences()V

    :cond_0
    return-void
.end method

.method public setMediaButtonPreferences(Lcom/google/common/collect/ImmutableList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;)Z"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Landroidx/media3/session/PlayerWrapper;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 167
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    .line 168
    const-string v0, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 170
    iget-object v2, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    .line 171
    const-string v3, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 173
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->updateCustomLayoutAndLegacyExtrasForMediaButtonPreferences()V

    .line 174
    iget-object v4, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper;->legacyExtras:Landroid/os/Bundle;

    .line 177
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eq p1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 0

    .line 521
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 522
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;J)V
    .locals 0

    .line 527
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 528
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->setMediaItem(Landroidx/media3/common/MediaItem;J)V

    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;Z)V
    .locals 0

    .line 533
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 534
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->setMediaItem(Landroidx/media3/common/MediaItem;Z)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 539
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 540
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 551
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 552
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/common/ForwardingPlayer;->setMediaItems(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 545
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 546
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 0

    .line 930
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 931
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    .line 355
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 356
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0

    .line 361
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 362
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setPlaybackSpeed(F)V

    return-void
.end method

.method public setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 687
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 688
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 693
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 694
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setRepeatMode(I)V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 0

    .line 699
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 700
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    .line 996
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 997
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 0

    .line 467
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 468
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 473
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 474
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 485
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 486
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 0

    .line 497
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 498
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 820
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 821
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setVolume(F)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 289
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 290
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->stop()V

    return-void
.end method
