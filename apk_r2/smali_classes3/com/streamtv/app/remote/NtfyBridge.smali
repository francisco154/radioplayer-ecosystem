.class public Lcom/streamtv/app/remote/NtfyBridge;
.super Ljava/lang/Object;
.source "NtfyBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/streamtv/app/remote/NtfyBridge$PairingListener;
    }
.end annotation


# static fields
.field private static final CMD_TOPIC_PREFIX:Ljava/lang/String; = "rptv-cmd-"

.field private static final NTFY_BASE:Ljava/lang/String; = "https://ntfy.sh"

.field private static final STATE_THROTTLE_MS:J = 0x1f4L

.field private static final STATE_TOPIC_PREFIX:Ljava/lang/String; = "rptv-state-"

.field private static final TAG:Ljava/lang/String; = "NtfyBridge"


# instance fields
.field private final context:Landroid/content/Context;

.field private lastStatePublishTime:J

.field private otp:Ljava/lang/String;

.field private pairingListener:Lcom/streamtv/app/remote/NtfyBridge$PairingListener;

.field private final publishExecutor:Ljava/util/concurrent/ExecutorService;

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private subscribeThread:Ljava/lang/Thread;

.field private final subscribed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->subscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->publishExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->lastStatePublishTime:J

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/streamtv/app/remote/NtfyBridge;->context:Landroid/content/Context;

    return-void
.end method

.method private buildStateJson()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/streamtv/app/network/AudioService;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/network/AudioService;

    move-result-object v0

    .line 293
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getCurrentStation()Lcom/streamtv/app/model/Station;

    move-result-object v1

    .line 294
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 295
    const-string v3, "type"

    const-string v4, "state"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v3, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    const-string v5, "station_name"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    const-string v5, "station_genre"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 298
    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getCoverImage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getCoverImage()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    const-string v5, "station_image"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 299
    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getArtist()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getArtist()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v3

    :goto_3
    const-string v5, "station_artist"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    .line 300
    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getFrequency()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getFrequency()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    move-object v4, v3

    :goto_4
    const-string v5, "station_frequency"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    .line 301
    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getLocation()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getLocation()Ljava/lang/String;

    move-result-object v3

    :cond_5
    const-string v4, "station_location"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_7

    .line 302
    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->isSong()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    const-string v3, "demo"

    goto :goto_6

    :cond_7
    :goto_5
    const-string v3, "radio"

    :goto_6
    const-string v4, "station_type"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v3, "is_playing"

    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->isPlaying()Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v1, :cond_8

    .line 304
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/streamtv/app/model/FavoritesManager;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/model/FavoritesManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/streamtv/app/model/FavoritesManager;->isFavorite(Lcom/streamtv/app/model/Station;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    const-string v1, "is_favorite"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 305
    const-string v0, "has_previous"

    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->hasPrevious()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 306
    const-string v0, "has_next"

    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->hasNext()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 307
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v2
.end method

.method private handleIncomingMessage(Ljava/lang/String;)V
    .locals 7

    .line 225
    const-string v0, ""

    const-string v1, "NtfyBridge"

    .line 0
    const-string v2, "Unknown command: "

    .line 225
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 226
    const-string p1, "type"

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    const-string p1, "cmd"

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    const-string v0, "ping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const-string p1, "Ping received from MediaCenter"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p1, p0, Lcom/streamtv/app/remote/NtfyBridge;->pairingListener:Lcom/streamtv/app/remote/NtfyBridge$PairingListener;

    if-eqz p1, :cond_0

    .line 232
    const-string v0, "MediaCenter"

    invoke-interface {p1, v0}, Lcom/streamtv/app/remote/NtfyBridge$PairingListener;->onClientConnected(Ljava/lang/String;)V

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/streamtv/app/remote/NtfyBridge;->publishPaired()V

    .line 235
    invoke-virtual {p0}, Lcom/streamtv/app/remote/NtfyBridge;->publishStateImmediate()V

    return-void

    .line 238
    :cond_1
    const-string v0, "disconnect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    const-string p1, "MediaCenter disconnected"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object p1, p0, Lcom/streamtv/app/remote/NtfyBridge;->pairingListener:Lcom/streamtv/app/remote/NtfyBridge$PairingListener;

    if-eqz p1, :cond_2

    .line 241
    invoke-interface {p1}, Lcom/streamtv/app/remote/NtfyBridge$PairingListener;->onClientDisconnected()V

    :cond_2
    return-void

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/streamtv/app/network/AudioService;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/network/AudioService;

    move-result-object v0

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "play_pause"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "get_state"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_2
    const-string v3, "favorite"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_3
    const-string v3, "pause"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_4
    const-string v3, "stop"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_5
    const-string v3, "play"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_6
    const-string v3, "next"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_7
    const-string v3, "volume_down"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_8
    const-string v3, "previous"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_9
    const-string v3, "volume_up"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_4

    const/4 v3, 0x7

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string v6, "audio"

    packed-switch v3, :pswitch_data_0

    .line 282
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 277
    :pswitch_0
    iget-object p1, p0, Lcom/streamtv/app/remote/NtfyBridge;->context:Landroid/content/Context;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1, v4, v5}, Landroid/media/AudioManager;->adjustVolume(II)V

    goto/16 :goto_3

    .line 274
    :pswitch_1
    iget-object p1, p0, Lcom/streamtv/app/remote/NtfyBridge;->context:Landroid/content/Context;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1, v5, v5}, Landroid/media/AudioManager;->adjustVolume(II)V

    goto :goto_3

    .line 271
    :pswitch_2
    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->stop()V

    goto :goto_3

    .line 267
    :pswitch_3
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getCurrentStation()Lcom/streamtv/app/model/Station;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 268
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/streamtv/app/model/FavoritesManager;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/model/FavoritesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/streamtv/app/model/FavoritesManager;->toggleFavorite(Lcom/streamtv/app/model/Station;)Z

    goto :goto_3

    .line 263
    :pswitch_4
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getPreviousStation()Lcom/streamtv/app/model/Station;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 264
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->isPlayable()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getPlaybackUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/streamtv/app/network/AudioService;->play(Ljava/lang/String;)V

    goto :goto_3

    .line 259
    :pswitch_5
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getNextStation()Lcom/streamtv/app/model/Station;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 260
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->isPlayable()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getPlaybackUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/streamtv/app/network/AudioService;->play(Ljava/lang/String;)V

    goto :goto_3

    .line 255
    :pswitch_6
    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->resume()V

    goto :goto_3

    .line 256
    :cond_5
    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->pause()V

    goto :goto_3

    .line 252
    :pswitch_7
    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->pause()V

    goto :goto_3

    .line 249
    :pswitch_8
    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->resume()V

    goto :goto_3

    .line 282
    :goto_2
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_6
    :goto_3
    :pswitch_9
    invoke-virtual {p0}, Lcom/streamtv/app/remote/NtfyBridge;->publishStateImmediate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error handling message: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7edb0220 -> :sswitch_9
        -0x4bec4509 -> :sswitch_8
        -0x342aa959 -> :sswitch_7
        0x338af3 -> :sswitch_6
        0x348b34 -> :sswitch_5
        0x360802 -> :sswitch_4
        0x65825f6 -> :sswitch_3
        0x3ea1c99c -> :sswitch_2
        0x44595e68 -> :sswitch_1
        0x7298dd2b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic lambda$publishToTopic$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 197
    const-string v0, "NtfyBridge"

    .line 0
    const-string v1, "Published to "

    const-string v2, "Publish failed: HTTP "

    const-string v3, "https://ntfy.sh/"

    .line 197
    :try_start_0
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 198
    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 199
    const-string v4, "Content-Type"

    const-string v5, "application/json; charset=utf-8"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1388

    .line 200
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 201
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v4, 0x1

    .line 202
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 203
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 204
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 205
    const-string v5, "Content-Length"

    array-length v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 207
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 208
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 209
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 210
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_1

    const/16 v5, 0x12c

    if-lt v4, v5, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes)"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 212
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Publish error: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private publishPaired()V
    .locals 4

    const-string v0, "rptv-state-"

    .line 182
    iget-object v1, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    .line 184
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 185
    const-string v2, "type"

    const-string v3, "paired"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v2, "name"

    const-string v3, "RadioPlayer TV"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v2, "version"

    const-string v3, "6.5-Exp"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/streamtv/app/remote/NtfyBridge;->publishToTopic(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error publishing paired: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NtfyBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private publishToTopic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->publishExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/streamtv/app/remote/NtfyBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/streamtv/app/remote/NtfyBridge$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runSubscription()V
    .locals 14

    .line 88
    const-string v0, ""

    const-string v1, "message"

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 89
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/streamtv/app/remote/NtfyBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const-string v5, "NtfyBridge"

    if-eqz v4, :cond_4

    const-wide/16 v6, 0x7530

    const-wide/16 v8, 0x1388

    .line 91
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rptv-cmd-"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    new-instance v10, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://ntfy.sh/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/json"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    .line 93
    const-string v11, "GET"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 94
    const-string v11, "Accept"

    const-string v12, "application/json"

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x3a98

    .line 95
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 96
    invoke-virtual {v10, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v11, 0x1

    .line 97
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 99
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_1

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Subscription failed: HTTP "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    add-int/lit8 v3, v3, 0x1

    int-to-long v10, v3

    mul-long v10, v10, v8

    .line 104
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_1

    .line 109
    :cond_1
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Subscribed to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 113
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/streamtv/app/remote/NtfyBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 114
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v11, :cond_2

    .line 116
    :try_start_3
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v4, "event"

    invoke-virtual {v11, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/streamtv/app/remote/NtfyBridge;->handleIncomingMessage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 121
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parse error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 125
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    :try_start_5
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v4

    const/4 v3, 0x0

    goto :goto_4

    :catchall_0
    move-exception v3

    const/4 v4, 0x0

    goto :goto_3

    :catchall_1
    move-exception v4

    move-object v13, v4

    move v4, v3

    move-object v3, v13

    :goto_3
    :try_start_6
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 128
    throw v3
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v3

    move v13, v4

    move-object v4, v3

    move v3, v13

    goto :goto_4

    :catch_3
    move-exception v4

    .line 133
    :goto_4
    iget-object v10, p0, Lcom/streamtv/app/remote/NtfyBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 134
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Subscription error: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    int-to-long v10, v3

    mul-long v10, v10, v8

    .line 137
    :try_start_7
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 139
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_5

    .line 130
    :catch_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 145
    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->subscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 146
    const-string v0, "Subscription ended"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/streamtv/app/remote/NtfyBridge;->stopSubscription()V

    .line 313
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->publishExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public generateOtp()Ljava/lang/String;
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/streamtv/app/remote/NtfyBridge;->stopSubscription()V

    .line 54
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "%06d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Generated OTP: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NtfyBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/streamtv/app/remote/NtfyBridge;->startSubscription()V

    .line 57
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->pairingListener:Lcom/streamtv/app/remote/NtfyBridge$PairingListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/streamtv/app/remote/NtfyBridge$PairingListener;->onOtpGenerated(Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->context:Landroid/content/Context;

    const-string v1, "streamtv_prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pairing_otp"

    iget-object v2, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    return-object v0
.end method

.method public getOtp()Ljava/lang/String;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->context:Landroid/content/Context;

    const-string v1, "streamtv_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pairing_otp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    return-object v0
.end method

.method public isPaired()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->subscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$startSubscription$0$com-streamtv-app-remote-NtfyBridge()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/streamtv/app/remote/NtfyBridge;->runSubscription()V

    return-void
.end method

.method public publishState()V
    .locals 8

    const-string v0, "rptv-state-"

    .line 160
    iget-object v1, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 162
    iget-wide v3, p0, Lcom/streamtv/app/remote/NtfyBridge;->lastStatePublishTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    return-void

    .line 163
    :cond_1
    iput-wide v1, p0, Lcom/streamtv/app/remote/NtfyBridge;->lastStatePublishTime:J

    .line 165
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/streamtv/app/remote/NtfyBridge;->buildStateJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/streamtv/app/remote/NtfyBridge;->publishToTopic(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error publishing state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NtfyBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public publishStateImmediate()V
    .locals 3

    const-string v0, "rptv-state-"

    .line 172
    iget-object v1, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    .line 173
    iput-wide v1, p0, Lcom/streamtv/app/remote/NtfyBridge;->lastStatePublishTime:J

    .line 175
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/streamtv/app/remote/NtfyBridge;->buildStateJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/streamtv/app/remote/NtfyBridge;->publishToTopic(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error publishing state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NtfyBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPairingListener(Lcom/streamtv/app/remote/NtfyBridge$PairingListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/streamtv/app/remote/NtfyBridge;->pairingListener:Lcom/streamtv/app/remote/NtfyBridge$PairingListener;

    return-void
.end method

.method public startSubscription()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->otp:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->subscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->subscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/streamtv/app/remote/NtfyBridge$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/streamtv/app/remote/NtfyBridge$$ExternalSyntheticLambda1;-><init>(Lcom/streamtv/app/remote/NtfyBridge;)V

    const-string v3, "NtfyBridge-Subscribe"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 82
    iput-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->subscribeThread:Ljava/lang/Thread;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopSubscription()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 151
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->subscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->subscribeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge;->subscribeThread:Ljava/lang/Thread;

    :cond_0
    return-void
.end method
