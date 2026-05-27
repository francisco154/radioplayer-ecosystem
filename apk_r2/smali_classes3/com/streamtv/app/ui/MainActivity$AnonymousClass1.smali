.class Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/streamtv/app/remote/NtfyBridge$PairingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/streamtv/app/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnonymousClass1"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/streamtv/app/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/streamtv/app/ui/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method m785lambda$onClientConnected$0$comstreamtvappuiMainActivity$1()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgettvConnectionStatus(Lcom/streamtv/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Control remoto: Conectado"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgettvConnectionStatus(Lcom/streamtv/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0xdd3aa2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method m786lambda$onClientDisconnected$1$comstreamtvappuiMainActivity$1()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgettvConnectionStatus(Lcom/streamtv/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Control remoto: Esperando..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgettvConnectionStatus(Lcom/streamtv/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x7f939c01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onClientConnected(Ljava/lang/String;)V
    .locals 1

    .line 273
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/MainActivity;

    new-instance v0, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1$1;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1$1;-><init>(Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;)V

    invoke-virtual {p1, v0}, Lcom/streamtv/app/ui/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClientDisconnected()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;->this$0:Lcom/streamtv/app/ui/MainActivity;

    new-instance v1, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1$2;

    invoke-direct {v1, p0}, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1$2;-><init>(Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;)V

    invoke-virtual {v0, v1}, Lcom/streamtv/app/ui/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOtpGenerated(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
