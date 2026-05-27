.class final Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
.super Ljava/lang/Object;
.source "MediaControllerImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaControllerImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyPlayerInfo"
.end annotation


# instance fields
.field public final mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

.field public final playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

.field public final playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

.field public final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field public final queueTitle:Ljava/lang/CharSequence;

.field public final repeatMode:I

.field public final sessionExtras:Landroid/os/Bundle;

.field public final shuffleMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2503
    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    .line 2504
    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 2505
    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 2506
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    .line 2507
    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 2508
    iput v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    .line 2509
    iput v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    .line 2510
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->sessionExtras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V
    .locals 1

    .line 2532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2533
    iget-object v0, p1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    .line 2534
    iget-object v0, p1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 2535
    iget-object v0, p1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 2536
    iget-object v0, p1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    .line 2537
    iget-object v0, p1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    .line 2538
    iget v0, p1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iput v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    .line 2539
    iget v0, p1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    iput v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    .line 2540
    iget-object p1, p1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->sessionExtras:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->sessionExtras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;",
            "Landroidx/media3/session/legacy/PlaybackStateCompat;",
            "Landroidx/media3/session/legacy/MediaMetadataCompat;",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;",
            ">;",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 2521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2522
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    .line 2523
    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 2524
    iput-object p3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 2525
    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    .line 2526
    iput-object p5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    .line 2527
    iput p6, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    .line 2528
    iput p7, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    if-eqz p8, :cond_0

    goto :goto_0

    .line 2529
    :cond_0
    sget-object p8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    iput-object p8, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->sessionExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public copyWithExtraBinderGetters(Landroidx/media3/session/legacy/PlaybackStateCompat;II)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 10

    .line 2548
    new-instance v9, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget-object v8, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->sessionExtras:Landroid/os/Bundle;

    move-object v0, v9

    move-object v2, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    return-object v9
.end method

.method public copyWithMediaMetadataCompat(Landroidx/media3/session/legacy/MediaMetadataCompat;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 10

    .line 2576
    new-instance v9, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget v6, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iget v7, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    iget-object v8, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->sessionExtras:Landroid/os/Bundle;

    move-object v0, v9

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    return-object v9
.end method

.method public copyWithPlaybackInfoCompat(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 10

    .line 2616
    new-instance v9, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget v6, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iget v7, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    iget-object v8, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->sessionExtras:Landroid/os/Bundle;

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    return-object v9
.end method

.method public copyWithPlaybackStateCompat(Landroidx/media3/session/legacy/PlaybackStateCompat;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 10

    .line 2562
    new-instance v9, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget v6, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iget v7, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    iget-object v8, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->sessionExtras:Landroid/os/Bundle;

    move-object v0, v9

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    return-object v9
.end method

.method public copyWithQueue(Ljava/util/List;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;",
            ">;)",
            "Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;"
        }
    .end annotation

    .line 2589
    new-instance v9, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget v6, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iget v7, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    iget-object v8, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->sessionExtras:Landroid/os/Bundle;

    move-object v0, v9

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    return-object v9
.end method

.method public copyWithQueueTitle(Ljava/lang/CharSequence;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 10

    .line 2602
    new-instance v9, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget v6, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iget v7, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    iget-object v8, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->sessionExtras:Landroid/os/Bundle;

    move-object v0, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    return-object v9
.end method

.method public copyWithRepeatMode(I)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 10

    .line 2629
    new-instance v9, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget v7, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    iget-object v8, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->sessionExtras:Landroid/os/Bundle;

    move-object v0, v9

    move v6, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    return-object v9
.end method

.method public copyWithSessionExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 10

    .line 2655
    new-instance v9, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget v6, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iget v7, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    return-object v9
.end method

.method public copyWithShuffleMode(I)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 10

    .line 2642
    new-instance v9, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget v6, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iget-object v8, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->sessionExtras:Landroid/os/Bundle;

    move-object v0, v9

    move v7, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    return-object v9
.end method
