.class public Lcom/streamtv/app/remote/NsdHelper;
.super Ljava/lang/Object;
.source "NsdHelper.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "RadioPlayer TV"

.field private static final SERVICE_TYPE:Ljava/lang/String; = "_radioplayer._tcp."

.field private static final TAG:Ljava/lang/String; = "NsdHelper"


# instance fields
.field private nsdManager:Landroid/net/nsd/NsdManager;

.field private registered:Z

.field private registrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;


# direct methods
.method static bridge synthetic -$$Nest$fputregistered(Lcom/streamtv/app/remote/NsdHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/streamtv/app/remote/NsdHelper;->registered:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/streamtv/app/remote/NsdHelper;->registered:Z

    .line 18
    const-string v0, "servicediscovery"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/nsd/NsdManager;

    iput-object p1, p0, Lcom/streamtv/app/remote/NsdHelper;->nsdManager:Landroid/net/nsd/NsdManager;

    return-void
.end method


# virtual methods
.method public register(I)V
    .locals 3

    .line 22
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 23
    const-string v1, "RadioPlayer TV"

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 24
    const-string v1, "_radioplayer._tcp."

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p1}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 26
    new-instance p1, Lcom/streamtv/app/remote/NsdHelper$1;

    invoke-direct {p1, p0}, Lcom/streamtv/app/remote/NsdHelper$1;-><init>(Lcom/streamtv/app/remote/NsdHelper;)V

    .line 49
    iput-object p1, p0, Lcom/streamtv/app/remote/NsdHelper;->registrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 50
    iget-object v1, p0, Lcom/streamtv/app/remote/NsdHelper;->nsdManager:Landroid/net/nsd/NsdManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p1}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    return-void
.end method

.method public unregister()V
    .locals 3

    .line 55
    iget-boolean v0, p0, Lcom/streamtv/app/remote/NsdHelper;->registered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/streamtv/app/remote/NsdHelper;->registrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    if-nez v0, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/streamtv/app/remote/NsdHelper;->nsdManager:Landroid/net/nsd/NsdManager;

    invoke-virtual {v1, v0}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    const-string v1, "NsdHelper"

    const-string v2, "Error unregistering"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/streamtv/app/remote/NsdHelper;->registered:Z

    :cond_1
    :goto_1
    return-void
.end method
