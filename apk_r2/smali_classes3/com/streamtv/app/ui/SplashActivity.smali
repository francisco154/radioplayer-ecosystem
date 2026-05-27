.class public Lcom/streamtv/app/ui/SplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method m807lambda$onCreate$0$comstreamtvappuiSplashActivity()V
    .locals 2

    .line 28
    invoke-static {}, Lcom/streamtv/app/App;->getInstance()Lcom/streamtv/app/App;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/streamtv/app/App;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/streamtv/app/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/streamtv/app/ui/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    :goto_0
    invoke-virtual {p0, v0}, Lcom/streamtv/app/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 35
    invoke-virtual {p0}, Lcom/streamtv/app/ui/SplashActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 15
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget p1, Lcom/streamtv/app/R$layout;->activity_splash:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/SplashActivity;->setContentView(I)V

    .line 17
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/streamtv/app/ui/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/SplashActivity$1;-><init>(Lcom/streamtv/app/ui/SplashActivity;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
