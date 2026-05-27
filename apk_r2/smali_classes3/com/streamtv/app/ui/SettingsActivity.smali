.class public Lcom/streamtv/app/ui/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;
    }
.end annotation


# static fields
.field private static final KEY_AUTO_PLAY:Ljava/lang/String; = "auto_play"

.field private static final KEY_THEME:Ljava/lang/String; = "theme"

.field private static final PREFS_NAME:Ljava/lang/String; = "streamtv_settings"


# instance fields
.field private btnGenerateOtp:Landroid/widget/Button;

.field private ntfyBridge:Lcom/streamtv/app/remote/NtfyBridge;

.field private otpContainer:Landroid/widget/LinearLayout;

.field private tvOtpCode:Landroid/widget/TextView;

.field private tvPairingStatus:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetotpContainer(Lcom/streamtv/app/ui/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/streamtv/app/ui/SettingsActivity;->otpContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvOtpCode(Lcom/streamtv/app/ui/SettingsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/streamtv/app/ui/SettingsActivity;->tvOtpCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvPairingStatus(Lcom/streamtv/app/ui/SettingsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/streamtv/app/ui/SettingsActivity;->tvPairingStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static lambda$setupCircularButton$5(Landroid/view/View;Z)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const v1, 0x3f933333    # 1.15f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 236
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x3f333333    # 0.7f

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private setupCircularButton(Landroid/widget/ImageButton;)V
    .locals 1

    const/4 v0, 0x0

    .line 208
    invoke-static {p1, v0}, Lcom/streamtv/app/ui/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/ImageButton;Z)V

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 211
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setTranslationZ(F)V

    .line 212
    new-instance v0, Lcom/streamtv/app/ui/SettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/SettingsActivity$6;-><init>(Lcom/streamtv/app/ui/SettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setClipToOutline(Z)V

    .line 225
    new-instance v0, Lcom/streamtv/app/ui/SettingsActivity$7;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/SettingsActivity$7;-><init>(Lcom/streamtv/app/ui/SettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x3f333333    # 0.7f

    .line 231
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public formatOtp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method m799lambda$onCreate$0$comstreamtvappuiSettingsActivity(Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/streamtv/app/ui/SettingsActivity;->finish()V

    return-void
.end method

.method m800lambda$onCreate$1$comstreamtvappuiSettingsActivity(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 107
    sget p1, Lcom/streamtv/app/R$id;->rbBlue:I

    if-ne p2, p1, :cond_0

    .line 108
    const-string p1, "blue"

    goto :goto_0

    .line 110
    :cond_0
    sget p1, Lcom/streamtv/app/R$id;->rbPurple:I

    if-ne p2, p1, :cond_1

    const-string p1, "purple"

    goto :goto_0

    :cond_1
    const-string p1, "dark"

    .line 112
    :goto_0
    const-string p2, "streamtv_settings"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/streamtv/app/ui/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "theme"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method m801lambda$onCreate$2$comstreamtvappuiSettingsActivity(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 117
    const-string p1, "streamtv_settings"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/streamtv/app/ui/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "auto_play"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method m802lambda$onCreate$3$comstreamtvappuiSettingsActivity(Landroid/view/View;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->ntfyBridge:Lcom/streamtv/app/remote/NtfyBridge;

    invoke-virtual {p1}, Lcom/streamtv/app/remote/NtfyBridge;->getOtp()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->ntfyBridge:Lcom/streamtv/app/remote/NtfyBridge;

    invoke-virtual {p1}, Lcom/streamtv/app/remote/NtfyBridge;->generateOtp()Ljava/lang/String;

    move-result-object p1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/streamtv/app/ui/SettingsActivity;->tvOtpCode:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/SettingsActivity;->formatOtp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->otpContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->tvPairingStatus:Landroid/widget/TextView;

    const-string v0, "Esperando conexi\u00f3n..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->tvPairingStatus:Landroid/widget/TextView;

    .line 131
    sget v0, Lcom/streamtv/app/R$color;->tab_inactive:I

    invoke-static {p0, v0}, Lcom/streamtv/app/ui/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/streamtv/app/ui/SettingsActivity;I)I

    move-result v0

    .line 132
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method m803lambda$onCreate$4$comstreamtvappuiSettingsActivity(Landroid/view/View;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->tvOtpCode:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/streamtv/app/ui/SettingsActivity;->ntfyBridge:Lcom/streamtv/app/remote/NtfyBridge;

    invoke-virtual {v0}, Lcom/streamtv/app/remote/NtfyBridge;->generateOtp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/streamtv/app/ui/SettingsActivity;->formatOtp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->tvPairingStatus:Landroid/widget/TextView;

    const-string v0, "C\u00f3digo actualizado - Esperando conexi\u00f3n..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->tvPairingStatus:Landroid/widget/TextView;

    .line 141
    sget v0, Lcom/streamtv/app/R$color;->accent_blue:I

    invoke-static {p0, v0}, Lcom/streamtv/app/ui/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/streamtv/app/ui/SettingsActivity;I)I

    move-result v0

    .line 142
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "RadioPlayer TV v"

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget p1, Lcom/streamtv/app/R$layout;->activity_settings:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/SettingsActivity;->setContentView(I)V

    .line 36
    invoke-static {}, Lcom/streamtv/app/App;->getInstance()Lcom/streamtv/app/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/streamtv/app/App;->getNtfyBridge()Lcom/streamtv/app/remote/NtfyBridge;

    move-result-object p1

    iput-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->ntfyBridge:Lcom/streamtv/app/remote/NtfyBridge;

    .line 37
    sget p1, Lcom/streamtv/app/R$id;->btnBack:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 38
    invoke-direct {p0, p1}, Lcom/streamtv/app/ui/SettingsActivity;->setupCircularButton(Landroid/widget/ImageButton;)V

    .line 39
    new-instance v1, Lcom/streamtv/app/ui/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/streamtv/app/ui/SettingsActivity$1;-><init>(Lcom/streamtv/app/ui/SettingsActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget p1, Lcom/streamtv/app/R$id;->otpContainer:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->otpContainer:Landroid/widget/LinearLayout;

    .line 46
    sget p1, Lcom/streamtv/app/R$id;->tvOtpCode:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->tvOtpCode:Landroid/widget/TextView;

    .line 47
    sget p1, Lcom/streamtv/app/R$id;->tvPairingStatus:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->tvPairingStatus:Landroid/widget/TextView;

    .line 48
    sget p1, Lcom/streamtv/app/R$id;->btnGenerateOtp:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->btnGenerateOtp:Landroid/widget/Button;

    .line 49
    sget p1, Lcom/streamtv/app/R$id;->btnShowOtp:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 50
    sget v1, Lcom/streamtv/app/R$id;->rgTheme:I

    invoke-virtual {p0, v1}, Lcom/streamtv/app/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 51
    const-string v2, "streamtv_settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/streamtv/app/ui/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "theme"

    const-string v6, "dark"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    sget v5, Lcom/streamtv/app/R$id;->rbDark:I

    invoke-virtual {p0, v5}, Lcom/streamtv/app/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 53
    sget v6, Lcom/streamtv/app/R$id;->rbBlue:I

    invoke-virtual {p0, v6}, Lcom/streamtv/app/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 54
    sget v7, Lcom/streamtv/app/R$id;->rbPurple:I

    invoke-virtual {p0, v7}, Lcom/streamtv/app/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    .line 55
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 56
    const-string v8, "purple"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    .line 57
    invoke-virtual {v7, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 58
    :cond_0
    const-string v7, "blue"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 63
    :goto_0
    new-instance v4, Lcom/streamtv/app/ui/SettingsActivity$2;

    invoke-direct {v4, p0}, Lcom/streamtv/app/ui/SettingsActivity$2;-><init>(Lcom/streamtv/app/ui/SettingsActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 69
    sget v1, Lcom/streamtv/app/R$id;->switchAutoPlay:I

    invoke-virtual {p0, v1}, Lcom/streamtv/app/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 70
    invoke-virtual {p0, v2, v3}, Lcom/streamtv/app/ui/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "auto_play"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 71
    new-instance v2, Lcom/streamtv/app/ui/SettingsActivity$3;

    invoke-direct {v2, p0}, Lcom/streamtv/app/ui/SettingsActivity$3;-><init>(Lcom/streamtv/app/ui/SettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    new-instance v1, Lcom/streamtv/app/ui/SettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/streamtv/app/ui/SettingsActivity$4;-><init>(Lcom/streamtv/app/ui/SettingsActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->btnGenerateOtp:Landroid/widget/Button;

    new-instance v1, Lcom/streamtv/app/ui/SettingsActivity$5;

    invoke-direct {v1, p0}, Lcom/streamtv/app/ui/SettingsActivity$5;-><init>(Lcom/streamtv/app/ui/SettingsActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->otpContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity;->ntfyBridge:Lcom/streamtv/app/remote/NtfyBridge;

    new-instance v1, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;

    invoke-direct {v1, p0}, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;-><init>(Lcom/streamtv/app/ui/SettingsActivity;)V

    invoke-virtual {p1, v1}, Lcom/streamtv/app/remote/NtfyBridge;->setPairingListener(Lcom/streamtv/app/remote/NtfyBridge$PairingListener;)V

    .line 91
    sget p1, Lcom/streamtv/app/R$id;->tvVersion:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 93
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/streamtv/app/ui/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/streamtv/app/ui/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 95
    :catch_0
    const-string v0, "RadioPlayer TV"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 241
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
