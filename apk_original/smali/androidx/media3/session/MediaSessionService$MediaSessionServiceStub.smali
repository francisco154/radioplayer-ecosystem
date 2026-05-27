.class final Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;
.super Landroidx/media3/session/IMediaSessionService$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSessionServiceStub"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final mediaSessionManager:Landroidx/media3/session/legacy/MediaSessionManager;

.field private final pendingControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/session/IMediaController;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaSessionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionService;)V
    .locals 2

    .line 762
    invoke-direct {p0}, Landroidx/media3/session/IMediaSessionService$Stub;-><init>()V

    .line 763
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    .line 764
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 765
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->handler:Landroid/os/Handler;

    .line 766
    invoke-static {p1}, Landroidx/media3/session/legacy/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media3/session/legacy/MediaSessionManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->mediaSessionManager:Landroidx/media3/session/legacy/MediaSessionManager;

    .line 768
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public connect(Landroidx/media3/session/IMediaController;Landroid/os/Bundle;)V
    .locals 9

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 781
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/ConnectionRequest;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/ConnectionRequest;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 788
    iget-object p2, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 790
    :try_start_1
    invoke-interface {p1, p2}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    .line 797
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    .line 798
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 799
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    if-eqz p2, :cond_2

    goto :goto_0

    .line 800
    :cond_2
    iget p2, v4, Landroidx/media3/session/ConnectionRequest;->pid:I

    .line 801
    :goto_0
    new-instance v3, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    iget-object v1, v4, Landroidx/media3/session/ConnectionRequest;->packageName:Ljava/lang/String;

    invoke-direct {v3, v1, p2, v0}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 803
    iget-object p2, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->mediaSessionManager:Landroidx/media3/session/legacy/MediaSessionManager;

    invoke-virtual {p2, v3}, Landroidx/media3/session/legacy/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Z

    move-result v5

    .line 804
    iget-object p2, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 806
    :try_start_2
    iget-object p2, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->handler:Landroid/os/Handler;

    new-instance v8, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub$$ExternalSyntheticLambda0;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;Landroidx/media3/session/IMediaController;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/ConnectionRequest;Z)V

    invoke-virtual {p2, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 854
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 855
    throw p1

    :catch_1
    move-exception p1

    .line 785
    const-string p2, "MSessionService"

    const-string v0, "Ignoring malformed Bundle for ConnectionRequest"

    invoke-static {p2, v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method synthetic lambda$connect$0$androidx-media3-session-MediaSessionService$MediaSessionServiceStub(Landroidx/media3/session/IMediaController;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/ConnectionRequest;Z)V
    .locals 15

    .line 0
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    .line 808
    iget-object v3, v1, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 811
    :try_start_0
    iget-object v5, v1, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/session/MediaSessionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_0

    .line 845
    :try_start_1
    invoke-interface {v2, v3}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    .line 815
    :cond_0
    :try_start_2
    new-instance v14, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget v8, v0, Landroidx/media3/session/ConnectionRequest;->libraryVersion:I

    iget v9, v0, Landroidx/media3/session/ConnectionRequest;->controllerInterfaceVersion:I

    new-instance v11, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    iget v6, v0, Landroidx/media3/session/ConnectionRequest;->controllerInterfaceVersion:I

    invoke-direct {v11, v2, v6}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;-><init>(Landroidx/media3/session/IMediaController;I)V

    iget-object v12, v0, Landroidx/media3/session/ConnectionRequest;->connectionHints:Landroid/os/Bundle;

    iget v13, v0, Landroidx/media3/session/ConnectionRequest;->maxCommandsForMediaItems:I

    move-object v6, v14

    move-object/from16 v7, p2

    move/from16 v10, p4

    invoke-direct/range {v6 .. v13}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 828
    :try_start_3
    invoke-virtual {v5, v14}, Landroidx/media3/session/MediaSessionService;->onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_1

    .line 845
    :try_start_4
    invoke-interface {v2, v3}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void

    .line 833
    :cond_1
    :try_start_5
    invoke-virtual {v5, v0}, Landroidx/media3/session/MediaSessionService;->addSession(Landroidx/media3/session/MediaSession;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 836
    :try_start_6
    invoke-virtual {v0, v2, v14}, Landroidx/media3/session/MediaSession;->handleControllerConnectionFromService(Landroidx/media3/session/IMediaController;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v4, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v4, 0x0

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 839
    :goto_0
    :try_start_7
    const-string v5, "MSessionService"

    const-string v6, "Failed to add a session to session service"

    invoke-static {v5, v6, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_1
    if-eqz v4, :cond_2

    .line 845
    :try_start_8
    invoke-interface {v2, v3}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :cond_2
    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v4, :cond_3

    :try_start_9
    invoke-interface {v2, v3}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    .line 851
    :catch_5
    :cond_3
    throw v0
.end method

.method public release()V
    .locals 3

    .line 859
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 860
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 861
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/IMediaController;

    const/4 v2, 0x0

    .line 863
    :try_start_0
    invoke-interface {v1, v2}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method
