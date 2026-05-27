.class public Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;
.super Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;
.source "MediaStyleNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaStyleNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedMediaCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSession;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;-><init>(Landroidx/media3/session/MediaSession;)V

    return-void
.end method

.method private setBackgroundColor(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 437
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v0

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 441
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/media3/session/R$color;->notification_material_background_media_default_color:I

    .line 442
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 445
    :goto_0
    sget v1, Landroidx/media3/session/R$id;->status_bar_latest_event_content:I

    const-string v2, "setBackgroundColor"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 4

    .line 335
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 336
    invoke-super {p0, p1}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V

    return-void

    .line 340
    :cond_0
    invoke-static {}, Landroidx/media3/session/MediaStyleNotificationHelper$Api24Impl;->createDecoratedMediaCustomViewStyle()Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    move-result-object v0

    .line 341
    iget-object v1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->actionsToShowInCompact:[I

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->actionsToShowInCompact:[I

    invoke-static {v0, v1}, Landroidx/print/PrintHelper$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$DecoratedMediaCustomViewStyle;[I)Landroid/app/Notification$MediaStyle;

    .line 344
    :cond_1
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->remoteDeviceName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 345
    iget-object v1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->remoteDeviceName:Ljava/lang/CharSequence;

    iget v2, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->remoteDeviceIconRes:I

    iget-object v3, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->remoteDeviceIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/session/MediaStyleNotificationHelper$Api34Impl;->setRemotePlaybackInfo(Landroid/app/Notification$MediaStyle;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)Landroid/app/Notification$MediaStyle;

    .line 347
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 349
    :cond_2
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 350
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 351
    iget-object v1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->session:Landroidx/media3/session/MediaSession;

    invoke-virtual {v1}, Landroidx/media3/session/MediaSession;->getToken()Landroidx/media3/session/SessionToken;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/SessionToken;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "androidx.media3.session"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 352
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    :goto_0
    return-void
.end method

.method getBigContentViewLayoutResource(I)I
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 409
    sget p1, Landroidx/media3/session/R$layout;->media3_notification_template_big_media_narrow_custom:I

    goto :goto_0

    .line 410
    :cond_0
    sget p1, Landroidx/media3/session/R$layout;->media3_notification_template_big_media_custom:I

    :goto_0
    return p1
.end method

.method getContentViewLayoutResource()I
    .locals 1

    .line 379
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    sget v0, Landroidx/media3/session/R$layout;->media3_notification_template_media_custom:I

    goto :goto_0

    .line 381
    :cond_0
    invoke-super {p0}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->getContentViewLayoutResource()I

    move-result v0

    :goto_0
    return v0
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 2

    .line 388
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x18

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return-object v1

    .line 393
    :cond_0
    iget-object p1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 394
    iget-object p1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    goto :goto_0

    .line 395
    :cond_1
    iget-object p1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    .line 400
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->generateBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 401
    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 402
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->setBackgroundColor(Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 2

    .line 360
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x18

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return-object v1

    .line 364
    :cond_0
    iget-object p1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 365
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return-object v1

    .line 367
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->generateContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 369
    iget-object p1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 371
    :cond_4
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->setBackgroundColor(Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 2

    .line 417
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x18

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return-object v1

    .line 422
    :cond_0
    iget-object p1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 423
    iget-object p1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    goto :goto_0

    .line 424
    :cond_1
    iget-object p1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    .line 429
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->generateBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 430
    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 431
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->setBackgroundColor(Landroid/widget/RemoteViews;)V

    return-object v0
.end method
