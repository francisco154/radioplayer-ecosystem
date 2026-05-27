.class public final Landroidx/media3/container/ReorderingSeiMessageQueue;
.super Ljava/lang/Object;
.source "ReorderingSeiMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;,
        Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;
    }
.end annotation


# instance fields
.field private lastQueuedMessage:Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

.field private final pendingSeiMessages:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;",
            ">;"
        }
    .end annotation
.end field

.field private reorderingQueueSize:I

.field private final seiConsumer:Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;

.field private final unusedParsableByteArrays:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private final unusedSampleSeiMessages:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->seiConsumer:Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;

    .line 66
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    .line 67
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedSampleSeiMessages:Ljava/util/ArrayDeque;

    .line 68
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    const/4 p1, -0x1

    .line 69
    iput p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    return-void
.end method

.method private copy(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/util/ParsableByteArray;
    .locals 5

    .line 149
    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 152
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 154
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    .line 155
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p1

    .line 156
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 158
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    .line 153
    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private flushQueueDownToSize(I)V
    .locals 6

    .line 176
    :goto_0
    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 177
    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    const/4 v1, 0x0

    .line 178
    :goto_1
    iget-object v2, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 179
    iget-object v2, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->seiConsumer:Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;

    iget-wide v3, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    iget-object v5, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    .line 180
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/util/ParsableByteArray;

    .line 179
    invoke-interface {v2, v3, v4, v5}, Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 181
    iget-object v2, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    iget-object v3, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :cond_0
    iget-object v1, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 184
    iget-object v1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->lastQueuedMessage:Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    if-eqz v1, :cond_1

    iget-wide v1, v1, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    iget-wide v3, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const/4 v1, 0x0

    .line 186
    iput-object v1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->lastQueuedMessage:Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    .line 188
    :cond_1
    iget-object v1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedSampleSeiMessages:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public add(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 4

    .line 119
    iget v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    if-eqz v0, :cond_4

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    .line 121
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget v2, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    .line 122
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    iget-wide v2, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    invoke-direct {p0, p3}, Landroidx/media3/container/ReorderingSeiMessageQueue;->copy(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object p3

    .line 129
    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->lastQueuedMessage:Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    if-eqz v0, :cond_1

    iget-wide v2, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 130
    iget-object p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->lastQueuedMessage:Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    iget-object p1, p1, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedSampleSeiMessages:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    invoke-direct {v0}, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;-><init>()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedSampleSeiMessages:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    .line 135
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->init(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 136
    iget-object p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 137
    iput-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->lastQueuedMessage:Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    .line 138
    iget p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    if-eq p1, v1, :cond_3

    .line 139
    invoke-direct {p0, p1}, Landroidx/media3/container/ReorderingSeiMessageQueue;->flushQueueDownToSize(I)V

    :cond_3
    return-void

    .line 123
    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->seiConsumer:Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 164
    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    return-void
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, v0}, Landroidx/media3/container/ReorderingSeiMessageQueue;->flushQueueDownToSize(I)V

    return-void
.end method

.method public getMaxSize()I
    .locals 1

    .line 101
    iget v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    return v0
.end method

.method public setMaxSize(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 91
    iput p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    .line 92
    invoke-direct {p0, p1}, Landroidx/media3/container/ReorderingSeiMessageQueue;->flushQueueDownToSize(I)V

    return-void
.end method
