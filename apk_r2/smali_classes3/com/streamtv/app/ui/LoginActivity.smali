.class public Lcom/streamtv/app/ui/LoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoginActivity.java"


# static fields
.field private static final VALID_PASS:Ljava/lang/String; = "1276"

.field private static final VALID_USER:Ljava/lang/String; = "Francervino12"


# instance fields
.field private btnLogin:Landroid/widget/Button;

.field private etPassword:Landroid/widget/EditText;

.field private etUsername:Landroid/widget/EditText;

.field private progressBar:Landroid/widget/ProgressBar;

.field private tvError:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private attemptLogin()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/streamtv/app/ui/LoginActivity;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/streamtv/app/ui/LoginActivity;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/streamtv/app/ui/LoginActivity;->tvError:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    const-string v2, "Francervino12"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1276"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/streamtv/app/ui/LoginActivity;->btnLogin:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/streamtv/app/ui/LoginActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    invoke-static {}, Lcom/streamtv/app/App;->getInstance()Lcom/streamtv/app/App;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/streamtv/app/App;->setLoggedIn(Z)V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/streamtv/app/ui/LoginActivity$4;

    invoke-direct {v1, p0}, Lcom/streamtv/app/ui/LoginActivity$4;-><init>(Lcom/streamtv/app/ui/LoginActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 108
    :cond_1
    const-string v0, "Usuario o contrase\u00f1a incorrectos"

    invoke-direct {p0, v0}, Lcom/streamtv/app/ui/LoginActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 93
    :cond_2
    :goto_0
    const-string v0, "Complet\u00e1 usuario y contrase\u00f1a"

    invoke-direct {p0, v0}, Lcom/streamtv/app/ui/LoginActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/streamtv/app/ui/LoginActivity;->tvError:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p0, Lcom/streamtv/app/ui/LoginActivity;->tvError:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method m756lambda$attemptLogin$3$comstreamtvappuiLoginActivity()V
    .locals 2

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/streamtv/app/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lcom/streamtv/app/ui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/streamtv/app/ui/LoginActivity;->finish()V

    return-void
.end method

.method m757lambda$onCreate$0$comstreamtvappuiLoginActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/streamtv/app/ui/LoginActivity;->attemptLogin()V

    const/4 p1, 0x1

    return p1
.end method

.method m758lambda$onCreate$1$comstreamtvappuiLoginActivity(Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/streamtv/app/ui/LoginActivity;->attemptLogin()V

    return-void
.end method

.method m759lambda$onCreate$2$comstreamtvappuiLoginActivity(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 73
    iget-object p1, p0, Lcom/streamtv/app/ui/LoginActivity;->btnLogin:Landroid/widget/Button;

    const p2, 0x3f866666    # 1.05f

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setScaleX(F)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/streamtv/app/ui/LoginActivity;->btnLogin:Landroid/widget/Button;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setScaleX(F)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget p1, Lcom/streamtv/app/R$layout;->activity_login:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/LoginActivity;->setContentView(I)V

    .line 31
    sget p1, Lcom/streamtv/app/R$id;->etUsername:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/streamtv/app/ui/LoginActivity;->etUsername:Landroid/widget/EditText;

    .line 32
    sget p1, Lcom/streamtv/app/R$id;->etPassword:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/streamtv/app/ui/LoginActivity;->etPassword:Landroid/widget/EditText;

    .line 33
    sget p1, Lcom/streamtv/app/R$id;->btnLogin:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/streamtv/app/ui/LoginActivity;->btnLogin:Landroid/widget/Button;

    .line 34
    sget p1, Lcom/streamtv/app/R$id;->tvError:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/LoginActivity;->tvError:Landroid/widget/TextView;

    .line 35
    sget p1, Lcom/streamtv/app/R$id;->progressBar:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/streamtv/app/ui/LoginActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 36
    iget-object p1, p0, Lcom/streamtv/app/ui/LoginActivity;->etPassword:Landroid/widget/EditText;

    new-instance v0, Lcom/streamtv/app/ui/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/LoginActivity$1;-><init>(Lcom/streamtv/app/ui/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 42
    iget-object p1, p0, Lcom/streamtv/app/ui/LoginActivity;->btnLogin:Landroid/widget/Button;

    new-instance v0, Lcom/streamtv/app/ui/LoginActivity$2;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/LoginActivity$2;-><init>(Lcom/streamtv/app/ui/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/streamtv/app/ui/LoginActivity;->btnLogin:Landroid/widget/Button;

    new-instance v0, Lcom/streamtv/app/ui/LoginActivity$3;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/LoginActivity$3;-><init>(Lcom/streamtv/app/ui/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/streamtv/app/ui/LoginActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/streamtv/app/ui/LoginActivity;->btnLogin:Landroid/widget/Button;

    if-ne v0, v1, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/streamtv/app/ui/LoginActivity;->attemptLogin()V

    const/4 p1, 0x1

    return p1

    .line 85
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
