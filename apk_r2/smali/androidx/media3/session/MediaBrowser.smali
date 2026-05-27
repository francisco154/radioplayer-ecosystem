.class public final Landroidx/media3/session/MediaBrowser;
.super Landroidx/media3/session/MediaController;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;,
        Landroidx/media3/session/MediaBrowser$Listener;,
        Landroidx/media3/session/MediaBrowser$Builder;
    }
.end annotation


# static fields
.field private static final WRONG_THREAD_ERROR_MESSAGE:Ljava/lang/String; = "MediaBrowser method is called from a wrong thread. See javadoc of MediaController for details."


# instance fields
.field private impl:Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroidx/media3/session/MediaBrowser$Listener;Landroid/os/Looper;Landroidx/media3/session/MediaController$ConnectionCallback;Landroidx/media3/common/util/BitmapLoader;I)V
    .locals 0

    .line 270
    invoke-direct/range {p0 .. p8}, Landroidx/media3/session/MediaController;-><init>(Landroid/content/Context;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroidx/media3/session/MediaController$Listener;Landroid/os/Looper;Landroidx/media3/session/MediaController$ConnectionCallback;Landroidx/media3/common/util/BitmapLoader;I)V

    return-void
.end method

.method private static createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "TV;>;>;"
        }
    .end annotation

    const/16 v0, -0x64

    .line 450
    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$notifyBrowserListener$0(Landroidx/media3/common/util/Consumer;Landroidx/media3/session/MediaBrowser$Listener;)V
    .locals 0

    .line 460
    invoke-interface {p0, p1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private verifyApplicationThread()V
    .locals 2

    .line 454
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowser;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "MediaBrowser method is called from a wrong thread. See javadoc of MediaController for details."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method createImpl(Landroid/content/Context;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;Landroidx/media3/common/util/BitmapLoader;)Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;
    .locals 8

    .line 291
    invoke-virtual {p2}, Landroidx/media3/session/SessionToken;->isLegacySession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    new-instance v0, Landroidx/media3/session/MediaBrowserImplLegacy;

    .line 294
    invoke-static {p5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v7, p5

    check-cast v7, Landroidx/media3/common/util/BitmapLoader;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaBrowserImplLegacy;-><init>(Landroid/content/Context;Landroidx/media3/session/MediaBrowser;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;Landroidx/media3/common/util/BitmapLoader;)V

    goto :goto_0

    .line 296
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaBrowserImplBase;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaBrowserImplBase;-><init>(Landroid/content/Context;Landroidx/media3/session/MediaBrowser;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;)V

    .line 298
    :goto_0
    iput-object v0, p0, Landroidx/media3/session/MediaBrowser;->impl:Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    return-object v0
.end method

.method bridge synthetic createImpl(Landroid/content/Context;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;Landroidx/media3/common/util/BitmapLoader;)Landroidx/media3/session/MediaController$MediaControllerImpl;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 52
    invoke-virtual/range {p0 .. p5}, Landroidx/media3/session/MediaBrowser;->createImpl(Landroid/content/Context;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;Landroidx/media3/common/util/BitmapLoader;)Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    move-result-object p1

    return-object p1
.end method

.method public getChildren(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;>;"
        }
    .end annotation

    .line 373
    invoke-direct {p0}, Landroidx/media3/session/MediaBrowser;->verifyApplicationThread()V

    .line 374
    const-string v0, "parentId must not be empty"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 375
    :goto_0
    const-string v3, "page must not be negative"

    invoke-static {v2, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-lt p3, v1, :cond_1

    const/4 v0, 0x1

    .line 376
    :cond_1
    const-string v1, "pageSize must not be less than 1"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 377
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Landroidx/media3/session/MediaBrowser;->impl:Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;->getChildren(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 380
    :cond_2
    invoke-static {}, Landroidx/media3/session/MediaBrowser;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public getItem(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    .line 392
    invoke-direct {p0}, Landroidx/media3/session/MediaBrowser;->verifyApplicationThread()V

    .line 393
    const-string v0, "mediaId must not be empty"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 394
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Landroidx/media3/session/MediaBrowser;->impl:Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;->getItem(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 397
    :cond_0
    invoke-static {}, Landroidx/media3/session/MediaBrowser;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public getLibraryRoot(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Landroidx/media3/session/MediaBrowser;->verifyApplicationThread()V

    .line 312
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Landroidx/media3/session/MediaBrowser;->impl:Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;->getLibraryRoot(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 315
    :cond_0
    invoke-static {}, Landroidx/media3/session/MediaBrowser;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public getSearchResult(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;>;"
        }
    .end annotation

    .line 439
    invoke-direct {p0}, Landroidx/media3/session/MediaBrowser;->verifyApplicationThread()V

    .line 440
    const-string v0, "query must not be empty"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 441
    :goto_0
    const-string v3, "page must not be negative"

    invoke-static {v2, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-lt p3, v1, :cond_1

    const/4 v0, 0x1

    .line 442
    :cond_1
    const-string v1, "pageSize must not be less than 1"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 443
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Landroidx/media3/session/MediaBrowser;->impl:Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;->getSearchResult(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 446
    :cond_2
    invoke-static {}, Landroidx/media3/session/MediaBrowser;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method notifyBrowserListener(Landroidx/media3/common/util/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/session/MediaBrowser$Listener;",
            ">;)V"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Landroidx/media3/session/MediaBrowser;->listener:Landroidx/media3/session/MediaController$Listener;

    check-cast v0, Landroidx/media3/session/MediaBrowser$Listener;

    if-eqz v0, :cond_0

    .line 460
    iget-object v1, p0, Landroidx/media3/session/MediaBrowser;->applicationHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/media3/session/MediaBrowser$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Landroidx/media3/session/MediaBrowser$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/common/util/Consumer;Landroidx/media3/session/MediaBrowser$Listener;)V

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public search(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 414
    invoke-direct {p0}, Landroidx/media3/session/MediaBrowser;->verifyApplicationThread()V

    .line 415
    const-string v0, "query must not be empty"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 416
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Landroidx/media3/session/MediaBrowser;->impl:Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;->search(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 419
    :cond_0
    invoke-static {}, Landroidx/media3/session/MediaBrowser;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 330
    invoke-direct {p0}, Landroidx/media3/session/MediaBrowser;->verifyApplicationThread()V

    .line 331
    const-string v0, "parentId must not be empty"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 332
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Landroidx/media3/session/MediaBrowser;->impl:Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;->subscribe(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 335
    :cond_0
    invoke-static {}, Landroidx/media3/session/MediaBrowser;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public unsubscribe(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 349
    invoke-direct {p0}, Landroidx/media3/session/MediaBrowser;->verifyApplicationThread()V

    .line 350
    const-string v0, "parentId must not be empty"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 351
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Landroidx/media3/session/MediaBrowser;->impl:Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;->unsubscribe(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 354
    :cond_0
    invoke-static {}, Landroidx/media3/session/MediaBrowser;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
