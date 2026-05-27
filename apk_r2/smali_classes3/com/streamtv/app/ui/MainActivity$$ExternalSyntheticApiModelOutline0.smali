.class public final synthetic Lcom/streamtv/app/ui/MainActivity$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Lcom/streamtv/app/ui/MainActivity;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Lcom/streamtv/app/ui/SettingsActivity;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/SettingsActivity;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static synthetic m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;
    .locals 1

    .line 0
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/app/NotificationChannel;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/widget/ImageButton;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setDefaultFocusHighlightEnabled(Z)V

    return-void
.end method
