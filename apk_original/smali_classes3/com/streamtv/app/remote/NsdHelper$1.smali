.class Lcom/streamtv/app/remote/NsdHelper$1;
.super Ljava/lang/Object;
.source "NsdHelper.java"

# interfaces
.implements Landroid/net/nsd/NsdManager$RegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/remote/NsdHelper;->register(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/streamtv/app/remote/NsdHelper;


# direct methods
.method constructor <init>(Lcom/streamtv/app/remote/NsdHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/streamtv/app/remote/NsdHelper$1;->this$0:Lcom/streamtv/app/remote/NsdHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 1

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Registration failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NsdHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service registered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NsdHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p1, p0, Lcom/streamtv/app/remote/NsdHelper$1;->this$0:Lcom/streamtv/app/remote/NsdHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/streamtv/app/remote/NsdHelper;->-$$Nest$fputregistered(Lcom/streamtv/app/remote/NsdHelper;Z)V

    return-void
.end method

.method public onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 1

    .line 40
    const-string p1, "NsdHelper"

    const-string v0, "Service unregistered"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object p1, p0, Lcom/streamtv/app/remote/NsdHelper$1;->this$0:Lcom/streamtv/app/remote/NsdHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/streamtv/app/remote/NsdHelper;->-$$Nest$fputregistered(Lcom/streamtv/app/remote/NsdHelper;Z)V

    return-void
.end method

.method public onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 1

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unregistration failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NsdHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
