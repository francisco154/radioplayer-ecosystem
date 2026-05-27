.class public Lcom/streamtv/app/App;
.super Landroid/app/Application;
.source "App.java"


# static fields
.field private static final JSON_URL:Ljava/lang/String; = "https://demotester-v2.vercel.app/api/export/categories.json"

.field private static final KEY_LOGGED_IN:Ljava/lang/String; = "logged_in"

.field private static final PREFS_NAME:Ljava/lang/String; = "streamtv_prefs"

.field private static instance:Lcom/streamtv/app/App;


# instance fields
.field private ntfyBridge:Lcom/streamtv/app/remote/NtfyBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/streamtv/app/App;
    .locals 1

    .line 29
    sget-object v0, Lcom/streamtv/app/App;->instance:Lcom/streamtv/app/App;

    return-object v0
.end method

.method public static getJsonUrl()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "https://demotester-v2.vercel.app/api/export/categories.json"

    return-object v0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 15
    const-string v0, "RadioPlayer TV"

    return-object v0
.end method

.method public getNtfyBridge()Lcom/streamtv/app/remote/NtfyBridge;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/streamtv/app/App;->ntfyBridge:Lcom/streamtv/app/remote/NtfyBridge;

    return-object v0
.end method

.method public isLoggedIn()Z
    .locals 3

    .line 41
    const-string v0, "streamtv_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/streamtv/app/App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "logged_in"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 3

    .line 20
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 21
    sput-object p0, Lcom/streamtv/app/App;->instance:Lcom/streamtv/app/App;

    .line 22
    new-instance v0, Lcom/streamtv/app/remote/NtfyBridge;

    invoke-direct {v0, p0}, Lcom/streamtv/app/remote/NtfyBridge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/streamtv/app/App;->ntfyBridge:Lcom/streamtv/app/remote/NtfyBridge;

    .line 23
    const-string v0, "streamtv_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/streamtv/app/App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pairing_otp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/streamtv/app/App;->ntfyBridge:Lcom/streamtv/app/remote/NtfyBridge;

    invoke-virtual {v0}, Lcom/streamtv/app/remote/NtfyBridge;->startSubscription()V

    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 51
    iget-object v0, p0, Lcom/streamtv/app/App;->ntfyBridge:Lcom/streamtv/app/remote/NtfyBridge;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/streamtv/app/remote/NtfyBridge;->destroy()V

    :cond_0
    return-void
.end method

.method public setLoggedIn(Z)V
    .locals 2

    .line 45
    const-string v0, "streamtv_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/streamtv/app/App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "logged_in"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
