.class public Lcom/streamtv/app/network/AudioService;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/streamtv/app/network/AudioService$PlayerStateListener;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "streamtv_playback"

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static instance:Lcom/streamtv/app/network/AudioService;


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private context:Landroid/content/Context;

.field private currentUrl:Ljava/lang/String;

.field private mediaSession:Landroidx/media3/session/MediaSession;

.field private player:Landroidx/media3/exoplayer/ExoPlayer;

.field private stateListener:Lcom/streamtv/app/network/AudioService$PlayerStateListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetstateListener(Lcom/streamtv/app/network/AudioService;)Lcom/streamtv/app/network/AudioService$PlayerStateListener;
    .locals 0

    iget-object p0, p0, Lcom/streamtv/app/network/AudioService;->stateListener:Lcom/streamtv/app/network/AudioService$PlayerStateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyStateChange(Lcom/streamtv/app/network/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/streamtv/app/network/AudioService;->notifyStateChange()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/streamtv/app/network/AudioService;->context:Landroid/content/Context;

    .line 48
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/streamtv/app/network/AudioService;->audioManager:Landroid/media/AudioManager;

    .line 49
    invoke-direct {p0}, Lcom/streamtv/app/network/AudioService;->createNotificationChannel()V

    return-void
.end method

.method private createNotificationChannel()V
    .locals 3

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 54
    const-string v0, "RadioPlayer TV Playback"

    const/4 v1, 0x2

    const-string v2, "streamtv_playback"

    invoke-static {v2, v0, v1}, Lcom/streamtv/app/ui/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 55
    const-string v1, "Radio streaming playback"

    invoke-static {v0, v1}, Lcom/streamtv/app/ui/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/streamtv/app/network/AudioService;->context:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-static {v1, v2}, Lcom/streamtv/app/ui/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 58
    invoke-static {v1, v0}, Lcom/streamtv/app/ui/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/streamtv/app/network/AudioService;
    .locals 2

    const-class v0, Lcom/streamtv/app/network/AudioService;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/streamtv/app/network/AudioService;->instance:Lcom/streamtv/app/network/AudioService;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/streamtv/app/network/AudioService;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/streamtv/app/network/AudioService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/streamtv/app/network/AudioService;->instance:Lcom/streamtv/app/network/AudioService;

    .line 43
    :cond_0
    sget-object p0, Lcom/streamtv/app/network/AudioService;->instance:Lcom/streamtv/app/network/AudioService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private notifyStateChange()V
    .locals 2

    .line 200
    invoke-static {}, Lcom/streamtv/app/App;->getInstance()Lcom/streamtv/app/App;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Lcom/streamtv/app/App;->getNtfyBridge()Lcom/streamtv/app/remote/NtfyBridge;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v0}, Lcom/streamtv/app/App;->getNtfyBridge()Lcom/streamtv/app/remote/NtfyBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/streamtv/app/remote/NtfyBridge;->publishState()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasPlayer()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuffering()Z
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 5

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "play() called with URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->stop()V

    .line 67
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->mediaSession:Landroidx/media3/session/MediaSession;

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->release()V

    .line 73
    :cond_1
    iput-object p1, p0, Lcom/streamtv/app/network/AudioService;->currentUrl:Ljava/lang/String;

    .line 75
    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    const-string v1, "RadioPlayerTV/6.5 (Android)"

    .line 76
    invoke-virtual {v0, v1}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/16 v1, 0x3a98

    .line 77
    invoke-virtual {v0, v1}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v1}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 81
    new-instance v2, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iget-object v3, p0, Lcom/streamtv/app/network/AudioService;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object v0

    .line 84
    new-instance v2, Landroidx/media3/common/AudioAttributes$Builder;

    invoke-direct {v2}, Landroidx/media3/common/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x2

    .line 85
    invoke-virtual {v2, v3}, Landroidx/media3/common/AudioAttributes$Builder;->setContentType(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setUsage(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Landroidx/media3/common/AudioAttributes$Builder;->build()Landroidx/media3/common/AudioAttributes;

    move-result-object v2

    .line 89
    new-instance v3, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    iget-object v4, p0, Lcom/streamtv/app/network/AudioService;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v2, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setHandleAudioBecomingNoisy(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 95
    new-instance v0, Landroidx/media3/session/MediaSession$Builder;

    iget-object v2, p0, Lcom/streamtv/app/network/AudioService;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-direct {v0, v2, v3}, Landroidx/media3/session/MediaSession$Builder;-><init>(Landroid/content/Context;Landroidx/media3/common/Player;)V

    invoke-virtual {v0}, Landroidx/media3/session/MediaSession$Builder;->build()Landroidx/media3/session/MediaSession;

    move-result-object v0

    iput-object v0, p0, Lcom/streamtv/app/network/AudioService;->mediaSession:Landroidx/media3/session/MediaSession;

    .line 97
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    new-instance v2, Lcom/streamtv/app/network/AudioService$1;

    invoke-direct {v2, p0}, Lcom/streamtv/app/network/AudioService$1;-><init>(Lcom/streamtv/app/network/AudioService;)V

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 134
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 135
    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    new-instance v0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 137
    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaItem$Builder;->setLiveConfiguration(Landroidx/media3/common/MediaItem$LiveConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 142
    iget-object p1, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    .line 143
    iget-object p1, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->play()V

    :cond_0
    return-void
.end method

.method public setStateListener(Lcom/streamtv/app/network/AudioService$PlayerStateListener;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/streamtv/app/network/AudioService;->stateListener:Lcom/streamtv/app/network/AudioService$PlayerStateListener;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->stop()V

    .line 161
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    .line 162
    iput-object v1, p0, Lcom/streamtv/app/network/AudioService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->mediaSession:Landroidx/media3/session/MediaSession;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->release()V

    .line 166
    iput-object v1, p0, Lcom/streamtv/app/network/AudioService;->mediaSession:Landroidx/media3/session/MediaSession;

    .line 168
    :cond_1
    iput-object v1, p0, Lcom/streamtv/app/network/AudioService;->currentUrl:Ljava/lang/String;

    return-void
.end method

.method public volumeDown()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->audioManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->adjustVolume(II)V

    return-void
.end method

.method public volumeUp()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/streamtv/app/network/AudioService;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioManager;->adjustVolume(II)V

    return-void
.end method
