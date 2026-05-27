.class Landroidx/media3/session/PlayerWrapper$1;
.super Landroidx/media3/session/legacy/VolumeProviderCompat;
.source "PlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/PlayerWrapper;->createVolumeProviderCompat()Landroidx/media3/session/legacy/VolumeProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/PlayerWrapper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$legacyVolumeFlag:I


# direct methods
.method constructor <init>(Landroidx/media3/session/PlayerWrapper;IIILjava/lang/String;Landroid/os/Handler;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1182
    iput-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    iput-object p6, p0, Landroidx/media3/session/PlayerWrapper$1;->val$handler:Landroid/os/Handler;

    iput p7, p0, Landroidx/media3/session/PlayerWrapper$1;->val$legacyVolumeFlag:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/media3/session/legacy/VolumeProviderCompat;-><init>(IIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAdjustVolume$1$androidx-media3-session-PlayerWrapper$1(II)V
    .locals 3

    .line 1205
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    const/16 v1, 0x22

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1206
    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, -0x64

    const/4 v2, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    if-eq p1, v2, :cond_5

    const/16 v0, 0x64

    if-eq p1, v0, :cond_3

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    .line 1246
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onAdjustVolume: Ignoring unknown direction: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VolumeProviderCompat"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1239
    :cond_1
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1240
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->isDeviceMutedWithCommandCheck()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0, p2}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(ZI)V

    goto :goto_0

    .line 1242
    :cond_2
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->isDeviceMutedWithCommandCheck()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(Z)V

    goto :goto_0

    .line 1232
    :cond_3
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1233
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1, v0, p2}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(ZI)V

    goto :goto_0

    .line 1235
    :cond_4
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1, v0}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(Z)V

    goto :goto_0

    .line 1211
    :cond_5
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1212
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1, p2}, Landroidx/media3/session/PlayerWrapper;->increaseDeviceVolume(I)V

    goto :goto_0

    .line 1214
    :cond_6
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->increaseDeviceVolume()V

    goto :goto_0

    .line 1218
    :cond_7
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1219
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1, p2}, Landroidx/media3/session/PlayerWrapper;->decreaseDeviceVolume(I)V

    goto :goto_0

    .line 1221
    :cond_8
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->decreaseDeviceVolume()V

    goto :goto_0

    .line 1225
    :cond_9
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1226
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1, v2, p2}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(ZI)V

    goto :goto_0

    .line 1228
    :cond_a
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1, v2}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(Z)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onSetVolumeTo$0$androidx-media3-session-PlayerWrapper$1(II)V
    .locals 2

    .line 1188
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    const/16 v1, 0x21

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1189
    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1192
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1193
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/PlayerWrapper;->setDeviceVolume(II)V

    goto :goto_0

    .line 1195
    :cond_1
    iget-object p2, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p2, p1}, Landroidx/media3/session/PlayerWrapper;->setDeviceVolume(I)V

    :goto_0
    return-void
.end method

.method public onAdjustVolume(I)V
    .locals 3

    .line 1202
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->val$handler:Landroid/os/Handler;

    iget v1, p0, Landroidx/media3/session/PlayerWrapper$1;->val$legacyVolumeFlag:I

    new-instance v2, Landroidx/media3/session/PlayerWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v1}, Landroidx/media3/session/PlayerWrapper$1$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/PlayerWrapper$1;II)V

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 3

    .line 1185
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->val$handler:Landroid/os/Handler;

    iget v1, p0, Landroidx/media3/session/PlayerWrapper$1;->val$legacyVolumeFlag:I

    new-instance v2, Landroidx/media3/session/PlayerWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Landroidx/media3/session/PlayerWrapper$1$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/PlayerWrapper$1;II)V

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method
