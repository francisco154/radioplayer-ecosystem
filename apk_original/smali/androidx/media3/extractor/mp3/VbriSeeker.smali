.class final Landroidx/media3/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "VbriSeeker.java"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# static fields
.field private static final TAG:Ljava/lang/String; = "VbriSeeker"


# instance fields
.field private final bitrate:I

.field private final dataEndPosition:J

.field private final durationUs:J

.field private final positions:[J

.field private final timesUs:[J


# direct methods
.method private constructor <init>([J[JJJI)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 120
    iput-object p2, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    .line 121
    iput-wide p3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->durationUs:J

    .line 122
    iput-wide p5, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->dataEndPosition:J

    .line 123
    iput p7, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->bitrate:I

    return-void
.end method

.method public static create(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp3/VbriSeeker;
    .locals 20

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x6

    .line 52
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 53
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 54
    iget v5, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v5, v5

    add-long v5, p2, v5

    int-to-long v7, v4

    add-long/2addr v5, v7

    .line 55
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const/4 v7, 0x0

    if-gtz v4, :cond_0

    return-object v7

    .line 59
    :cond_0
    iget v8, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v9, v4

    .line 60
    iget v4, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v11, v4

    mul-long v9, v9, v11

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    .line 61
    invoke-static {v9, v10, v8}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v14

    .line 63
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 64
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 65
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    const/4 v10, 0x2

    .line 66
    invoke-virtual {v3, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 68
    iget v11, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v11, v11

    add-long v11, p2, v11

    .line 70
    new-array v13, v4, [J

    .line 71
    new-array v7, v4, [J

    const/16 v17, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v4, :cond_5

    int-to-long v2, v10

    mul-long v2, v2, v14

    move-wide/from16 v18, v14

    int-to-long v14, v4

    .line 73
    div-long/2addr v2, v14

    aput-wide v2, v13, v10

    .line 74
    aput-wide v11, v7, v10

    const/4 v2, 0x1

    if-eq v9, v2, :cond_4

    const/4 v2, 0x2

    if-eq v9, v2, :cond_3

    const/4 v3, 0x3

    if-eq v9, v3, :cond_2

    const/4 v3, 0x4

    if-eq v9, v3, :cond_1

    const/4 v3, 0x0

    return-object v3

    :cond_1
    const/4 v3, 0x0

    .line 87
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 84
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v14

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 81
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v14

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 78
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v14

    :goto_1
    int-to-long v14, v14

    int-to-long v2, v8

    mul-long v14, v14, v2

    add-long/2addr v11, v14

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-wide/from16 v14, v18

    goto :goto_0

    :cond_5
    move-wide/from16 v18, v14

    const-wide/16 v2, -0x1

    .line 94
    const-string v4, ", "

    const-string v8, "VbriSeeker"

    cmp-long v9, v0, v2

    if-eqz v9, :cond_6

    cmp-long v2, v0, v5

    if-eqz v2, :cond_6

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VBRI data size mismatch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    cmp-long v0, v5, v11

    if-eqz v0, :cond_7

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VBRI bytes and ToC mismatch (using max): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nSeeking will be inaccurate."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :cond_7
    move-wide/from16 v16, v5

    .line 108
    new-instance v0, Landroidx/media3/extractor/mp3/VbriSeeker;

    move-object/from16 v1, p4

    iget v1, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    move-object v11, v0

    move-object v12, v13

    move-object v13, v7

    move-wide/from16 v14, v18

    move/from16 v18, v1

    invoke-direct/range {v11 .. v18}, Landroidx/media3/extractor/mp3/VbriSeeker;-><init>([J[JJJI)V

    return-object v0
.end method


# virtual methods
.method public getAverageBitrate()I
    .locals 1

    .line 160
    iget v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->bitrate:I

    return v0
.end method

.method public getDataEndPosition()J
    .locals 2

    .line 155
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 150
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 8

    .line 133
    iget-object v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 134
    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    iget-object v3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 135
    iget-wide v3, v2, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    iget-object p1, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    array-length p1, p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance p1, Landroidx/media3/extractor/SeekPoint;

    iget-object p2, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    add-int/2addr v0, v1

    aget-wide v3, p2, v0

    iget-object p2, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    aget-wide v0, p2, v0

    invoke-direct {p1, v3, v4, v0, v1}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 139
    new-instance p2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p2, v2, p1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p2

    .line 136
    :cond_1
    :goto_0
    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 3

    .line 145
    iget-object v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    iget-object v1, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
