.class public final Landroidx/media3/session/MediaBrowser$Builder;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private applicationLooper:Landroid/os/Looper;

.field private bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

.field private connectionHints:Landroid/os/Bundle;

.field private final context:Landroid/content/Context;

.field private listener:Landroidx/media3/session/MediaBrowser$Listener;

.field private maxCommandsForMediaItems:I

.field private final token:Landroidx/media3/session/SessionToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/SessionToken;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/media3/session/MediaBrowser$Builder;->context:Landroid/content/Context;

    .line 77
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/SessionToken;

    iput-object p1, p0, Landroidx/media3/session/MediaBrowser$Builder;->token:Landroidx/media3/session/SessionToken;

    .line 78
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/media3/session/MediaBrowser$Builder;->connectionHints:Landroid/os/Bundle;

    .line 79
    new-instance p1, Landroidx/media3/session/MediaBrowser$Builder$1;

    invoke-direct {p1, p0}, Landroidx/media3/session/MediaBrowser$Builder$1;-><init>(Landroidx/media3/session/MediaBrowser$Builder;)V

    iput-object p1, p0, Landroidx/media3/session/MediaBrowser$Builder;->listener:Landroidx/media3/session/MediaBrowser$Listener;

    .line 80
    invoke-static {}, Landroidx/media3/common/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaBrowser$Builder;->applicationLooper:Landroid/os/Looper;

    return-void
.end method

.method static synthetic lambda$buildAsync$0(Landroidx/media3/session/MediaControllerHolder;Landroidx/media3/session/MediaBrowser;)V
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerHolder;->setController(Landroidx/media3/session/MediaController;)V

    return-void
.end method


# virtual methods
.method public buildAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/MediaBrowser;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v9, Landroidx/media3/session/MediaControllerHolder;

    iget-object v0, p0, Landroidx/media3/session/MediaBrowser$Builder;->applicationLooper:Landroid/os/Looper;

    invoke-direct {v9, v0}, Landroidx/media3/session/MediaControllerHolder;-><init>(Landroid/os/Looper;)V

    .line 187
    iget-object v0, p0, Landroidx/media3/session/MediaBrowser$Builder;->token:Landroidx/media3/session/SessionToken;

    invoke-virtual {v0}, Landroidx/media3/session/SessionToken;->isLegacySession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaBrowser$Builder;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Landroidx/media3/session/CacheBitmapLoader;

    new-instance v1, Landroidx/media3/datasource/DataSourceBitmapLoader;

    iget-object v2, p0, Landroidx/media3/session/MediaBrowser$Builder;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroidx/media3/session/CacheBitmapLoader;-><init>(Landroidx/media3/common/util/BitmapLoader;)V

    iput-object v0, p0, Landroidx/media3/session/MediaBrowser$Builder;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    .line 190
    :cond_0
    new-instance v10, Landroidx/media3/session/MediaBrowser;

    iget-object v1, p0, Landroidx/media3/session/MediaBrowser$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/session/MediaBrowser$Builder;->token:Landroidx/media3/session/SessionToken;

    iget-object v3, p0, Landroidx/media3/session/MediaBrowser$Builder;->connectionHints:Landroid/os/Bundle;

    iget-object v4, p0, Landroidx/media3/session/MediaBrowser$Builder;->listener:Landroidx/media3/session/MediaBrowser$Listener;

    iget-object v5, p0, Landroidx/media3/session/MediaBrowser$Builder;->applicationLooper:Landroid/os/Looper;

    iget-object v7, p0, Landroidx/media3/session/MediaBrowser$Builder;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    iget v8, p0, Landroidx/media3/session/MediaBrowser$Builder;->maxCommandsForMediaItems:I

    move-object v0, v10

    move-object v6, v9

    invoke-direct/range {v0 .. v8}, Landroidx/media3/session/MediaBrowser;-><init>(Landroid/content/Context;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroidx/media3/session/MediaBrowser$Listener;Landroid/os/Looper;Landroidx/media3/session/MediaController$ConnectionCallback;Landroidx/media3/common/util/BitmapLoader;I)V

    .line 200
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/session/MediaBrowser$Builder;->applicationLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroidx/media3/session/MediaBrowser$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, v9, v10}, Landroidx/media3/session/MediaBrowser$Builder$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaControllerHolder;Landroidx/media3/session/MediaBrowser;)V

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-object v9
.end method

.method public setApplicationLooper(Landroid/os/Looper;)Landroidx/media3/session/MediaBrowser$Builder;
    .locals 0

    .line 124
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    iput-object p1, p0, Landroidx/media3/session/MediaBrowser$Builder;->applicationLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public setBitmapLoader(Landroidx/media3/common/util/BitmapLoader;)Landroidx/media3/session/MediaBrowser$Builder;
    .locals 0

    .line 139
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/util/BitmapLoader;

    iput-object p1, p0, Landroidx/media3/session/MediaBrowser$Builder;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    return-object p0
.end method

.method public setConnectionHints(Landroid/os/Bundle;)Landroidx/media3/session/MediaBrowser$Builder;
    .locals 1

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/MediaBrowser$Builder;->connectionHints:Landroid/os/Bundle;

    return-object p0
.end method

.method public setListener(Landroidx/media3/session/MediaBrowser$Listener;)Landroidx/media3/session/MediaBrowser$Builder;
    .locals 0

    .line 109
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/MediaBrowser$Listener;

    iput-object p1, p0, Landroidx/media3/session/MediaBrowser$Builder;->listener:Landroidx/media3/session/MediaBrowser$Listener;

    return-object p0
.end method

.method public setMaxCommandsForMediaItems(I)Landroidx/media3/session/MediaBrowser$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 155
    iput p1, p0, Landroidx/media3/session/MediaBrowser$Builder;->maxCommandsForMediaItems:I

    return-object p0
.end method
