.class final Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MetadataRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MetadataRetrieverInternal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;
    }
.end annotation


# static fields
.field private static final MESSAGE_CHECK_FOR_FAILURE:I = 0x2

.field private static final MESSAGE_CONTINUE_LOADING:I = 0x3

.field private static final MESSAGE_PREPARE_SOURCE:I = 0x1

.field private static final MESSAGE_RELEASE:I = 0x4

.field private static final SHARED_WORKER_THREAD:Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;


# instance fields
.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private final mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field private final mediaSourceHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final trackGroupsFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Landroidx/media3/exoplayer/source/TrackGroupArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;

    invoke-direct {v0}, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->SHARED_WORKER_THREAD:Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/common/MediaItem;Landroidx/media3/common/util/Clock;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 140
    iput-object p2, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 141
    sget-object p1, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->SHARED_WORKER_THREAD:Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->addWorker()Landroid/os/Looper;

    move-result-object p1

    .line 142
    new-instance p2, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    invoke-direct {p2, p0}, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;-><init>(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)V

    .line 143
    invoke-interface {p3, p1, p2}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 144
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->trackGroupsFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 123
    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)Landroidx/media3/common/util/HandlerWrapper;
    .locals 0

    .line 123
    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceHandler:Landroidx/media3/common/util/HandlerWrapper;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 0

    .line 123
    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->trackGroupsFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p0
.end method

.method static synthetic access$300()Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;
    .locals 1

    .line 123
    sget-object v0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->SHARED_WORKER_THREAD:Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;

    return-object v0
.end method


# virtual methods
.method public retrieveMetadata()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/exoplayer/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 148
    sget-object v0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->SHARED_WORKER_THREAD:Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->startRetrieval(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)V

    .line 149
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->trackGroupsFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public start()V
    .locals 3

    .line 153
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceHandler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-interface {v0, v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method
