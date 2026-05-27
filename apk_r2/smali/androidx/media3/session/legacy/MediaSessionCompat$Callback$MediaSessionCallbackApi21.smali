.class Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;
.super Landroid/media/session/MediaSession$Callback;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSessionCallbackApi21"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;


# direct methods
.method constructor <init>(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1356
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method

.method private clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V
    .locals 1

    const/4 v0, 0x0

    .line 1742
    invoke-interface {p1, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method private getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    .locals 3

    .line 1751
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    iget-object v0, v0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1752
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    iget-object v1, v1, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    .line 1753
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1754
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->getCallback()Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    move-result-object v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 1753
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V
    .locals 3

    .line 1727
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    return-void

    .line 1733
    :cond_0
    invoke-interface {p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 1734
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1735
    const-string v0, "android.media.session.MediaController"

    .line 1737
    :cond_1
    new-instance v1, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    invoke-interface {p1, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 5

    .line 1361
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1365
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1366
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1368
    :try_start_0
    const-string v1, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p3, :cond_8

    .line 1370
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1371
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object p2

    .line 1372
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getExtraBinder()Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v1

    .line 1373
    const-string v3, "android.support.v4.media.session.EXTRA_BINDER"

    if-nez v1, :cond_1

    goto :goto_0

    .line 1374
    :cond_1
    invoke-interface {v1}, Landroidx/media3/session/legacy/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1373
    :goto_0
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1375
    const-string v1, "android.support.v4.media.session.SESSION_TOKEN2"

    .line 1376
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getSession2Token()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p2

    .line 1375
    invoke-static {p1, v1, p2}, Landroidx/versionedparcelable/ParcelUtils;->putVersionedParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcelable;)V

    const/4 p2, 0x0

    .line 1377
    invoke-virtual {p3, p2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1379
    :cond_2
    const-string v1, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    if-eqz v1, :cond_3

    if-eqz p2, :cond_8

    .line 1381
    :try_start_1
    iget-object p1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    .line 1383
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    sget-object p3, Landroidx/media3/session/legacy/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1382
    invoke-static {p2, p3}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 1381
    invoke-virtual {p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onAddQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    goto/16 :goto_1

    .line 1387
    :cond_3
    const-string v1, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    if-eqz v1, :cond_4

    if-eqz p2, :cond_8

    .line 1389
    :try_start_2
    iget-object p1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    .line 1391
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    sget-object v1, Landroidx/media3/session/legacy/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1390
    invoke-static {p3, v1}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 1394
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1389
    invoke-virtual {p1, p3, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onAddQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    goto :goto_1

    .line 1396
    :cond_4
    const-string v1, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_8

    .line 1398
    iget-object p1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    .line 1400
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    sget-object p3, Landroidx/media3/session/legacy/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1399
    invoke-static {p2, p3}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 1398
    invoke-virtual {p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onRemoveQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    goto :goto_1

    .line 1404
    :cond_5
    const-string v1, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1405
    iget-object p1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mQueue:Ljava/util/List;

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    const/4 p3, -0x1

    .line 1407
    invoke-virtual {p2, v4, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_6

    .line 1408
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_6

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    :cond_6
    if-eqz v2, :cond_8

    .line 1410
    iget-object p1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->getDescription()Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onRemoveQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    goto :goto_1

    .line 1414
    :cond_7
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_2
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1419
    :catch_0
    const-string p1, "MediaSessionCompat"

    const-string p2, "Could not unparcel the extra data."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_8
    :goto_1
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 1586
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1590
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1591
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1594
    :try_start_0
    const-string v1, "android.support.v4.media.session.action.PLAY_FROM_URI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "android.support.v4.media.session.action.ARGUMENT_URI"

    const-string v3, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    if-eqz v1, :cond_1

    if-eqz p2, :cond_b

    .line 1596
    :try_start_1
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 1597
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 1598
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1599
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1601
    :cond_1
    const-string v1, "android.support.v4.media.session.action.PREPARE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1602
    iget-object p1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepare()V

    goto/16 :goto_0

    .line 1603
    :cond_2
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_b

    .line 1605
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1606
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 1607
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1608
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1610
    :cond_3
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_b

    .line 1612
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1613
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 1614
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1615
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1617
    :cond_4
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_b

    .line 1619
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 1620
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 1621
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1622
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1624
    :cond_5
    const-string v1, "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p2, :cond_b

    .line 1626
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1627
    iget-object p2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p2, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetCaptioningEnabled(Z)V

    goto/16 :goto_0

    .line 1629
    :cond_6
    const-string v1, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p2, :cond_b

    .line 1631
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1632
    iget-object p2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p2, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetRepeatMode(I)V

    goto :goto_0

    .line 1634
    :cond_7
    const-string v1, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p2, :cond_b

    .line 1636
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1637
    iget-object p2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p2, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetShuffleMode(I)V

    goto :goto_0

    .line 1639
    :cond_8
    const-string v1, "android.support.v4.media.session.action.SET_RATING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz p2, :cond_b

    .line 1641
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_RATING"

    .line 1643
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    sget-object v1, Landroidx/media3/session/legacy/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1642
    invoke-static {p1, v1}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/legacy/RatingCompat;

    .line 1644
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 1645
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1646
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetRating(Landroidx/media3/session/legacy/RatingCompat;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1648
    :cond_9
    const-string v1, "android.support.v4.media.session.action.SET_PLAYBACK_SPEED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p2, :cond_b

    .line 1650
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    .line 1651
    iget-object p2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p2, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetPlaybackSpeed(F)V

    goto :goto_0

    .line 1654
    :cond_a
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1658
    :catch_0
    const-string p1, "MediaSessionCompat"

    const-string p2, "Could not unparcel the data."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_b
    :goto_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onFastForward()V
    .locals 2

    .line 1530
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1534
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1535
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onFastForward()V

    .line 1536
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 3

    .line 1426
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1430
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1431
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v2, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v2

    .line 1432
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    if-nez v2, :cond_1

    .line 1433
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onPause()V
    .locals 2

    .line 1497
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1501
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1502
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPause()V

    .line 1503
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 1438
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1442
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1443
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlay()V

    .line 1444
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1449
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1453
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1454
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1455
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1456
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1461
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1465
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1466
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1467
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1468
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    .line 1474
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1478
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1479
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1480
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1481
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onPrepare()V
    .locals 2

    .line 1666
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1670
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1671
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepare()V

    .line 1672
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1678
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1682
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1683
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1684
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1685
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1691
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1695
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1696
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1697
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1698
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    .line 1704
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1708
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1709
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1710
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1711
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onRewind()V
    .locals 2

    .line 1541
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1545
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1546
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onRewind()V

    .line 1547
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 2

    .line 1563
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1567
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1568
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSeekTo(J)V

    .line 1569
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onSetPlaybackSpeed(F)V
    .locals 2

    .line 1717
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1721
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1722
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetPlaybackSpeed(F)V

    .line 1723
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 2

    .line 1574
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1578
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1579
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-static {p1}, Landroidx/media3/session/legacy/RatingCompat;->fromRating(Ljava/lang/Object;)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetRating(Landroidx/media3/session/legacy/RatingCompat;)V

    .line 1580
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 2

    .line 1508
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1512
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1513
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSkipToNext()V

    .line 1514
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 2

    .line 1519
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1523
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1524
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSkipToPrevious()V

    .line 1525
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 2

    .line 1486
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1490
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1491
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V

    .line 1492
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1552
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1556
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1557
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onStop()V

    .line 1558
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-void
.end method
