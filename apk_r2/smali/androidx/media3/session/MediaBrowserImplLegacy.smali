.class Landroidx/media3/session/MediaBrowserImplLegacy;
.super Landroidx/media3/session/MediaControllerImplLegacy;
.source "MediaBrowserImplLegacy.java"

# interfaces
.implements Landroidx/media3/session/MediaBrowser$MediaBrowserImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaBrowserImplLegacy$GetLibraryRootCallback;,
        Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;,
        Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MB2ImplLegacy"


# instance fields
.field private final browserCompats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            "Landroidx/media3/session/legacy/MediaBrowserCompat;",
            ">;"
        }
    .end annotation
.end field

.field private commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private final instance:Landroidx/media3/session/MediaBrowser;

.field private final subscribeCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media3/session/MediaBrowser;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;Landroidx/media3/common/util/BitmapLoader;)V
    .locals 0

    .line 68
    invoke-direct/range {p0 .. p6}, Landroidx/media3/session/MediaControllerImplLegacy;-><init>(Landroid/content/Context;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;Landroidx/media3/common/util/BitmapLoader;)V

    .line 55
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->browserCompats:Ljava/util/HashMap;

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->subscribeCallbacks:Ljava/util/HashMap;

    .line 69
    iput-object p2, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->instance:Landroidx/media3/session/MediaBrowser;

    .line 70
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/session/MediaBrowserImplLegacy;)Ljava/util/HashMap;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->browserCompats:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/session/MediaBrowserImplLegacy;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method static synthetic access$202(Landroidx/media3/session/MediaBrowserImplLegacy;Lcom/google/common/collect/ImmutableMap;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    .line 50
    iput-object p1, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableMap;

    return-object p1
.end method

.method static synthetic access$300(Landroidx/media3/session/MediaBrowserImplLegacy;Landroidx/media3/session/legacy/MediaBrowserCompat;)Landroidx/media3/common/MediaItem;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaBrowserImplLegacy;->createRootMediaItem(Landroidx/media3/session/legacy/MediaBrowserCompat;)Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static createOptionsForSubscription(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;
    .locals 1

    if-nez p0, :cond_0

    .line 414
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static createOptionsWithPagingInfo(Landroidx/media3/session/MediaLibraryService$LibraryParams;II)Landroid/os/Bundle;
    .locals 1

    .line 419
    invoke-static {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->createOptionsForSubscription(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;

    move-result-object p0

    .line 420
    const-string v0, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    const-string p1, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private createRootMediaItem(Landroidx/media3/session/legacy/MediaBrowserCompat;)Landroidx/media3/common/MediaItem;
    .locals 3

    .line 431
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaBrowserCompat;->getRoot()Ljava/lang/String;

    move-result-object v0

    .line 432
    new-instance v1, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    const/4 v2, 0x1

    .line 434
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    const/16 v2, 0x14

    .line 435
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setMediaType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 436
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 437
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaBrowserCompat;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/media3/common/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object p1

    .line 438
    invoke-virtual {p1}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object p1

    .line 439
    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    return-object p1
.end method

.method private evictChildrenFromSubscription(Ljava/lang/String;)V
    .locals 2

    .line 237
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->subscribeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 241
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 242
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;

    invoke-static {v1}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->access$000(Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 244
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->access$002(Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;Ljava/util/List;)Ljava/util/List;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getBrowserCompat(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/legacy/MediaBrowserCompat;
    .locals 1

    .line 410
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->browserCompats:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/legacy/MediaBrowserCompat;

    return-object p1
.end method

.method private getChildrenFromSubscription(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->subscribeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 228
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 229
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;

    invoke-virtual {v3, p1, p2}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->canServeGetChildrenRequest(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;

    invoke-static {p1}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->access$000(Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static getExtras(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;
    .locals 0

    if-eqz p0, :cond_0

    .line 426
    iget-object p0, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private isContainedInCommandButtonsForMediaItems(Landroidx/media3/session/SessionCommand;)Z
    .locals 3

    .line 402
    iget v0, p1, Landroidx/media3/session/SessionCommand;->commandCode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 405
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableMap;

    iget-object v2, p1, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/CommandButton;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, v0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroidx/media3/session/legacy/MediaBrowserCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-super {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/SessionCommands;->buildUpon()Landroidx/media3/session/SessionCommands$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/SessionCommands$Builder;->addAllLibraryCommands()Landroidx/media3/session/SessionCommands$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/SessionCommands$Builder;->build()Landroidx/media3/session/SessionCommands;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    invoke-super {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;

    move-result-object v0

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;>;"
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    const v1, 0xc353

    .line 194
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaBrowser;->isSessionCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x4

    .line 195
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroidx/media3/session/legacy/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, -0x64

    .line 199
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 202
    :cond_1
    invoke-static {p4, p2, p3}, Landroidx/media3/session/MediaBrowserImplLegacy;->createOptionsWithPagingInfo(Landroidx/media3/session/MediaLibraryService$LibraryParams;II)Landroid/os/Bundle;

    move-result-object p3

    .line 203
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p4

    .line 206
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaBrowserImplLegacy;->getChildrenFromSubscription(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    .line 208
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaBrowserImplLegacy;->evictChildrenFromSubscription(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 212
    invoke-static {p2}, Landroidx/media3/session/LegacyConversions;->convertBrowserItemListToMediaItemList(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    new-instance p2, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    invoke-direct {p2}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;-><init>()V

    .line 213
    invoke-virtual {p2, p3}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->build()Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object p2

    .line 211
    invoke-static {p1, p2}, Landroidx/media3/session/LibraryResult;->ofItemList(Ljava/util/List;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    .line 210
    invoke-virtual {p4, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_2
    new-instance p2, Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;

    invoke-direct {p2, p0, p4, p1}, Landroidx/media3/session/MediaBrowserImplLegacy$GetChildrenCallback;-><init>(Landroidx/media3/session/MediaBrowserImplLegacy;Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p1, p3, p2}, Landroidx/media3/session/legacy/MediaBrowserCompat;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;)V

    :goto_0
    return-object p4
.end method

.method public getCommandButtonsForMediaItem(Landroidx/media3/common/MediaItem;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object p1, p1, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    .line 105
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v1, 0x0

    .line 106
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 107
    iget-object v2, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/CommandButton;

    if-eqz v2, :cond_0

    .line 108
    iget-object v3, v2, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v3, :cond_0

    .line 109
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method getInstance()Landroidx/media3/session/MediaBrowser;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->instance:Landroidx/media3/session/MediaBrowser;

    return-object v0
.end method

.method bridge synthetic getInstance()Landroidx/media3/session/MediaController;
    .locals 1

    .line 50
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    const v1, 0xc354

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaBrowser;->isSessionCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x4

    .line 253
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 255
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroidx/media3/session/legacy/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, -0x64

    .line 257
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 259
    :cond_1
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 260
    new-instance v2, Landroidx/media3/session/MediaBrowserImplLegacy$1;

    invoke-direct {v2, p0, v1}, Landroidx/media3/session/MediaBrowserImplLegacy$1;-><init>(Landroidx/media3/session/MediaBrowserImplLegacy;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v0, p1, v2}, Landroidx/media3/session/legacy/MediaBrowserCompat;->getItem(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserCompat$ItemCallback;)V

    return-object v1
.end method

.method public getLibraryRoot(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    const v1, 0xc350

    .line 118
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaBrowser;->isSessionCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x4

    .line 119
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 121
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 122
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaBrowserImplLegacy;->getBrowserCompat(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/legacy/MediaBrowserCompat;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    invoke-direct {p0, v1}, Landroidx/media3/session/MediaBrowserImplLegacy;->createRootMediaItem(Landroidx/media3/session/legacy/MediaBrowserCompat;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroidx/media3/session/LibraryResult;->ofItem(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToRootHints(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/MediaBrowser;->getMaxCommandsForMediaItems()I

    move-result v2

    .line 128
    const-string v3, "androidx.media.utils.MediaBrowserCompat.extras.CUSTOM_BROWSER_ACTION_LIMIT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    new-instance v2, Landroidx/media3/session/legacy/MediaBrowserCompat;

    .line 134
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 135
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getConnectedToken()Landroidx/media3/session/SessionToken;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/session/SessionToken;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    new-instance v5, Landroidx/media3/session/MediaBrowserImplLegacy$GetLibraryRootCallback;

    invoke-direct {v5, p0, v0, p1}, Landroidx/media3/session/MediaBrowserImplLegacy$GetLibraryRootCallback;-><init>(Landroidx/media3/session/MediaBrowserImplLegacy;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    invoke-direct {v2, v3, v4, v5, v1}, Landroidx/media3/session/legacy/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    .line 138
    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->browserCompats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaBrowserCompat;->connect()V

    :goto_0
    return-object v0
.end method

.method public getSearchResult(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;>;"
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    const v1, 0xc356

    .line 332
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaBrowser;->isSessionCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x4

    .line 333
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 335
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroidx/media3/session/legacy/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, -0x64

    .line 337
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 340
    :cond_1
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 341
    invoke-static {p4, p2, p3}, Landroidx/media3/session/MediaBrowserImplLegacy;->createOptionsWithPagingInfo(Landroidx/media3/session/MediaLibraryService$LibraryParams;II)Landroid/os/Bundle;

    move-result-object p4

    .line 342
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p4, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 343
    const-string p2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p4, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    new-instance p2, Landroidx/media3/session/MediaBrowserImplLegacy$3;

    invoke-direct {p2, p0, v1}, Landroidx/media3/session/MediaBrowserImplLegacy$3;-><init>(Landroidx/media3/session/MediaBrowserImplLegacy;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v0, p1, p4, p2}, Landroidx/media3/session/legacy/MediaBrowserCompat;->search(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;)V

    return-object v1
.end method

.method public release()V
    .locals 2

    .line 80
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->browserCompats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaBrowserCompat;

    .line 81
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaBrowserCompat;->disconnect()V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->browserCompats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 85
    invoke-super {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->release()V

    return-void
.end method

.method public search(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    const v1, 0xc355

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaBrowser;->isSessionCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x4

    .line 286
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 288
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroidx/media3/session/legacy/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, -0x64

    .line 290
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 294
    :cond_1
    invoke-static {p2}, Landroidx/media3/session/MediaBrowserImplLegacy;->getExtras(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;

    move-result-object p2

    new-instance v1, Landroidx/media3/session/MediaBrowserImplLegacy$2;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaBrowserImplLegacy$2;-><init>(Landroidx/media3/session/MediaBrowserImplLegacy;)V

    .line 292
    invoke-virtual {v0, p1, p2, v1}, Landroidx/media3/session/legacy/MediaBrowserCompat;->search(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;)V

    .line 325
    invoke-static {}, Landroidx/media3/session/LibraryResult;->ofVoid()Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public sendCustomCommand(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/SessionCommand;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroidx/media3/session/legacy/MediaBrowserCompat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->instance:Landroidx/media3/session/MediaBrowser;

    .line 369
    invoke-virtual {v1, p1}, Landroidx/media3/session/MediaBrowser;->isSessionCommandAvailable(Landroidx/media3/session/SessionCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaBrowserImplLegacy;->isContainedInCommandButtonsForMediaItems(Landroidx/media3/session/SessionCommand;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 372
    iget-object p1, p1, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    new-instance v2, Landroidx/media3/session/MediaBrowserImplLegacy$4;

    invoke-direct {v2, p0, v1}, Landroidx/media3/session/MediaBrowserImplLegacy$4;-><init>(Landroidx/media3/session/MediaBrowserImplLegacy;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v0, p1, p2, v2}, Landroidx/media3/session/legacy/MediaBrowserCompat;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;)V

    return-object v1

    .line 393
    :cond_1
    new-instance p1, Landroidx/media3/session/SessionResult;

    const/4 p2, -0x4

    invoke-direct {p1, p2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    const v1, 0xc351

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaBrowser;->isSessionCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x4

    .line 148
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroidx/media3/session/legacy/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, -0x64

    .line 152
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 154
    :cond_1
    invoke-static {p2}, Landroidx/media3/session/MediaBrowserImplLegacy;->createOptionsForSubscription(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;

    move-result-object p2

    .line 155
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 156
    new-instance v2, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;

    invoke-direct {v2, p0, p1, p2, v1}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;-><init>(Landroidx/media3/session/MediaBrowserImplLegacy;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 157
    iget-object v3, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->subscribeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    iget-object v4, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->subscribeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v0, p1, p2, v2}, Landroidx/media3/session/legacy/MediaBrowserCompat;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;)V

    return-object v1
.end method

.method public unsubscribe(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    const v1, 0xc352

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaBrowser;->isSessionCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x4

    .line 170
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 172
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroidx/media3/session/legacy/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, -0x64

    .line 174
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 178
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplLegacy;->subscribeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    const/4 p1, -0x3

    .line 180
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x0

    .line 182
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 183
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v0, p1, v3}, Landroidx/media3/session/legacy/MediaBrowserCompat;->unsubscribe(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_3
    invoke-static {}, Landroidx/media3/session/LibraryResult;->ofVoid()Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
