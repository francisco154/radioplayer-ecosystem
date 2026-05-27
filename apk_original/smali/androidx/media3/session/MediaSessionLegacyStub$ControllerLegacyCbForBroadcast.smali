.class final Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media3/session/MediaSession$ControllerCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ControllerLegacyCbForBroadcast"
.end annotation


# instance fields
.field private lastDurationMs:J

.field private lastMediaId:Ljava/lang/String;

.field private lastMediaMetadata:Landroidx/media3/common/MediaMetadata;

.field private lastMediaUri:Landroid/net/Uri;

.field final synthetic this$0:Landroidx/media3/session/MediaSessionLegacyStub;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1043
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1044
    sget-object p1, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 1045
    const-string p1, ""

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaId:Ljava/lang/String;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1046
    iput-wide v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastDurationMs:J

    return-void
.end method

.method static synthetic access$1200(Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 1036
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->updateQueue(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method private handleBitmapFuturesAllCompletedAndSetQueue(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/graphics/Bitmap;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1272
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1273
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v2, :cond_0

    .line 1277
    :try_start_0
    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 1279
    :goto_1
    const-string v3, "MediaSessionLegacyStub"

    const-string v4, "Failed to get bitmap"

    invoke-static {v3, v4, v2}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v2, 0x0

    .line 1282
    :goto_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/MediaItem;

    invoke-static {v3, v1, v2}, Landroidx/media3/session/LegacyConversions;->convertToQueueItem(Landroidx/media3/common/MediaItem;ILandroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1287
    :cond_1
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$600(Landroidx/media3/session/legacy/MediaSessionCompat;Ljava/util/List;)V

    return-void
.end method

.method private updateMetadataIfChanged()V
    .locals 16

    move-object/from16 v8, p0

    .line 1356
    iget-object v0, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    .line 1357
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemWithCommandCheck()Landroidx/media3/common/MediaItem;

    move-result-object v1

    .line 1358
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getMediaMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v9

    .line 1360
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->isCurrentMediaItemLiveWithCommandCheck()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 1362
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getDurationWithCommandCheck()J

    move-result-wide v2

    :goto_0
    move-wide v10, v2

    if-eqz v1, :cond_1

    .line 1364
    iget-object v0, v1, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    move-object v12, v0

    const/4 v13, 0x0

    if-eqz v1, :cond_2

    .line 1367
    iget-object v0, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v0, :cond_2

    .line 1368
    iget-object v0, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    move-object v14, v0

    goto :goto_2

    :cond_2
    move-object v14, v13

    .line 1371
    :goto_2
    iget-object v0, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-static {v0, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaId:Ljava/lang/String;

    .line 1372
    invoke-static {v0, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaUri:Landroid/net/Uri;

    .line 1373
    invoke-static {v0, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastDurationMs:J

    cmp-long v2, v0, v10

    if-nez v2, :cond_3

    return-void

    .line 1378
    :cond_3
    iput-object v12, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaId:Ljava/lang/String;

    .line 1379
    iput-object v14, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaUri:Landroid/net/Uri;

    .line 1380
    iput-object v9, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 1381
    iput-wide v10, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastDurationMs:J

    .line 1384
    iget-object v0, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1385
    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;

    move-result-object v0

    invoke-interface {v0, v9}, Landroidx/media3/common/util/BitmapLoader;->loadBitmapFromMetadata(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1387
    iget-object v1, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {v1, v13}, Landroidx/media3/session/MediaSessionLegacyStub;->access$902(Landroidx/media3/session/MediaSessionLegacyStub;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/FutureCallback;

    .line 1388
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1390
    :try_start_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 1392
    :goto_3
    const-string v1, "MediaSessionLegacyStub"

    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$1000(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1395
    :cond_4
    iget-object v15, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    new-instance v6, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v4, v12

    move-object v5, v14

    move-object v13, v6

    move-wide v6, v10

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;Landroidx/media3/common/MediaMetadata;Ljava/lang/String;Landroid/net/Uri;J)V

    invoke-static {v15, v13}, Landroidx/media3/session/MediaSessionLegacyStub;->access$902(Landroidx/media3/session/MediaSessionLegacyStub;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/FutureCallback;

    .line 1421
    iget-object v1, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1423
    invoke-static {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$900(Landroidx/media3/session/MediaSessionLegacyStub;)Lcom/google/common/util/concurrent/FutureCallback;

    move-result-object v1

    iget-object v2, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1424
    invoke-static {v2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/emoji2/text/ConcurrencyHelpers$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroidx/emoji2/text/ConcurrencyHelpers$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    .line 1421
    invoke-static {v0, v1, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    :cond_5
    :goto_4
    const/4 v7, 0x0

    .line 1427
    :goto_5
    iget-object v0, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1428
    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v0

    move-object v2, v9

    move-object v3, v12

    move-object v4, v14

    move-wide v5, v10

    .line 1429
    invoke-static/range {v2 .. v7}, Landroidx/media3/session/LegacyConversions;->convertToMediaMetadataCompat(Landroidx/media3/common/MediaMetadata;Ljava/lang/String;Landroid/net/Uri;JLandroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaMetadataCompat;

    move-result-object v1

    .line 1427
    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$1100(Landroidx/media3/session/legacy/MediaSessionCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;)V

    return-void
.end method

.method private updateQueue(Landroidx/media3/common/Timeline;)V
    .locals 7

    .line 1238
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$500(Landroidx/media3/session/MediaSessionLegacyStub;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1242
    :cond_0
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToMediaItemList(Landroidx/media3/common/Timeline;)Ljava/util/List;

    move-result-object p1

    .line 1243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1245
    new-instance v4, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/List;)V

    .line 1253
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 1254
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/MediaItem;

    .line 1255
    iget-object v2, v2, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 1256
    iget-object v5, v2, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-nez v5, :cond_1

    .line 1257
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1258
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1260
    :cond_1
    iget-object v5, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1261
    invoke-static {v5}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/session/MediaSessionImpl;->getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;

    move-result-object v5

    iget-object v2, v2, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    invoke-interface {v5, v2}, Landroidx/media3/common/util/BitmapLoader;->decodeBitmap([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 1262
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1263
    iget-object v5, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1264
    invoke-static {v5}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroidx/emoji2/text/ConcurrencyHelpers$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5}, Landroidx/emoji2/text/ConcurrencyHelpers$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    .line 1263
    invoke-interface {v2, v4, v6}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 1239
    :cond_3
    :goto_2
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$600(Landroidx/media3/session/legacy/MediaSessionCompat;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$updateQueue$0$androidx-media3-session-MediaSessionLegacyStub$ControllerLegacyCbForBroadcast(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .line 1247
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    .line 1248
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1249
    invoke-direct {p0, p3, p2}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->handleBitmapFuturesAllCompletedAndSetQueue(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onAudioAttributesChanged(ILandroidx/media3/common/AudioAttributes;)V
    .locals 0

    .line 1317
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object p1

    iget p1, p1, Landroidx/media3/common/DeviceInfo;->playbackType:I

    if-nez p1, :cond_0

    .line 1319
    invoke-static {p2}, Landroidx/media3/session/LegacyConversions;->getLegacyStreamType(Landroidx/media3/common/AudioAttributes;)I

    move-result p1

    .line 1320
    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->setPlaybackToLocal(I)V

    :cond_0
    return-void
.end method

.method public onAvailableCommandsChangedFromPlayer(ILandroidx/media3/common/Player$Commands;)V
    .locals 0

    .line 1051
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    .line 1052
    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p2, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$200(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/PlayerWrapper;)V

    .line 1053
    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-virtual {p2, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public synthetic onAvailableCommandsChangedFromSession(ILandroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onAvailableCommandsChangedFromSession(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method public synthetic onChildrenChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onChildrenChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method public onDeviceInfoChanged(ILandroidx/media3/common/DeviceInfo;)V
    .locals 1

    .line 1326
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    .line 1327
    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->createVolumeProviderCompat()Landroidx/media3/session/legacy/VolumeProviderCompat;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$802(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/legacy/VolumeProviderCompat;)Landroidx/media3/session/legacy/VolumeProviderCompat;

    .line 1328
    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$800(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/VolumeProviderCompat;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1330
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->getAudioAttributesWithCommandCheck()Landroidx/media3/common/AudioAttributes;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->getLegacyStreamType(Landroidx/media3/common/AudioAttributes;)I

    move-result p1

    .line 1331
    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->setPlaybackToLocal(I)V

    goto :goto_0

    .line 1333
    :cond_0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$800(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/VolumeProviderCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->setPlaybackToRemote(Landroidx/media3/session/legacy/VolumeProviderCompat;)V

    :goto_0
    return-void
.end method

.method public onDeviceVolumeChanged(IIZ)V
    .locals 0

    .line 1339
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$800(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/VolumeProviderCompat;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1340
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$800(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/VolumeProviderCompat;

    move-result-object p1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/media3/session/legacy/VolumeProviderCompat;->setCurrentVolume(I)V

    :cond_1
    return-void
.end method

.method public onDisconnected(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onError(ILandroidx/media3/session/SessionError;)V
    .locals 3

    .line 1147
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    .line 1148
    iget v0, p2, Landroidx/media3/session/SessionError;->code:I

    .line 1150
    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToLegacyErrorCode(I)I

    move-result v0

    iget-object v1, p2, Landroidx/media3/session/SessionError;->message:Ljava/lang/String;

    iget-object p2, p2, Landroidx/media3/session/SessionError;->extras:Landroid/os/Bundle;

    const/4 v2, 0x0

    .line 1148
    invoke-virtual {p1, v2, v0, v1, p2}, Landroidx/media3/session/PlayerWrapper;->setLegacyError(ZILjava/lang/String;Landroid/os/Bundle;)V

    .line 1153
    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->setPlaybackState(Landroidx/media3/session/legacy/PlaybackStateCompat;)V

    .line 1154
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->clearLegacyErrorStatus()V

    .line 1155
    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->setPlaybackState(Landroidx/media3/session/legacy/PlaybackStateCompat;)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onIsLoadingChanged(Landroidx/media3/session/MediaSession$ControllerCb;IZ)V

    return-void
.end method

.method public onIsPlayingChanged(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1187
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public synthetic onLibraryResult(ILandroidx/media3/session/LibraryResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onLibraryResult(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/session/LibraryResult;)V

    return-void
.end method

.method public onMediaItemTransition(ILandroidx/media3/common/MediaItem;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1213
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->updateMetadataIfChanged()V

    if-nez p2, :cond_0

    .line 1215
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->setRatingType(I)V

    goto :goto_0

    .line 1217
    :cond_0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p2, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object p2, p2, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    .line 1218
    invoke-static {p2}, Landroidx/media3/session/LegacyConversions;->getRatingCompatStyle(Landroidx/media3/common/Rating;)I

    move-result p2

    .line 1217
    invoke-virtual {p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->setRatingType(I)V

    .line 1220
    :goto_0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public onMediaMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 1225
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->updateMetadataIfChanged()V

    return-void
.end method

.method public onPeriodicSessionPositionInfoChanged(ILandroidx/media3/session/SessionPositionInfo;ZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1352
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1168
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public onPlaybackParametersChanged(ILandroidx/media3/common/PlaybackParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1205
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public onPlaybackStateChanged(IILandroidx/media3/common/PlaybackException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1182
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1174
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public onPlayerChanged(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/PlayerWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1067
    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getCurrentTimelineWithCommandCheck()Landroidx/media3/common/Timeline;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1069
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getCurrentTimelineWithCommandCheck()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1070
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->onTimelineChanged(ILandroidx/media3/common/Timeline;I)V

    .line 1072
    :cond_1
    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getPlaylistMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 1075
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getPlaylistMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    .line 1074
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1076
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->onPlaylistMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V

    .line 1078
    :cond_3
    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getMediaMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 1081
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getMediaMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    .line 1080
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1082
    :cond_4
    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->onMediaMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V

    :cond_5
    if-eqz p2, :cond_6

    .line 1085
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getShuffleModeEnabled()Z

    move-result v0

    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getShuffleModeEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_7

    .line 1086
    :cond_6
    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getShuffleModeEnabled()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->onShuffleModeEnabledChanged(IZ)V

    :cond_7
    if-eqz p2, :cond_8

    .line 1089
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getRepeatMode()I

    move-result v0

    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getRepeatMode()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 1090
    :cond_8
    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getRepeatMode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->onRepeatModeChanged(II)V

    .line 1094
    :cond_9
    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->onDeviceInfoChanged(ILandroidx/media3/common/DeviceInfo;)V

    .line 1096
    invoke-static {p2, p3}, Landroidx/media3/session/MediaSessionLegacyStub;->access$300(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/PlayerWrapper;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1097
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getLegacyExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->setExtras(Landroid/os/Bundle;)V

    .line 1101
    :cond_a
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {v0, p3}, Landroidx/media3/session/MediaSessionLegacyStub;->access$200(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/PlayerWrapper;)V

    .line 1102
    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemWithCommandCheck()Landroidx/media3/common/MediaItem;

    move-result-object v0

    if-eqz p2, :cond_c

    .line 1105
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemWithCommandCheck()Landroidx/media3/common/MediaItem;

    move-result-object p2

    .line 1104
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    .line 1113
    :cond_b
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-virtual {p1, p3}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    goto :goto_1

    :cond_c
    :goto_0
    const/4 p2, 0x3

    .line 1107
    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->onMediaItemTransition(ILandroidx/media3/common/MediaItem;I)V

    :goto_1
    return-void
.end method

.method public onPlayerError(ILandroidx/media3/common/PlaybackException;)V
    .locals 0

    .line 1119
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public synthetic onPlayerInfoChanged(ILandroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Commands;ZZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onPlayerInfoChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Commands;ZZ)V

    return-void
.end method

.method public onPlaylistMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1294
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getController()Landroidx/media3/session/legacy/MediaControllerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 1295
    iget-object p2, p2, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    .line 1296
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1297
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$700(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/legacy/MediaSessionCompat;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPositionDiscontinuity(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1198
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame(I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onRenderedFirstFrame(Landroidx/media3/session/MediaSession$ControllerCb;I)V

    return-void
.end method

.method public onRepeatModeChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1310
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p1

    .line 1311
    invoke-static {p2}, Landroidx/media3/session/LegacyConversions;->convertToPlaybackStateCompatRepeatMode(I)I

    move-result p2

    .line 1310
    invoke-virtual {p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->setRepeatMode(I)V

    return-void
.end method

.method public synthetic onSearchResultChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onSearchResultChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onSeekBackIncrementChanged(Landroidx/media3/session/MediaSession$ControllerCb;IJ)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onSeekForwardIncrementChanged(Landroidx/media3/session/MediaSession$ControllerCb;IJ)V

    return-void
.end method

.method public onSessionActivityChanged(ILandroid/app/PendingIntent;)V
    .locals 0

    .line 1142
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public onSessionExtrasChanged(ILandroid/os/Bundle;)V
    .locals 0

    .line 1134
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    .line 1135
    invoke-virtual {p1, p2}, Landroidx/media3/session/PlayerWrapper;->setLegacyExtras(Landroid/os/Bundle;)V

    .line 1136
    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->getLegacyExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->setExtras(Landroid/os/Bundle;)V

    .line 1137
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->setPlaybackState(Landroidx/media3/session/legacy/PlaybackStateCompat;)V

    return-void
.end method

.method public synthetic onSessionResult(ILandroidx/media3/session/SessionResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onSessionResult(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/session/SessionResult;)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1304
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p1

    .line 1305
    invoke-static {p2}, Landroidx/media3/session/LegacyConversions;->convertToPlaybackStateCompatShuffleMode(Z)I

    move-result p2

    .line 1304
    invoke-virtual {p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->setShuffleMode(I)V

    return-void
.end method

.method public onTimelineChanged(ILandroidx/media3/common/Timeline;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1232
    invoke-direct {p0, p2}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->updateQueue(Landroidx/media3/common/Timeline;)V

    .line 1234
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->updateMetadataIfChanged()V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(ILandroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onTrackSelectionParametersChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(ILandroidx/media3/common/Tracks;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onTracksChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/Tracks;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(ILandroidx/media3/common/VideoSize;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onVideoSizeChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/VideoSize;)V

    return-void
.end method

.method public synthetic onVolumeChanged(IF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onVolumeChanged(Landroidx/media3/session/MediaSession$ControllerCb;IF)V

    return-void
.end method

.method public sendCustomCommand(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 0

    .line 1160
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p2, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroidx/media3/session/legacy/MediaSessionCompat;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setCustomLayout(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 1124
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public setMediaButtonPreferences(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 1129
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method
