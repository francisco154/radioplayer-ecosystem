.class public Lcom/streamtv/app/remote/HttpApiServer;
.super Ljava/lang/Object;
.source "HttpApiServer.java"


# static fields
.field private static final PORT:I = 0x2694

.field private static final TAG:Ljava/lang/String; = "HttpApiServer"


# instance fields
.field private final context:Landroid/content/Context;

.field private requestCount:I

.field private volatile running:Z

.field private serverSocket:Ljava/net/ServerSocket;

.field private serverThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/streamtv/app/remote/HttpApiServer;->running:Z

    .line 30
    iput v0, p0, Lcom/streamtv/app/remote/HttpApiServer;->requestCount:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/streamtv/app/remote/HttpApiServer;->context:Landroid/content/Context;

    return-void
.end method

.method private buildStateJson()Ljava/lang/String;
    .locals 6

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/streamtv/app/remote/HttpApiServer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/streamtv/app/network/AudioService;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/network/AudioService;

    move-result-object v0

    .line 176
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getCurrentStation()Lcom/streamtv/app/model/Station;

    move-result-object v1

    .line 177
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 178
    const-string v3, "type"

    const-string v4, "state"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v3, "station_name"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v3, "station_genre"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v3, "station_image"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getCoverImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v3, "station_artist"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getArtist()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v4

    :goto_3
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v3, "station_frequency"

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getFrequency()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object v5, v4

    :goto_4
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v3, "station_location"

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->getLocation()Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v3, "station_type"

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/streamtv/app/model/Station;->isSong()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    const-string v4, "demo"

    goto :goto_6

    :cond_7
    :goto_5
    const-string v4, "radio"

    :goto_6
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v3, "is_playing"

    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->isPlaying()Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 187
    const-string v0, "is_favorite"

    if-eqz v1, :cond_8

    iget-object v3, p0, Lcom/streamtv/app/remote/HttpApiServer;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/streamtv/app/model/FavoritesManager;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/model/FavoritesManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/streamtv/app/model/FavoritesManager;->isFavorite(Lcom/streamtv/app/model/Station;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 188
    const-string v0, "has_previous"

    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->hasPrevious()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 189
    const-string v0, "has_next"

    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->hasNext()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 190
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 191
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 193
    const-string v1, "HttpApiServer"

    const-string v2, "Error building state JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"type\":\"state\",\"error\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIpAddressFromInterfaces()Ljava/lang/String;
    .locals 4

    .line 85
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 86
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 88
    const-string v3, "wlan"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "eth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "rndis"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 90
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    instance-of v3, v2, Ljava/net/Inet6Address;

    if-nez v3, :cond_2

    .line 91
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 98
    :catch_0
    :cond_3
    const-string v0, "0.0.0.0"

    return-object v0
.end method

.method private handleCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 200
    const-string v0, "HttpApiServer"

    .line 0
    const-string v1, "Unknown command: "

    const-string v2, "Executing command: "

    .line 200
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cmd"

    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Lcom/streamtv/app/remote/HttpApiServer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/streamtv/app/network/AudioService;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/network/AudioService;

    move-result-object v2

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "play_pause"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "favorite"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    const-string v3, "pause"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "stop"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_4
    const-string v3, "play"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_5
    const-string v3, "next"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_6
    const-string v3, "volume_down"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_7
    const-string v3, "previous"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_8
    const-string v3, "volume_up"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string v6, "audio"

    packed-switch v3, :pswitch_data_0

    .line 229
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 226
    :pswitch_0
    iget-object p1, p0, Lcom/streamtv/app/remote/HttpApiServer;->context:Landroid/content/Context;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1, v4, v5}, Landroid/media/AudioManager;->adjustVolume(II)V

    goto/16 :goto_3

    .line 223
    :pswitch_1
    iget-object p1, p0, Lcom/streamtv/app/remote/HttpApiServer;->context:Landroid/content/Context;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1, v5, v5}, Landroid/media/AudioManager;->adjustVolume(II)V

    goto :goto_3

    .line 221
    :pswitch_2
    invoke-virtual {v2}, Lcom/streamtv/app/network/AudioService;->stop()V

    goto :goto_3

    .line 218
    :pswitch_3
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getCurrentStation()Lcom/streamtv/app/model/Station;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/streamtv/app/remote/HttpApiServer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/streamtv/app/model/FavoritesManager;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/model/FavoritesManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/streamtv/app/model/FavoritesManager;->toggleFavorite(Lcom/streamtv/app/model/Station;)Z

    goto :goto_3

    .line 214
    :pswitch_4
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getPreviousStation()Lcom/streamtv/app/model/Station;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 215
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getPlaybackUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/streamtv/app/network/AudioService;->play(Ljava/lang/String;)V

    goto :goto_3

    .line 210
    :pswitch_5
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getNextStation()Lcom/streamtv/app/model/Station;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 211
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getPlaybackUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/streamtv/app/network/AudioService;->play(Ljava/lang/String;)V

    goto :goto_3

    .line 207
    :pswitch_6
    invoke-virtual {v2}, Lcom/streamtv/app/network/AudioService;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2}, Lcom/streamtv/app/network/AudioService;->resume()V

    goto :goto_3

    :cond_1
    invoke-virtual {v2}, Lcom/streamtv/app/network/AudioService;->pause()V

    goto :goto_3

    .line 205
    :pswitch_7
    invoke-virtual {v2}, Lcom/streamtv/app/network/AudioService;->pause()V

    goto :goto_3

    .line 204
    :pswitch_8
    invoke-virtual {v2}, Lcom/streamtv/app/network/AudioService;->resume()V

    goto :goto_3

    .line 229
    :goto_2
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/streamtv/app/remote/HttpApiServer;->buildStateJson()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 234
    const-string v1, "Error handling command"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"type\":\"state\",\"error\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7edb0220 -> :sswitch_8
        -0x4bec4509 -> :sswitch_7
        -0x342aa959 -> :sswitch_6
        0x338af3 -> :sswitch_5
        0x348b34 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x65825f6 -> :sswitch_2
        0x3ea1c99c -> :sswitch_1
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
    .end packed-switch
.end method

.method private handleRequest(Ljava/net/Socket;)V
    .locals 13

    .line 103
    const-string v0, "GET"

    const-string v1, " "

    const-string v2, "HttpApiServer"

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 104
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 106
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    const-string v6, "Bad Request"

    const/16 v7, 0x190

    if-eqz v5, :cond_9

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_4

    .line 113
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 114
    array-length v8, v5

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    .line 115
    invoke-direct {p0, v4, v7, v6}, Lcom/streamtv/app/remote/HttpApiServer;->sendHttpError(Ljava/io/OutputStream;ILjava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    return-void

    :cond_1
    const/4 v6, 0x0

    .line 120
    aget-object v7, v5, v6

    const/4 v8, 0x1

    .line 121
    aget-object v5, v5, v8

    const/4 v9, 0x0

    .line 126
    :catch_0
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 127
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "content-length:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v11, :cond_2

    .line 128
    :try_start_2
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 134
    :cond_3
    const-string v10, ""

    if-lez v9, :cond_4

    .line 135
    :try_start_3
    new-array v11, v9, [C

    .line 136
    invoke-virtual {v3, v11, v6, v9}, Ljava/io/BufferedReader;->read([CII)I

    .line 137
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/lang/String;-><init>([C)V

    goto :goto_1

    :cond_4
    move-object v3, v10

    .line 140
    :goto_1
    iget v6, p0, Lcom/streamtv/app/remote/HttpApiServer;->requestCount:I

    add-int/2addr v6, v8

    iput v6, p0, Lcom/streamtv/app/remote/HttpApiServer;->requestCount:I

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Request #"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/streamtv/app/remote/HttpApiServer;->requestCount:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " body="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "/api/state"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 145
    invoke-direct {p0}, Lcom/streamtv/app/remote/HttpApiServer;->buildStateJson()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 146
    :cond_6
    const-string v1, "POST"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "/api/command"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 147
    invoke-direct {p0, v3}, Lcom/streamtv/app/remote/HttpApiServer;->handleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 148
    :cond_7
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "/api/ping"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 149
    const-string v0, "{\"alive\":true,\"app\":\"RadioPlayer TV\",\"version\":\"6.5-Exp\"}"

    .line 156
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP/1.1 200 OK\r\nContent-Type: application/json; charset=utf-8\r\nAccess-Control-Allow-Origin: *\r\nConnection: close\r\nContent-Length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\r\n\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 157
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 158
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    goto :goto_5

    .line 151
    :cond_8
    const-string v0, "Not Found"

    const/16 v1, 0x194

    invoke-direct {p0, v4, v1, v0}, Lcom/streamtv/app/remote/HttpApiServer;->sendHttpError(Ljava/io/OutputStream;ILjava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    return-void

    .line 108
    :cond_9
    :goto_4
    invoke-direct {p0, v4, v7, v6}, Lcom/streamtv/app/remote/HttpApiServer;->sendHttpError(Ljava/io/OutputStream;ILjava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error handling request: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :try_start_4
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_5
    return-void
.end method

.method private sendHttpError(Ljava/io/OutputStream;ILjava/lang/String;)V
    .locals 3

    const-string v0, "HTTP/1.1 "

    const-string v1, "{\"error\":"

    .line 167
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"message\":\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\r\nContent-Type: application/json; charset=utf-8\r\nAccess-Control-Allow-Origin: *\r\nConnection: close\r\nContent-Length: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\r\n\r\n"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 169
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getPort()I
    .locals 1

    const/16 v0, 0x2694

    return v0
.end method

.method public getWifiIpAddress()Ljava/lang/String;
    .locals 7

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/streamtv/app/remote/HttpApiServer;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/streamtv/app/remote/HttpApiServer;->getIpAddressFromInterfaces()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    const-string v1, "%d.%d.%d.%d"

    and-int/lit16 v2, v0, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v2, 0x2

    aput-object v4, v5, v2

    const/4 v2, 0x3

    aput-object v0, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 79
    :catch_0
    invoke-direct {p0}, Lcom/streamtv/app/remote/HttpApiServer;->getIpAddressFromInterfaces()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$start$0$com-streamtv-app-remote-HttpApiServer()V
    .locals 3

    .line 45
    const-string v0, "HttpApiServer"

    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    const/16 v2, 0x2694

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lcom/streamtv/app/remote/HttpApiServer;->serverSocket:Ljava/net/ServerSocket;

    .line 46
    const-string v1, "HTTP API Server started on port 9876"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/streamtv/app/remote/HttpApiServer;->running:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 49
    :try_start_1
    iget-object v1, p0, Lcom/streamtv/app/remote/HttpApiServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    const/16 v2, 0x1388

    .line 50
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 51
    invoke-direct {p0, v1}, Lcom/streamtv/app/remote/HttpApiServer;->handleRequest(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 53
    :try_start_2
    iget-boolean v2, p0, Lcom/streamtv/app/remote/HttpApiServer;->running:Z

    if-eqz v2, :cond_0

    const-string v2, "Error accepting connection"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 57
    iget-boolean v2, p0, Lcom/streamtv/app/remote/HttpApiServer;->running:Z

    if-eqz v2, :cond_1

    const-string v2, "Server error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public start()V
    .locals 3

    .line 41
    iget-boolean v0, p0, Lcom/streamtv/app/remote/HttpApiServer;->running:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/streamtv/app/remote/HttpApiServer;->running:Z

    .line 43
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/streamtv/app/remote/HttpApiServer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/streamtv/app/remote/HttpApiServer$$ExternalSyntheticLambda0;-><init>(Lcom/streamtv/app/remote/HttpApiServer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    iput-object v1, p0, Lcom/streamtv/app/remote/HttpApiServer;->serverThread:Ljava/lang/Thread;

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 62
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/streamtv/app/remote/HttpApiServer;->running:Z

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/streamtv/app/remote/HttpApiServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/streamtv/app/remote/HttpApiServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 70
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/streamtv/app/remote/HttpApiServer;->serverThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void
.end method
