.class public final Landroidx/media3/extractor/Ac4Util;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/Ac4Util$Ac4Presentation;,
        Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field public static final AC40_SYNCWORD:I = 0xac40

.field public static final AC41_SYNCWORD:I = 0xac41

.field private static final CHANNEL_COUNT_2:I = 0x2

.field private static final CHANNEL_MODE_22_2:I = 0xf

.field private static final CHANNEL_MODE_3_0:I = 0x2

.field private static final CHANNEL_MODE_5_0:I = 0x3

.field private static final CHANNEL_MODE_5_1:I = 0x4

.field private static final CHANNEL_MODE_7_0_322:I = 0x9

.field private static final CHANNEL_MODE_7_0_34:I = 0x5

.field private static final CHANNEL_MODE_7_0_4:I = 0xb

.field private static final CHANNEL_MODE_7_0_52:I = 0x7

.field private static final CHANNEL_MODE_7_1_322:I = 0xa

.field private static final CHANNEL_MODE_7_1_34:I = 0x6

.field private static final CHANNEL_MODE_7_1_4:I = 0xc

.field private static final CHANNEL_MODE_7_1_52:I = 0x8

.field private static final CHANNEL_MODE_9_0_4:I = 0xd

.field private static final CHANNEL_MODE_9_1_4:I = 0xe

.field private static final CHANNEL_MODE_MONO:I = 0x0

.field private static final CHANNEL_MODE_STEREO:I = 0x1

.field private static final CHANNEL_MODE_UNKNOWN:I = -0x1

.field public static final HEADER_SIZE_FOR_PARSER:I = 0x10

.field public static final MAX_RATE_BYTES_PER_SECOND:I = 0x52080

.field private static final SAMPLE_COUNT:[I

.field public static final SAMPLE_HEADER_SIZE:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    .line 141
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    return-void

    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 2

    const/4 v0, 0x7

    .line 736
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 737
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, -0x54

    .line 738
    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, 0x40

    .line 739
    aput-byte v1, p1, v0

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 740
    aput-byte v1, p1, v0

    const/4 v0, 0x3

    .line 741
    aput-byte v1, p1, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 742
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x5

    .line 743
    aput-byte v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    .line 744
    aput-byte p0, p1, v0

    return-void
.end method

.method private static getAdjustedChannelCount(IZI)I
    .locals 2

    .line 572
    invoke-static {p0}, Landroidx/media3/extractor/Ac4Util;->getChannelCountFromChannelMode(I)I

    move-result v0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe

    if-ne p0, v1, :cond_4

    :cond_0
    if-nez p1, :cond_1

    add-int/lit8 v0, v0, -0x2

    :cond_1
    if-eqz p2, :cond_3

    const/4 p0, 0x1

    if-eq p2, p0, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x4

    :cond_4
    :goto_0
    return v0
.end method

.method private static getChannelCountFromChannelMode(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x18

    return p0

    :pswitch_1
    const/16 p0, 0xe

    return p0

    :pswitch_2
    const/16 p0, 0xd

    return p0

    :pswitch_3
    const/16 p0, 0xc

    return p0

    :pswitch_4
    const/16 p0, 0xb

    return p0

    :pswitch_5
    const/16 p0, 0x8

    return p0

    :pswitch_6
    const/4 p0, 0x7

    return p0

    :pswitch_7
    const/4 p0, 0x6

    return p0

    :pswitch_8
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_a
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAc4AnnexEFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 175
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    move-object/from16 v1, p0

    .line 176
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 178
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    const/4 v2, 0x3

    .line 179
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2a

    const/4 v5, 0x7

    .line 185
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 186
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0xbb80

    goto :goto_0

    :cond_0
    const v7, 0xac44

    :goto_0
    const/4 v8, 0x4

    .line 187
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v9, 0x9

    .line 188
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    const/16 v10, 0x10

    if-le v6, v4, :cond_2

    if-eqz v3, :cond_1

    .line 195
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 196
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 197
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x80

    .line 198
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid AC-4 DSI version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_1
    if-ne v3, v4, :cond_4

    .line 204
    invoke-static {v0}, Landroidx/media3/extractor/Ac4Util;->skipDsiBitrate(Landroidx/media3/common/util/ParsableBitArray;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 207
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    goto :goto_2

    .line 205
    :cond_3
    const-string v0, "Invalid AC-4 DSI bitrate."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 210
    :cond_4
    :goto_2
    new-instance v6, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;

    const/4 v11, 0x0

    invoke-direct {v6, v11}, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;-><init>(Landroidx/media3/extractor/Ac4Util$1;)V

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v9, :cond_26

    const/4 v13, 0x5

    const/16 v14, 0x8

    const/4 v15, 0x2

    if-nez v3, :cond_5

    .line 220
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v9

    .line 221
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v16

    .line 222
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v17

    move/from16 v11, v16

    move/from16 v14, v17

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_5

    .line 224
    :cond_5
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 225
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/16 v8, 0xff

    if-ne v5, v8, :cond_6

    .line 227
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    add-int/2addr v5, v8

    :cond_6
    if-le v11, v15, :cond_7

    mul-int/lit8 v5, v5, 0x8

    .line 230
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x7

    const/4 v8, 0x4

    goto :goto_3

    .line 234
    :cond_7
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v8

    sub-int v8, v1, v8

    div-int/2addr v8, v14

    .line 237
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_8

    const/4 v10, 0x1

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    :goto_4
    move v14, v11

    move v11, v9

    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_9

    if-nez v10, :cond_9

    const/4 v4, 0x6

    if-ne v11, v4, :cond_9

    const/4 v2, 0x1

    goto/16 :goto_f

    .line 245
    :cond_9
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iput v4, v6, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    .line 247
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 248
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 251
    :cond_a
    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    if-eq v14, v4, :cond_b

    if-ne v14, v15, :cond_c

    .line 253
    :cond_b
    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 255
    :cond_c
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v2, 0xa

    .line 256
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    if-ne v3, v4, :cond_14

    if-lez v14, :cond_d

    .line 260
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, v6, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    .line 263
    :cond_d
    iget-boolean v2, v6, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    if-eqz v2, :cond_11

    if-eq v14, v4, :cond_e

    if-ne v14, v15, :cond_10

    .line 265
    :cond_e
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-ltz v2, :cond_f

    const/16 v4, 0xf

    if-gt v2, v4, :cond_f

    .line 267
    iput v2, v6, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    :cond_f
    const/16 v4, 0xb

    if-lt v2, v4, :cond_10

    const/16 v4, 0xe

    if-gt v2, v4, :cond_10

    .line 272
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, v6, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    .line 274
    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iput v2, v6, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    :cond_10
    const/16 v2, 0x18

    .line 278
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_11
    const/4 v2, 0x1

    if-eq v14, v2, :cond_12

    if-ne v14, v15, :cond_14

    .line 282
    :cond_12
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 283
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 284
    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 287
    :cond_13
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 290
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    const/16 v2, 0x8

    .line 291
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v4, :cond_14

    .line 293
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v13, v13, 0x1

    const/16 v2, 0x8

    goto :goto_6

    :cond_14
    if-nez v9, :cond_1c

    if-eqz v10, :cond_15

    goto/16 :goto_d

    .line 307
    :cond_15
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    if-eqz v11, :cond_1a

    const/4 v2, 0x1

    if-eq v11, v2, :cond_1a

    if-eq v11, v15, :cond_1a

    const/4 v2, 0x3

    if-eq v11, v2, :cond_18

    const/4 v2, 0x4

    if-eq v11, v2, :cond_18

    const/4 v2, 0x5

    if-eq v11, v2, :cond_16

    const/4 v2, 0x7

    .line 347
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v4, :cond_1e

    const/16 v9, 0x8

    .line 349
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    if-nez v14, :cond_17

    .line 336
    invoke-static {v0, v6}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstream(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    goto :goto_e

    :cond_17
    const/4 v2, 0x3

    .line 338
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v9, v4, 0x2

    if-ge v2, v9, :cond_1e

    .line 342
    invoke-static {v0, v6}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    if-nez v14, :cond_19

    const/4 v2, 0x0

    const/4 v4, 0x3

    :goto_9
    if-ge v2, v4, :cond_1e

    .line 326
    invoke-static {v0, v6}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstream(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    const/4 v4, 0x3

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v4, :cond_1e

    .line 330
    invoke-static {v0, v6}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x3

    goto :goto_a

    :cond_1a
    if-nez v14, :cond_1b

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v15, :cond_1e

    .line 314
    invoke-static {v0, v6}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstream(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1b
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v15, :cond_1e

    .line 318
    invoke-static {v0, v6}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    :goto_d
    if-nez v14, :cond_1d

    .line 301
    invoke-static {v0, v6}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstream(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    goto :goto_e

    .line 303
    :cond_1d
    invoke-static {v0, v6}, Landroidx/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 354
    :cond_1e
    :goto_e
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 355
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    :goto_f
    if-eqz v2, :cond_1f

    const/4 v2, 0x7

    .line 358
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v2, :cond_1f

    const/16 v9, 0xf

    .line 360
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1f
    if-lez v14, :cond_22

    .line 365
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 366
    invoke-static {v0}, Landroidx/media3/extractor/Ac4Util;->skipDsiBitrate(Landroidx/media3/common/util/ParsableBitArray;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_11

    .line 367
    :cond_20
    const-string v0, "Can\'t parse bitrate DSI."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 371
    :cond_21
    :goto_11
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 372
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    const/16 v2, 0x10

    .line 373
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 374
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    const/4 v2, 0x5

    .line 376
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v2, :cond_22

    const/4 v4, 0x3

    .line 378
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v9, 0x8

    .line 379
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_22
    const/16 v9, 0x8

    .line 384
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    const/4 v2, 0x1

    if-ne v3, v2, :cond_24

    .line 387
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v9

    sub-int/2addr v1, v8

    if-lt v5, v1, :cond_23

    sub-int/2addr v5, v1

    .line 394
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    goto :goto_13

    .line 390
    :cond_23
    const-string v0, "pres_bytes is smaller than presentation bytes read."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 398
    :cond_24
    :goto_13
    iget-boolean v0, v6, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    if-eqz v0, :cond_26

    iget v0, v6, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    goto :goto_14

    .line 399
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t determine channel mode of presentation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 406
    :cond_26
    :goto_14
    iget-boolean v0, v6, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    if-eqz v0, :cond_27

    .line 407
    iget v0, v6, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    iget-boolean v1, v6, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    iget v2, v6, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    .line 408
    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/Ac4Util;->getAdjustedChannelCount(IZI)I

    move-result v0

    goto :goto_15

    .line 422
    :cond_27
    iget v0, v6, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 427
    iget v1, v6, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_28

    const/16 v1, 0x11

    if-ne v0, v1, :cond_28

    const/16 v0, 0x15

    :cond_28
    :goto_15
    if-lez v0, :cond_29

    .line 437
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    move-object/from16 v2, p1

    .line 438
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    const-string v2, "audio/ac4"

    .line 439
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 440
    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 441
    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v1, p3

    .line 442
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v1, p2

    .line 443
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    return-object v0

    .line 433
    :cond_29
    const-string v0, "Can\'t determine channel count of presentation."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 181
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported AC-4 DSI version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/16 v0, 0x10

    .line 726
    new-array v0, v0, [B

    .line 727
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 728
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 729
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 730
    new-instance p0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    invoke-static {p0}, Landroidx/media3/extractor/Ac4Util;->parseAc4SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;

    move-result-object p0

    iget p0, p0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->sampleCount:I

    return p0
.end method

.method public static parseAc4SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;
    .locals 11

    const/16 v0, 0x10

    .line 640
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 642
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_0

    const/16 v0, 0x18

    .line 645
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    add-int/2addr v0, v2

    const v2, 0xac41

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    move v8, v0

    const/4 v0, 0x2

    .line 652
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 654
    invoke-static {p0, v0}, Landroidx/media3/extractor/Ac4Util;->readVariableBits(Landroidx/media3/common/util/ParsableBitArray;I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2
    move v5, v1

    const/16 v1, 0xa

    .line 656
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 657
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 658
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-lez v4, :cond_3

    .line 659
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 662
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const v6, 0xbb80

    const v7, 0xac44

    if-eqz v4, :cond_4

    const v9, 0xbb80

    goto :goto_1

    :cond_4
    const v9, 0xac44

    .line 663
    :goto_1
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-ne v9, v7, :cond_5

    const/16 v4, 0xd

    if-ne p0, v4, :cond_5

    .line 666
    sget-object v0, Landroidx/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    aget p0, v0, p0

    goto :goto_4

    :cond_5
    if-ne v9, v6, :cond_b

    .line 667
    sget-object v4, Landroidx/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    array-length v6, v4

    if-ge p0, v6, :cond_b

    .line 668
    aget v4, v4, p0

    .line 669
    rem-int/lit8 v1, v1, 0x5

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-eq v1, v7, :cond_8

    const/16 v7, 0xb

    if-eq v1, v0, :cond_7

    if-eq v1, v2, :cond_8

    if-eq v1, v3, :cond_6

    goto :goto_2

    :cond_6
    if-eq p0, v2, :cond_a

    if-eq p0, v6, :cond_a

    if-ne p0, v7, :cond_9

    goto :goto_3

    :cond_7
    if-eq p0, v6, :cond_a

    if-ne p0, v7, :cond_9

    goto :goto_3

    :cond_8
    if-eq p0, v2, :cond_a

    if-ne p0, v6, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    move p0, v4

    goto :goto_4

    :cond_a
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    const/4 p0, 0x0

    .line 690
    :goto_4
    new-instance v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;

    const/4 v6, 0x2

    const/4 v10, 0x0

    move-object v4, v0

    move v7, v9

    move v9, p0

    invoke-direct/range {v4 .. v10}, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;-><init>(IIIIILandroidx/media3/extractor/Ac4Util$1;)V

    return-object v0
.end method

.method public static parseAc4SyncframeSize([BI)I
    .locals 4

    .line 701
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    .line 705
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_1

    .line 708
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x6

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr v0, p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    const p0, 0xac41

    if-ne p1, p0, :cond_2

    add-int/lit8 v1, v1, 0x2

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method private static parseDsiSubstream(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 460
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x2

    .line 461
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 463
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_0
    const/4 v0, 0x7

    if-lt v1, v0, :cond_1

    const/16 v0, 0xa

    if-gt v1, v0, :cond_1

    .line 467
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 470
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    .line 471
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 475
    iget v2, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    if-ltz v1, :cond_3

    const/16 v2, 0xf

    if-gt v1, v2, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 478
    :cond_2
    iput v1, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    .line 481
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 482
    invoke-static {p0}, Landroidx/media3/extractor/Ac4Util;->skipDsiLanguage(Landroidx/media3/common/util/ParsableBitArray;)V

    :cond_4
    return-void
.end method

.method private static parseDsiSubstreamGroup(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 500
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 501
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    const/16 v2, 0x8

    .line 502
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 505
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 506
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    .line 507
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_0
    if-eqz v1, :cond_1

    const/16 v4, 0x18

    .line 510
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    .line 512
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_3

    .line 513
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_2

    .line 514
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_2
    const/4 v4, 0x6

    .line 516
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    .line 518
    :cond_3
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 522
    :cond_4
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    .line 523
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 525
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 526
    invoke-static {p0}, Landroidx/media3/extractor/Ac4Util;->skipDsiLanguage(Landroidx/media3/common/util/ParsableBitArray;)V

    :cond_5
    return-void
.end method

.method private static readVariableBits(Landroidx/media3/common/util/ParsableBitArray;I)I
    .locals 2

    const/4 v0, 0x0

    .line 750
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 751
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, p1

    goto :goto_0
.end method

.method private static skipDsiBitrate(Landroidx/media3/common/util/ParsableBitArray;)Z
    .locals 2

    .line 563
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    const/16 v1, 0x42

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 566
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private static skipDsiLanguage(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 541
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2a

    if-gt v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x8

    .line 549
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    .line 546
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 544
    const-string p0, "Invalid language tag bytes number: %d. Must be between 2 and 42."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 543
    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method
