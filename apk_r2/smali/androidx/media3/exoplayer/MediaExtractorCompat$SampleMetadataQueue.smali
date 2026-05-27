.class final Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;
.super Ljava/lang/Object;
.source "MediaExtractorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MediaExtractorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleMetadataQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;
    }
.end annotation


# instance fields
.field private final sampleMetadataPool:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleMetadataQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->sampleMetadataPool:Ljava/util/ArrayDeque;

    .line 1139
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->sampleMetadataQueue:Ljava/util/ArrayDeque;

    return-void
.end method

.method private obtainSampleMetadata(JII)Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;
    .locals 1

    .line 1190
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->sampleMetadataPool:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    new-instance v0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;-><init>(JII)V

    goto :goto_0

    .line 1192
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->sampleMetadataPool:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;

    .line 1193
    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;->set(JII)V

    return-object v0
.end method


# virtual methods
.method public addLast(JII)V
    .locals 0

    .line 1151
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->obtainSampleMetadata(JII)Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;

    move-result-object p1

    .line 1152
    iget-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->sampleMetadataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 3

    .line 1177
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->sampleMetadataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;

    .line 1178
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->sampleMetadataPool:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 1180
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->sampleMetadataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1185
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->sampleMetadataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public peekFirst()Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;
    .locals 1

    .line 1172
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->sampleMetadataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;

    return-object v0
.end method

.method public removeFirst()Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;
    .locals 2

    .line 1160
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->sampleMetadataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;

    .line 1161
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->sampleMetadataPool:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-object v0
.end method
