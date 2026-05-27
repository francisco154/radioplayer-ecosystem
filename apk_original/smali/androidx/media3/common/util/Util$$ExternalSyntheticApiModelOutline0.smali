.class public final synthetic Landroidx/media3/common/util/Util$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m()I
    .locals 1

    .line 0
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic m(Landroid/app/Activity;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioAttributes;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioDeviceInfo;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioManager;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaDataSource;J[BII)I
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Landroid/media/MediaDataSource;->readAt(J[BII)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaRoute2Info;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getSuitabilityStatus()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/RoutingSessionInfo;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPid()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/net/http/NetworkException;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/http/NetworkException;->getErrorCode()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/net/http/UrlResponseInfo;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/http/UrlResponseInfo;->getHttpStatusCode()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/telephony/TelephonyDisplayInfo;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/util/SparseArray;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/util/SparseArray;->contentHashCode()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/view/Display$Mode;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaDataSource;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaDataSource;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/app/ForegroundServiceStartNotAllowedException;
    .locals 0

    .line 0
    check-cast p0, Landroid/app/ForegroundServiceStartNotAllowedException;

    return-object p0
.end method

.method public static synthetic m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;
    .locals 1

    .line 0
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/AudioDeviceCallback;
    .locals 0

    .line 0
    check-cast p0, Landroid/media/AudioDeviceCallback;

    return-object p0
.end method

.method public static synthetic m(I)Landroid/media/AudioFocusRequest$Builder;
    .locals 1

    .line 0
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, p0}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/AudioFocusRequest;
    .locals 0

    .line 0
    check-cast p0, Landroid/media/AudioFocusRequest;

    return-object p0
.end method

.method public static synthetic m(II)Landroid/media/MediaCodec$CryptoInfo$Pattern;
    .locals 1

    .line 0
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;
    .locals 0

    .line 0
    check-cast p0, Landroid/media/MediaRoute2Info;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/MediaRouter2$ControllerCallback;
    .locals 0

    .line 0
    check-cast p0, Landroid/media/MediaRouter2$ControllerCallback;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/MediaRouter2$RouteCallback;
    .locals 0

    .line 0
    check-cast p0, Landroid/media/MediaRouter2$RouteCallback;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/Context;)Landroid/media/MediaRouter2;
    .locals 0

    .line 0
    invoke-static {p0}, Landroid/media/MediaRouter2;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/MediaRouter2;
    .locals 0

    .line 0
    check-cast p0, Landroid/media/MediaRouter2;

    return-object p0
.end method

.method public static synthetic m(Ljava/util/List;Z)Landroid/media/RouteDiscoveryPreference$Builder;
    .locals 1

    .line 0
    new-instance v0, Landroid/media/RouteDiscoveryPreference$Builder;

    invoke-direct {v0, p0, p1}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/media/RouteDiscoveryPreference$Builder;)Landroid/media/RouteDiscoveryPreference;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaRouter2$RoutingController;)Landroid/media/RoutingSessionInfo;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/service/media/MediaBrowserService;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getCurrentBrowserInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .locals 1

    .line 0
    new-instance v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/net/http/UrlResponseInfo;)Landroid/net/http/HeaderBlock;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/http/UrlResponseInfo;->getHeaders()Landroid/net/http/HeaderBlock;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/net/http/HttpEngine;
    .locals 0

    .line 0
    check-cast p0, Landroid/net/http/HttpEngine;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/net/http/NetworkException;
    .locals 0

    .line 0
    check-cast p0, Landroid/net/http/NetworkException;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/http/HttpEngine;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/http/UrlRequest$Callback;)Landroid/net/http/UrlRequest$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/http/HttpEngine;->newUrlRequestBuilder(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/http/UrlRequest$Callback;)Landroid/net/http/UrlRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/http/UrlRequest$Builder;I)Landroid/net/http/UrlRequest$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/http/UrlRequest$Builder;->setPriority(I)Landroid/net/http/UrlRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/http/UrlRequest$Builder;Landroid/net/http/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/http/UrlRequest$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/net/http/UrlRequest$Builder;->setUploadDataProvider(Landroid/net/http/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/http/UrlRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/http/UrlRequest$Builder;Ljava/lang/String;)Landroid/net/http/UrlRequest$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/http/UrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Landroid/net/http/UrlRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/http/UrlRequest$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/UrlRequest$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/net/http/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/UrlRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/http/UrlRequest$Builder;Z)Landroid/net/http/UrlRequest$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/http/UrlRequest$Builder;->setDirectExecutorAllowed(Z)Landroid/net/http/UrlRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/http/UrlRequest$Builder;)Landroid/net/http/UrlRequest;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/http/UrlRequest$Builder;->build()Landroid/net/http/UrlRequest;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/net/http/UrlResponseInfo;
    .locals 0

    .line 0
    check-cast p0, Landroid/net/http/UrlResponseInfo;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/service/media/MediaBrowserService;)Landroid/os/Bundle;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getBrowserRootHints()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Landroid/security/NetworkSecurityPolicy;
    .locals 1

    .line 0
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/view/Display;)Landroid/view/Display$Mode;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/app/ForegroundServiceStartNotAllowedException;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/app/ForegroundServiceStartNotAllowedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/http/UrlResponseInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/http/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaRouter2$RoutingController;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/http/HeaderBlock;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/http/HeaderBlock;->getAsList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/util/Locale$Category;
    .locals 1

    .line 0
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/util/Locale$Category;)Ljava/util/Locale;
    .locals 0

    .line 0
    invoke-static {p0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/net/http/HeaderBlock;)Ljava/util/Map;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/http/HeaderBlock;->getAsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m()V
    .locals 1

    .line 0
    new-instance v0, Landroid/app/NotificationChannel;

    return-void
.end method

.method public static bridge synthetic m(IIIIIII)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Landroid/opengl/GLES30;->glReadPixels(IIIIIII)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/app/NotificationChannel;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/app/Service;ILandroid/app/Notification;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec$CryptoInfo$Pattern;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec$CryptoInfo;Landroid/media/MediaCodec$CryptoInfo$Pattern;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$ControllerCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2;->unregisterControllerCallback(Landroid/media/MediaRouter2$ControllerCallback;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaRouter2;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter2;->registerControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/http/UploadDataSink;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/http/UploadDataSink;->onRewindSucceeded()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/http/UploadDataSink;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/http/UploadDataSink;->onReadSucceeded(Z)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/http/UrlRequest;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/http/UrlRequest;->followRedirect()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/http/UrlRequest;Landroid/net/http/UrlRequest$StatusListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/http/UrlRequest;->getStatus(Landroid/net/http/UrlRequest$StatusListener;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/net/http/UrlRequest;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/http/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/telephony/TelephonyManager;Landroid/telephony/TelephonyCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/AudioManager;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaRouter2$RoutingController;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->wasTransferInitiatedBySelf()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/security/NetworkSecurityPolicy;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    instance-of p0, p0, Landroid/app/ForegroundServiceStartNotAllowedException;

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioManager;I)[Landroid/media/AudioDeviceInfo;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/view/Display$Mode;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setSpatializationBehavior(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/net/http/UrlResponseInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/http/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m$1()V
    .locals 1

    .line 0
    new-instance v0, Landroid/media/RouteDiscoveryPreference$Builder;

    return-void
.end method

.method public static bridge synthetic m$1(Landroid/net/http/UrlRequest;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/http/UrlRequest;->cancel()V

    return-void
.end method

.method public static bridge synthetic m$1(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    instance-of p0, p0, Landroid/net/http/NetworkException;

    return p0
.end method

.method public static bridge synthetic m$2(Landroid/net/http/UrlRequest;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/http/UrlRequest;->start()V

    return-void
.end method
