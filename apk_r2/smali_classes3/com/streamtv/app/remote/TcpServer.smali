.class public Lcom/streamtv/app/remote/TcpServer;
.super Ljava/lang/Object;
.source "TcpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/streamtv/app/remote/TcpServer$ConnectionListener;
    }
.end annotation


# static fields
.field private static final CLIENT_TIMEOUT_MS:I = 0x0

.field private static final PORT:I = 0x2694

.field private static final TAG:Ljava/lang/String; = "TcpServer"


# instance fields
.field private volatile clientSocket:Ljava/net/Socket;

.field private volatile clientWriter:Ljava/io/Writer;

.field private connectionListener:Lcom/streamtv/app/remote/TcpServer$ConnectionListener;

.field private final context:Landroid/content/Context;

.field private volatile running:Z

.field private serverSocket:Ljava/net/ServerSocket;

.field private serverThread:Ljava/lang/Thread;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/streamtv/app/remote/TcpServer;->running:Z

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/streamtv/app/remote/TcpServer;->writeLock:Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/streamtv/app/remote/TcpServer;->context:Landroid/content/Context;

    return-void
.end method

.method private closeClient()V
    .locals 1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/streamtv/app/remote/TcpServer;->clientWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/streamtv/app/remote/TcpServer;->clientWriter:Ljava/io/Writer;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/streamtv/app/remote/TcpServer;->clientWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    :catch_1
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/streamtv/app/remote/TcpServer;->clientSocket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/streamtv/app/remote/TcpServer;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/streamtv/app/remote/TcpServer;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/streamtv/app/remote/TcpServer;->clientWriter:Ljava/io/Writer;

    .line 179
    iput-object v0, p0, Lcom/streamtv/app/remote/TcpServer;->clientSocket:Ljava/net/Socket;

    return-void
.end method

.method private handleCommand(Ljava/lang/String;)V
    .locals 6

    .line 244
    const-string v0, "TcpServer"

    .line 0
    const-string v1, "Unknown command: "

    .line 244
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cmd"

    const-string v3, ""

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 245
    iget-object v2, p0, Lcom/streamtv/app/remote/TcpServer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/streamtv/app/network/AudioService;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/network/AudioService;

    move-result-object v2

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const v5, 0xffff

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 318
    :sswitch_0
    const-string v3, "play_pause"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x2

    goto/16 :goto_0

    .line 311
    :sswitch_1
    const-string v3, "get_state"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    .line 304
    :sswitch_2
    const-string v3, "favorite"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    .line 297
    :sswitch_3
    const-string v3, "pause"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 290
    :sswitch_4
    const-string v3, "stop"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    .line 283
    :sswitch_5
    const-string v3, "play"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 276
    :sswitch_6
    const-string v3, "ping"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v5, 0x9

    goto :goto_0

    .line 269
    :sswitch_7
    const-string v3, "next"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    .line 262
    :sswitch_8
    const-string v3, "volume_down"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    .line 255
    :sswitch_9
    const-string v3, "previous"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    .line 248
    :sswitch_a
    const-string v3, "volume_up"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v5, 0x7

    .line 328
    :cond_0
    :goto_0
    const-string v3, "audio"

    packed-switch v5, :pswitch_data_0

    .line 380
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 374
    :pswitch_0
    const-string p1, "pong"

    invoke-direct {p0, p1}, Lcom/streamtv/app/remote/TcpServer;->sendResponse(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/streamtv/app/remote/TcpServer;->sendState()V

    return-void

    .line 371
    :pswitch_1
    iget-object p1, p0, Lcom/streamtv/app/remote/TcpServer;->context:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v4}, Landroid/media/AudioManager;->adjustVolume(II)V

    goto/16 :goto_2

    .line 368
    :pswitch_2
    iget-object p1, p0, Lcom/streamtv/app/remote/TcpServer;->context:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1, v4, v4}, Landroid/media/AudioManager;->adjustVolume(II)V

    goto :goto_2

    .line 365
    :pswitch_3
    invoke-virtual {v2}, Lcom/streamtv/app/network/AudioService;->stop()V

    goto :goto_2

    .line 358
    :pswitch_4
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getCurrentStation()Lcom/streamtv/app/model/Station;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 360
    iget-object v1, p0, Lcom/streamtv/app/remote/TcpServer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/streamtv/app/model/FavoritesManager;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/model/FavoritesManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/streamtv/app/model/FavoritesManager;->toggleFavorite(Lcom/streamtv/app/model/Station;)Z

    goto :goto_2

    .line 351
    :pswitch_5
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getPreviousStation()Lcom/streamtv/app/model/Station;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 352
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getPlaybackUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/streamtv/app/network/AudioService;->play(Ljava/lang/String;)V

    goto :goto_2

    .line 344
    :pswitch_6
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getNextStation()Lcom/streamtv/app/model/Station;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 345
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getPlaybackUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/streamtv/app/network/AudioService;->play(Ljava/lang/String;)V

    goto :goto_2

    .line 336
    :pswitch_7
    invoke-virtual {v2}, Lcom/streamtv/app/network/AudioService;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    .line 337
    invoke-virtual {v2}, Lcom/streamtv/app/network/AudioService;->resume()V

    goto :goto_2

    .line 340
    :cond_1
    invoke-virtual {v2}, Lcom/streamtv/app/network/AudioService;->pause()V

    goto :goto_2

    .line 333
    :pswitch_8
    invoke-virtual {v2}, Lcom/streamtv/app/network/AudioService;->pause()V

    goto :goto_2

    .line 330
    :pswitch_9
    invoke-virtual {v2}, Lcom/streamtv/app/network/AudioService;->resume()V

    goto :goto_2

    .line 380
    :goto_1
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_2
    :goto_2
    :pswitch_a
    invoke-virtual {p0}, Lcom/streamtv/app/remote/TcpServer;->sendState()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error handling command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7edb0220 -> :sswitch_a
        -0x4bec4509 -> :sswitch_9
        -0x342aa959 -> :sswitch_8
        0x338af3 -> :sswitch_7
        0x348172 -> :sswitch_6
        0x348b34 -> :sswitch_5
        0x360802 -> :sswitch_4
        0x65825f6 -> :sswitch_3
        0x3ea1c99c -> :sswitch_2
        0x44595e68 -> :sswitch_1
        0x7298dd2b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method private sendResponse(Ljava/lang/String;)V
    .locals 5

    const-string v0, "Error sending response: "

    .line 224
    iget-object v1, p0, Lcom/streamtv/app/remote/TcpServer;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/streamtv/app/remote/TcpServer;->clientWriter:Ljava/io/Writer;

    if-nez v2, :cond_0

    .line 227
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 230
    :cond_0
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 231
    const-string v4, "type"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 233
    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    :try_start_2
    const-string v2, "TcpServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public getPort()I
    .locals 1

    const/16 v0, 0x2694

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/streamtv/app/remote/TcpServer;->clientSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method m755lambda$start$0$comstreamtvappremoteTcpServer()V
    .locals 6

    .line 74
    const-string v0, "TcpServer"

    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    const/16 v2, 0x2694

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lcom/streamtv/app/remote/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 75
    const-string v1, "TCP Server started on port 9876"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/streamtv/app/remote/TcpServer;->running:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_7

    .line 79
    :try_start_1
    iget-object v1, p0, Lcom/streamtv/app/remote/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 80
    invoke-direct {p0}, Lcom/streamtv/app/remote/TcpServer;->closeClient()V

    .line 81
    iput-object v1, p0, Lcom/streamtv/app/remote/TcpServer;->clientSocket:Ljava/net/Socket;

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v2, 0x1

    .line 83
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 84
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 85
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iput-object v2, p0, Lcom/streamtv/app/remote/TcpServer;->clientWriter:Ljava/io/Writer;

    .line 86
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 87
    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v4, p0, Lcom/streamtv/app/remote/TcpServer;->connectionListener:Lcom/streamtv/app/remote/TcpServer$ConnectionListener;

    if-eqz v4, :cond_1

    .line 91
    invoke-interface {v4, v3}, Lcom/streamtv/app/remote/TcpServer$ConnectionListener;->onClientConnected(Ljava/lang/String;)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/streamtv/app/remote/TcpServer;->sendState()V

    .line 95
    :goto_1
    iget-boolean v3, p0, Lcom/streamtv/app/remote/TcpServer;->running:Z

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    goto :goto_2

    .line 100
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    .line 106
    :try_start_3
    const-string v1, "Client disconnected (end of stream)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 109
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0, v3}, Lcom/streamtv/app/remote/TcpServer;->handleCommand(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :catch_0
    const-string v3, "Read timeout (normal for idle connection)"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/streamtv/app/remote/TcpServer;->closeClient()V

    .line 113
    iget-object v1, p0, Lcom/streamtv/app/remote/TcpServer;->connectionListener:Lcom/streamtv/app/remote/TcpServer$ConnectionListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 115
    :try_start_4
    invoke-direct {p0}, Lcom/streamtv/app/remote/TcpServer;->closeClient()V

    .line 116
    iget-object v2, p0, Lcom/streamtv/app/remote/TcpServer;->connectionListener:Lcom/streamtv/app/remote/TcpServer$ConnectionListener;

    if-eqz v2, :cond_5

    .line 118
    invoke-interface {v2}, Lcom/streamtv/app/remote/TcpServer$ConnectionListener;->onClientDisconnected()V

    .line 120
    :cond_5
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    .line 123
    :try_start_5
    iget-boolean v2, p0, Lcom/streamtv/app/remote/TcpServer;->running:Z

    if-eqz v2, :cond_6

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_6
    invoke-direct {p0}, Lcom/streamtv/app/remote/TcpServer;->closeClient()V

    .line 127
    iget-object v1, p0, Lcom/streamtv/app/remote/TcpServer;->connectionListener:Lcom/streamtv/app/remote/TcpServer$ConnectionListener;

    :goto_3
    if-eqz v1, :cond_0

    .line 132
    invoke-interface {v1}, Lcom/streamtv/app/remote/TcpServer$ConnectionListener;->onClientDisconnected()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    .line 136
    iget-boolean v2, p0, Lcom/streamtv/app/remote/TcpServer;->running:Z

    if-eqz v2, :cond_7

    .line 137
    const-string v2, "Server error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    return-void
.end method

.method public sendState()V
    .locals 8

    const-string v0, "Error sending state: "

    .line 188
    iget-object v1, p0, Lcom/streamtv/app/remote/TcpServer;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/streamtv/app/remote/TcpServer;->clientWriter:Ljava/io/Writer;

    if-nez v2, :cond_0

    .line 191
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 194
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/streamtv/app/remote/TcpServer;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/streamtv/app/network/AudioService;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/network/AudioService;

    move-result-object v3

    .line 195
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getCurrentStation()Lcom/streamtv/app/model/Station;

    move-result-object v4

    .line 196
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 197
    const-string v6, "type"

    const-string v7, "state"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v6, "station_name"

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    const-string v7, ""

    :goto_0
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v6, "station_genre"

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/streamtv/app/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    const-string v7, ""

    :goto_1
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v6, "station_image"

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/streamtv/app/model/Station;->getCoverImage()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    const-string v7, ""

    :goto_2
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v6, "station_artist"

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/streamtv/app/model/Station;->getArtist()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    const-string v7, ""

    :goto_3
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v6, "station_frequency"

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/streamtv/app/model/Station;->getFrequency()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_5
    const-string v7, ""

    :goto_4
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v6, "station_location"

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/streamtv/app/model/Station;->getLocation()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_6
    const-string v7, ""

    :goto_5
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v6, "station_type"

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/streamtv/app/model/Station;->isSong()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_6

    :cond_7
    const-string v7, "demo"

    goto :goto_7

    :cond_8
    :goto_6
    const-string v7, "radio"

    :goto_7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string v6, "is_playing"

    invoke-virtual {v3}, Lcom/streamtv/app/network/AudioService;->isPlaying()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 206
    const-string v6, "is_favorite"

    if-eqz v4, :cond_9

    iget-object v7, p0, Lcom/streamtv/app/remote/TcpServer;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/streamtv/app/model/FavoritesManager;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/model/FavoritesManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/streamtv/app/model/FavoritesManager;->isFavorite(Lcom/streamtv/app/model/Station;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 207
    const-string v6, "has_previous"

    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->hasPrevious()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 208
    const-string v6, "has_next"

    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->hasNext()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 209
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 210
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Sent state: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_a

    .line 213
    invoke-virtual {v4}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_a
    const-string v4, "none"

    :goto_9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v4, " playing="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v3}, Lcom/streamtv/app/network/AudioService;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 216
    const-string v3, "TcpServer"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    :catch_0
    move-exception v2

    .line 218
    :try_start_2
    const-string v3, "TcpServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_a
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setConnectionListener(Lcom/streamtv/app/remote/TcpServer$ConnectionListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/streamtv/app/remote/TcpServer;->connectionListener:Lcom/streamtv/app/remote/TcpServer$ConnectionListener;

    return-void
.end method

.method public start()V
    .locals 3

    .line 54
    iget-boolean v0, p0, Lcom/streamtv/app/remote/TcpServer;->running:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/streamtv/app/remote/TcpServer;->running:Z

    .line 58
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/streamtv/app/remote/TcpServer$1;

    invoke-direct {v2, p0}, Lcom/streamtv/app/remote/TcpServer$1;-><init>(Lcom/streamtv/app/remote/TcpServer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    iput-object v1, p0, Lcom/streamtv/app/remote/TcpServer;->serverThread:Ljava/lang/Thread;

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 66
    iget-object v0, p0, Lcom/streamtv/app/remote/TcpServer;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/streamtv/app/remote/TcpServer;->running:Z

    .line 144
    invoke-direct {p0}, Lcom/streamtv/app/remote/TcpServer;->closeClient()V

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/streamtv/app/remote/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/streamtv/app/remote/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 152
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/streamtv/app/remote/TcpServer;->serverThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void
.end method
