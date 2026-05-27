.class final Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MetadataRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedWorkerThread"
.end annotation


# static fields
.field public static final MAX_PARALLEL_RETRIEVALS:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mediaSourceThread:Landroid/os/HandlerThread;

.field private final pendingRetrievals:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;",
            ">;"
        }
    .end annotation
.end field

.field private referenceCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 259
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->MAX_PARALLEL_RETRIEVALS:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->pendingRetrievals:Ljava/util/Deque;

    return-void
.end method

.method private maybeStartNewRetrieval()V
    .locals 2

    .line 297
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->pendingRetrievals:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 300
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->referenceCount:I

    iget-object v1, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->pendingRetrievals:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 301
    sget-object v1, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->MAX_PARALLEL_RETRIEVALS:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 302
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->pendingRetrievals:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;

    .line 303
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized addWorker()Landroid/os/Looper;
    .locals 3

    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->mediaSourceThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 273
    iget v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->referenceCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 274
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayer:MetadataRetriever"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->mediaSourceThread:Landroid/os/HandlerThread;

    .line 275
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 277
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->referenceCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->referenceCount:I

    .line 278
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->mediaSourceThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized removeWorker()V
    .locals 1

    monitor-enter p0

    .line 287
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->referenceCount:I

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->mediaSourceThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->mediaSourceThread:Landroid/os/HandlerThread;

    goto :goto_0

    .line 291
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->maybeStartNewRetrieval()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized startRetrieval(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)V
    .locals 1

    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->pendingRetrievals:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 283
    invoke-direct {p0}, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->maybeStartNewRetrieval()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
