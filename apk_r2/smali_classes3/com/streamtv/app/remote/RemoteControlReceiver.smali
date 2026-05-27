.class public Lcom/streamtv/app/remote/RemoteControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteControlReceiver.java"


# static fields
.field public static final ACTION_FAVORITE:Ljava/lang/String; = "com.radioplayer.tv.COMMAND_FAVORITE"

.field public static final ACTION_NEXT:Ljava/lang/String; = "com.radioplayer.tv.COMMAND_NEXT"

.field public static final ACTION_PAUSE:Ljava/lang/String; = "com.radioplayer.tv.COMMAND_PAUSE"

.field public static final ACTION_PLAY:Ljava/lang/String; = "com.radioplayer.tv.COMMAND_PLAY"

.field public static final ACTION_PLAY_PAUSE:Ljava/lang/String; = "com.radioplayer.tv.COMMAND_PLAY_PAUSE"

.field public static final ACTION_PREVIOUS:Ljava/lang/String; = "com.radioplayer.tv.COMMAND_PREVIOUS"

.field public static final ACTION_STOP:Ljava/lang/String; = "com.radioplayer.tv.COMMAND_STOP"

.field public static final ACTION_TV_UPDATE:Ljava/lang/String; = "com.radioplayer.tv.PLAYBACK_UPDATE"

.field public static final ACTION_VOLUME_DOWN:Ljava/lang/String; = "com.radioplayer.tv.COMMAND_VOLUME_DOWN"

.field public static final ACTION_VOLUME_UP:Ljava/lang/String; = "com.radioplayer.tv.COMMAND_VOLUME_UP"

.field private static final TAG:Ljava/lang/String; = "RemoteControlReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private adjustVolume(Landroid/content/Context;Z)V
    .locals 1

    .line 92
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/media/AudioManager;->adjustVolume(II)V

    return-void
.end method

.method public static sendStateBroadcast(Landroid/content/Context;Lcom/streamtv/app/network/AudioService;)V
    .locals 5

    .line 97
    :try_start_0
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getCurrentStation()Lcom/streamtv/app/model/Station;

    move-result-object v0

    .line 98
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.radioplayer.tv.PLAYBACK_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    const-string v2, "station_name"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v2, "station_genre"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/streamtv/app/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v2, "station_image"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/streamtv/app/model/Station;->getCoverImage()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v2, "station_frequency"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/streamtv/app/model/Station;->getFrequency()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v3

    :goto_3
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v2, "station_location"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/streamtv/app/model/Station;->getLocation()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    move-object v4, v3

    :goto_4
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v2, "station_artist"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/streamtv/app/model/Station;->getArtist()Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v2, "is_playing"

    invoke-virtual {p1}, Lcom/streamtv/app/network/AudioService;->isPlaying()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    const-string v2, "is_loading"

    invoke-virtual {p1}, Lcom/streamtv/app/network/AudioService;->isBuffering()Z

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v0, :cond_6

    .line 108
    const-string p1, "is_favorite"

    invoke-static {p0}, Lcom/streamtv/app/model/FavoritesManager;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/model/FavoritesManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/streamtv/app/model/FavoritesManager;->isFavorite(Lcom/streamtv/app/model/Station;)Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    :cond_6
    const-string p1, "com.app.mediacenter"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_7

    const/high16 p1, 0x1000000

    .line 112
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    :cond_7
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 116
    const-string p1, "RemoteControlReceiver"

    const-string v0, "Error sending state broadcast"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received remote command: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteControlReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {p1}, Lcom/streamtv/app/network/AudioService;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/network/AudioService;

    move-result-object v0

    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 38
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "com.radioplayer.tv.COMMAND_FAVORITE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "com.radioplayer.tv.COMMAND_STOP"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "com.radioplayer.tv.COMMAND_PLAY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "com.radioplayer.tv.COMMAND_NEXT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "com.radioplayer.tv.COMMAND_VOLUME_DOWN"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "com.radioplayer.tv.COMMAND_PREVIOUS"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "com.radioplayer.tv.COMMAND_VOLUME_UP"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "com.radioplayer.tv.COMMAND_PLAY_PAUSE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "com.radioplayer.tv.COMMAND_PAUSE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 82
    :pswitch_0
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getCurrentStation()Lcom/streamtv/app/model/Station;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 84
    invoke-static {p1}, Lcom/streamtv/app/model/FavoritesManager;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/model/FavoritesManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/streamtv/app/model/FavoritesManager;->toggleFavorite(Lcom/streamtv/app/model/Station;)Z

    .line 86
    :cond_9
    invoke-static {p1, v0}, Lcom/streamtv/app/remote/RemoteControlReceiver;->sendStateBroadcast(Landroid/content/Context;Lcom/streamtv/app/network/AudioService;)V

    goto :goto_2

    .line 78
    :pswitch_1
    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->stop()V

    .line 79
    invoke-static {p1, v0}, Lcom/streamtv/app/remote/RemoteControlReceiver;->sendStateBroadcast(Landroid/content/Context;Lcom/streamtv/app/network/AudioService;)V

    goto :goto_2

    .line 74
    :pswitch_2
    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->resume()V

    .line 75
    invoke-static {p1, v0}, Lcom/streamtv/app/remote/RemoteControlReceiver;->sendStateBroadcast(Landroid/content/Context;Lcom/streamtv/app/network/AudioService;)V

    goto :goto_2

    .line 67
    :pswitch_3
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getNextStation()Lcom/streamtv/app/model/Station;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 68
    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 69
    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->getPlaybackUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/streamtv/app/network/AudioService;->play(Ljava/lang/String;)V

    .line 71
    :cond_a
    invoke-static {p1, v0}, Lcom/streamtv/app/remote/RemoteControlReceiver;->sendStateBroadcast(Landroid/content/Context;Lcom/streamtv/app/network/AudioService;)V

    goto :goto_2

    .line 63
    :pswitch_4
    invoke-direct {p0, p1, v3}, Lcom/streamtv/app/remote/RemoteControlReceiver;->adjustVolume(Landroid/content/Context;Z)V

    .line 64
    invoke-static {p1, v0}, Lcom/streamtv/app/remote/RemoteControlReceiver;->sendStateBroadcast(Landroid/content/Context;Lcom/streamtv/app/network/AudioService;)V

    goto :goto_2

    .line 56
    :pswitch_5
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getPreviousStation()Lcom/streamtv/app/model/Station;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 57
    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 58
    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->getPlaybackUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/streamtv/app/network/AudioService;->play(Ljava/lang/String;)V

    .line 60
    :cond_b
    invoke-static {p1, v0}, Lcom/streamtv/app/remote/RemoteControlReceiver;->sendStateBroadcast(Landroid/content/Context;Lcom/streamtv/app/network/AudioService;)V

    goto :goto_2

    .line 52
    :pswitch_6
    invoke-direct {p0, p1, v2}, Lcom/streamtv/app/remote/RemoteControlReceiver;->adjustVolume(Landroid/content/Context;Z)V

    .line 53
    invoke-static {p1, v0}, Lcom/streamtv/app/remote/RemoteControlReceiver;->sendStateBroadcast(Landroid/content/Context;Lcom/streamtv/app/network/AudioService;)V

    goto :goto_2

    .line 44
    :pswitch_7
    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 45
    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->pause()V

    goto :goto_1

    .line 47
    :cond_c
    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->resume()V

    .line 49
    :goto_1
    invoke-static {p1, v0}, Lcom/streamtv/app/remote/RemoteControlReceiver;->sendStateBroadcast(Landroid/content/Context;Lcom/streamtv/app/network/AudioService;)V

    goto :goto_2

    .line 40
    :pswitch_8
    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->pause()V

    .line 41
    invoke-static {p1, v0}, Lcom/streamtv/app/remote/RemoteControlReceiver;->sendStateBroadcast(Landroid/content/Context;Lcom/streamtv/app/network/AudioService;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b3b004b -> :sswitch_8
        -0x21fda174 -> :sswitch_7
        -0x1a0dafc1 -> :sswitch_6
        -0xedd6748 -> :sswitch_5
        0x32978946 -> :sswitch_4
        0x77e47934 -> :sswitch_3
        0x77e57975 -> :sswitch_2
        0x77e6f643 -> :sswitch_1
        0x7bb0a75d -> :sswitch_0
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
