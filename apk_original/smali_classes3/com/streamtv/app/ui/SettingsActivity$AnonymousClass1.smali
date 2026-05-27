.class Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/streamtv/app/remote/NtfyBridge$PairingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/streamtv/app/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnonymousClass1"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/streamtv/app/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/streamtv/app/ui/SettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method m804xc2893ba2(Ljava/lang/String;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/SettingsActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/SettingsActivity;->-$$Nest$fgettvPairingStatus(Lcom/streamtv/app/ui/SettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Conectado: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/SettingsActivity;

    invoke-static {p1}, Lcom/streamtv/app/ui/SettingsActivity;->-$$Nest$fgettvPairingStatus(Lcom/streamtv/app/ui/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, -0xdd3aa2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method m805x19ed0de1()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/SettingsActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/SettingsActivity;->-$$Nest$fgettvPairingStatus(Lcom/streamtv/app/ui/SettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Desconectado"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/SettingsActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/SettingsActivity;->-$$Nest$fgettvPairingStatus(Lcom/streamtv/app/ui/SettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x9495

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method m806lambda$onOtpGenerated$0$comstreamtvappuiSettingsActivity$1(Ljava/lang/String;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/SettingsActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/SettingsActivity;->-$$Nest$fgettvOtpCode(Lcom/streamtv/app/ui/SettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/SettingsActivity;

    invoke-virtual {v1, p1}, Lcom/streamtv/app/ui/SettingsActivity;->formatOtp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/SettingsActivity;

    invoke-static {p1}, Lcom/streamtv/app/ui/SettingsActivity;->-$$Nest$fgetotpContainer(Lcom/streamtv/app/ui/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onClientConnected(Ljava/lang/String;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/SettingsActivity;

    new-instance v1, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1$2;

    invoke-direct {v1, p0, p1}, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1$2;-><init>(Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/streamtv/app/ui/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClientDisconnected()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/SettingsActivity;

    new-instance v1, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1$3;

    invoke-direct {v1, p0}, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1$3;-><init>(Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;)V

    invoke-virtual {v0, v1}, Lcom/streamtv/app/ui/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOtpGenerated(Ljava/lang/String;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/SettingsActivity;

    new-instance v1, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1$1;

    invoke-direct {v1, p0, p1}, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1$1;-><init>(Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/streamtv/app/ui/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
