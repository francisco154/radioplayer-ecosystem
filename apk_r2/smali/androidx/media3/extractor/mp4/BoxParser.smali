.class public final Landroidx/media3/extractor/mp4/BoxParser;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/BoxParser$TkhdData;,
        Landroidx/media3/extractor/mp4/BoxParser$MdhdData;,
        Landroidx/media3/extractor/mp4/BoxParser$StsdData;,
        Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;,
        Landroidx/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;,
        Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;,
        Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;,
        Landroidx/media3/extractor/mp4/BoxParser$VexuData;,
        Landroidx/media3/extractor/mp4/BoxParser$EyesData;,
        Landroidx/media3/extractor/mp4/BoxParser$StriData;,
        Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    }
.end annotation


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x4

.field private static final SAMPLE_RATE_AMR_NB:I = 0x1f40

.field private static final SAMPLE_RATE_AMR_WB:I = 0x3e80

.field private static final TAG:Ljava/lang/String; = "BoxParsers"

.field private static final TYPE_clcp:I = 0x636c6370

.field private static final TYPE_mdta:I = 0x6d647461

.field private static final TYPE_meta:I = 0x6d657461

.field private static final TYPE_nclc:I = 0x6e636c63

.field private static final TYPE_nclx:I = 0x6e636c78

.field private static final TYPE_sbtl:I = 0x7362746c

.field private static final TYPE_soun:I = 0x736f756e

.field private static final TYPE_subt:I = 0x73756274

.field private static final TYPE_text:I = 0x74657874

.field private static final TYPE_vide:I = 0x76696465

.field private static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    const-string v0, "OpusHead"

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allocateHdrStaticInfo()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x19

    .line 1753
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .locals 7

    .line 2416
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 2417
    invoke-static {v2, v3, v0}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v4

    .line 2418
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 2419
    invoke-static {v5, v3, v0}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v0

    .line 2420
    aget-wide v5, p0, v3

    cmp-long v2, v5, p3

    if-gtz v2, :cond_0

    aget-wide v4, p0, v4

    cmp-long v2, p3, v4

    if-gez v2, :cond_0

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_0

    cmp-long p0, p5, p1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static findBoxPosition(Landroidx/media3/common/util/ParsableByteArray;III)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2155
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 2156
    invoke-static {v3, v4}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    :goto_1
    sub-int v3, v0, p2

    if-ge v3, p3, :cond_3

    .line 2158
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2159
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 2160
    :goto_2
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2161
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    if-ne v4, p1, :cond_2

    return v0

    :cond_2
    add-int/2addr v0, v3

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static getTrackTypeForHdlr(I)I
    .locals 1

    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public static maybeSkipRemainingMetaBoxHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 3

    .line 299
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x4

    .line 304
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 305
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 308
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private static parseApvc(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/ColorInfo;
    .locals 11

    .line 1711
    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 1712
    new-instance v1, Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 1713
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p0

    const/16 v2, 0x8

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    const/4 p0, 0x1

    .line 1715
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 1716
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    .line 1718
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 1719
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    const/4 v8, 0x6

    .line 1721
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1723
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    .line 1724
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    const/16 v9, 0xb

    .line 1727
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    const/4 v9, 0x4

    .line 1728
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1729
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    add-int/2addr v9, v2

    .line 1730
    invoke-virtual {v0, v9}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 1731
    invoke-virtual {v0, v9}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 1732
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    if-eqz v8, :cond_1

    .line 1734
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 1735
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 1736
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 1737
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    .line 1739
    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v8

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_2

    :cond_0
    const/4 v10, 0x2

    .line 1740
    :goto_2
    invoke-virtual {v8, v10}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v8

    .line 1742
    invoke-static {v9}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v9

    .line 1741
    invoke-virtual {v8, v9}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1746
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0
.end method

.method private static parseAudioSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ZLandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    add-int/lit8 v8, v2, 0x10

    .line 1821
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v8, 0x6

    const/16 v9, 0x8

    if-eqz p6, :cond_0

    .line 1825
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 1826
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 1828
    :cond_0
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v11, 0x0

    :goto_0
    const/4 v14, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/16 v10, 0x10

    if-eqz v11, :cond_d

    if-ne v11, v13, :cond_1

    goto/16 :goto_4

    :cond_1
    if-ne v11, v12, :cond_c

    .line 1851
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1853
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readDouble()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v8, v10

    .line 1854
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    .line 1856
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1857
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    .line 1858
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v19

    and-int/lit8 v20, v19, 0x1

    if-eqz v20, :cond_2

    const/16 v20, 0x1

    goto :goto_1

    :cond_2
    const/16 v20, 0x0

    :goto_1
    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_3

    const/16 v19, 0x1

    goto :goto_2

    :cond_3
    const/16 v19, 0x0

    :goto_2
    const/16 v12, 0x20

    if-nez v20, :cond_a

    if-ne v11, v9, :cond_4

    const/4 v11, 0x3

    goto :goto_3

    :cond_4
    const/16 v15, 0x10

    if-ne v11, v15, :cond_6

    if-eqz v19, :cond_5

    const/high16 v11, 0x10000000

    goto :goto_3

    :cond_5
    const/4 v11, 0x2

    goto :goto_3

    :cond_6
    const/16 v15, 0x18

    if-ne v11, v15, :cond_8

    if-eqz v19, :cond_7

    const/high16 v11, 0x50000000

    goto :goto_3

    :cond_7
    const/16 v11, 0x15

    goto :goto_3

    :cond_8
    if-ne v11, v12, :cond_b

    if-eqz v19, :cond_9

    const/high16 v11, 0x60000000

    goto :goto_3

    :cond_9
    const/16 v11, 0x16

    goto :goto_3

    :cond_a
    if-ne v11, v12, :cond_b

    const/4 v11, 0x4

    goto :goto_3

    :cond_b
    const/4 v11, -0x1

    .line 1874
    :goto_3
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v9, 0x0

    goto :goto_5

    :cond_c
    return-void

    .line 1839
    :cond_d
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 1840
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1842
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v8

    .line 1844
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v9

    sub-int/2addr v9, v14

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1845
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    if-ne v11, v13, :cond_e

    const/16 v11, 0x10

    .line 1848
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_e
    const/4 v11, -0x1

    :goto_5
    const v12, 0x73617762

    const v15, 0x73616d72

    const v14, 0x69616d66

    if-ne v1, v14, :cond_f

    const/4 v8, -0x1

    const/4 v10, -0x1

    goto :goto_7

    :cond_f
    if-ne v1, v15, :cond_10

    const/16 v8, 0x1f40

    :goto_6
    const/4 v10, 0x1

    goto :goto_7

    :cond_10
    if-ne v1, v12, :cond_11

    const/16 v8, 0x3e80

    goto :goto_6

    .line 1896
    :cond_11
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v13

    const v14, 0x656e6361

    if-ne v1, v14, :cond_14

    .line 1900
    invoke-static {v0, v2, v3}, Landroidx/media3/extractor/mp4/BoxParser;->parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v14

    if-eqz v14, :cond_13

    .line 1902
    iget-object v1, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v6, :cond_12

    const/4 v6, 0x0

    goto :goto_8

    .line 1906
    :cond_12
    iget-object v12, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v12, v12, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v6, v12}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v6

    .line 1907
    :goto_8
    iget-object v12, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->trackEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v14, v12, p9

    .line 1909
    :cond_13
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :cond_14
    const v12, 0x61632d33

    .line 1918
    const-string v14, "audio/mhm1"

    if-ne v1, v12, :cond_15

    .line 1919
    const-string v1, "audio/ac3"

    :goto_9
    move v12, v11

    goto/16 :goto_d

    :cond_15
    const v12, 0x65632d33

    if-ne v1, v12, :cond_16

    .line 1921
    const-string v1, "audio/eac3"

    goto :goto_9

    :cond_16
    const v12, 0x61632d34

    if-ne v1, v12, :cond_17

    .line 1923
    const-string v1, "audio/ac4"

    goto :goto_9

    :cond_17
    const v12, 0x64747363

    if-ne v1, v12, :cond_18

    .line 1925
    const-string v1, "audio/vnd.dts"

    goto :goto_9

    :cond_18
    const v12, 0x64747368

    if-eq v1, v12, :cond_2d

    const v12, 0x6474736c

    if-ne v1, v12, :cond_19

    goto/16 :goto_c

    :cond_19
    const v12, 0x64747365

    if-ne v1, v12, :cond_1a

    .line 1929
    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_9

    :cond_1a
    const v12, 0x64747378

    if-ne v1, v12, :cond_1b

    .line 1931
    const-string v1, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_9

    :cond_1b
    if-ne v1, v15, :cond_1c

    .line 1933
    const-string v1, "audio/3gpp"

    goto :goto_9

    :cond_1c
    const v12, 0x73617762

    if-ne v1, v12, :cond_1d

    .line 1935
    const-string v1, "audio/amr-wb"

    goto :goto_9

    :cond_1d
    const v12, 0x736f7774

    .line 1936
    const-string v15, "audio/raw"

    if-ne v1, v12, :cond_1e

    :goto_a
    move-object v1, v15

    const/4 v12, 0x2

    goto/16 :goto_d

    :cond_1e
    const v12, 0x74776f73

    if-ne v1, v12, :cond_1f

    move-object v1, v15

    const/high16 v12, 0x10000000

    goto/16 :goto_d

    :cond_1f
    const v12, 0x6c70636d

    if-ne v1, v12, :cond_21

    const/4 v12, -0x1

    if-ne v11, v12, :cond_20

    goto :goto_a

    :cond_20
    move v12, v11

    move-object v1, v15

    goto/16 :goto_d

    :cond_21
    const v12, 0x2e6d7032

    if-eq v1, v12, :cond_2c

    const v12, 0x2e6d7033

    if-ne v1, v12, :cond_22

    goto :goto_b

    :cond_22
    const v12, 0x6d686131

    if-ne v1, v12, :cond_23

    .line 1950
    const-string v1, "audio/mha1"

    goto :goto_9

    :cond_23
    const v12, 0x6d686d31

    if-ne v1, v12, :cond_24

    move v12, v11

    move-object v1, v14

    goto :goto_d

    :cond_24
    const v12, 0x616c6163

    if-ne v1, v12, :cond_25

    .line 1954
    const-string v1, "audio/alac"

    goto/16 :goto_9

    :cond_25
    const v12, 0x616c6177

    if-ne v1, v12, :cond_26

    .line 1956
    const-string v1, "audio/g711-alaw"

    goto/16 :goto_9

    :cond_26
    const v12, 0x756c6177

    if-ne v1, v12, :cond_27

    .line 1958
    const-string v1, "audio/g711-mlaw"

    goto/16 :goto_9

    :cond_27
    const v12, 0x4f707573

    if-ne v1, v12, :cond_28

    .line 1960
    const-string v1, "audio/opus"

    goto/16 :goto_9

    :cond_28
    const v12, 0x664c6143

    if-ne v1, v12, :cond_29

    .line 1962
    const-string v1, "audio/flac"

    goto/16 :goto_9

    :cond_29
    const v12, 0x6d6c7061

    if-ne v1, v12, :cond_2a

    .line 1964
    const-string v1, "audio/true-hd"

    goto/16 :goto_9

    :cond_2a
    const v12, 0x69616d66

    if-ne v1, v12, :cond_2b

    .line 1966
    const-string v1, "audio/iamf"

    goto/16 :goto_9

    :cond_2b
    move v12, v11

    const/4 v1, 0x0

    goto :goto_d

    .line 1948
    :cond_2c
    :goto_b
    const-string v1, "audio/mpeg"

    goto/16 :goto_9

    .line 1927
    :cond_2d
    :goto_c
    const-string v1, "audio/vnd.dts.hd"

    goto/16 :goto_9

    :goto_d
    move/from16 v23, v12

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_e
    sub-int v12, v13, v2

    if-ge v12, v3, :cond_46

    .line 1971
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1972
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    if-lez v12, :cond_2e

    const/4 v2, 0x1

    goto :goto_f

    :cond_2e
    const/4 v2, 0x0

    .line 1973
    :goto_f
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1974
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x6d686143

    if-ne v2, v3, :cond_31

    add-int/lit8 v2, v13, 0x8

    .line 1979
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v2, 0x1

    .line 1980
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1981
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 1982
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1984
    invoke-static {v1, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2f

    .line 1985
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v11, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v11, v2

    const-string v3, "mhm1.%02X"

    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    move-object/from16 p7, v14

    goto :goto_10

    :cond_2f
    const/4 v2, 0x0

    .line 1986
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 p7, v14

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v3, v14, v2

    const-string v3, "mha1.%02X"

    invoke-static {v3, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 1987
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 1988
    new-array v14, v3, [B

    .line 1989
    invoke-virtual {v0, v14, v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    if-nez v15, :cond_30

    .line 1992
    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object v15, v3

    goto :goto_11

    .line 1996
    :cond_30
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v14, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object v15, v2

    goto :goto_11

    :cond_31
    move-object/from16 p7, v14

    const v3, 0x6d686150

    if-ne v2, v3, :cond_34

    add-int/lit8 v2, v13, 0x8

    .line 2001
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2002
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-lez v2, :cond_33

    .line 2004
    new-array v3, v2, [B

    const/4 v14, 0x0

    .line 2005
    invoke-virtual {v0, v3, v14, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    if-nez v15, :cond_32

    .line 2007
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    goto :goto_11

    .line 2012
    :cond_32
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    :cond_33
    :goto_11
    const/4 v3, -0x1

    :goto_12
    const/4 v14, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x0

    const v19, 0x616c6163

    const/16 v21, 0x1

    const/16 v22, 0x2

    goto/16 :goto_1a

    :cond_34
    const v3, 0x65736473

    if-eq v2, v3, :cond_41

    if-eqz p6, :cond_35

    const v14, 0x77617665

    if-ne v2, v14, :cond_35

    goto/16 :goto_18

    :cond_35
    const v3, 0x64616333

    if-ne v2, v3, :cond_36

    add-int/lit8 v2, v13, 0x8

    .line 2044
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2046
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Landroidx/media3/extractor/Ac3Util;->parseAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    :goto_13
    const/4 v14, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    goto/16 :goto_16

    :cond_36
    const v3, 0x64656333

    if-ne v2, v3, :cond_37

    add-int/lit8 v2, v13, 0x8

    .line 2048
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2050
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Landroidx/media3/extractor/Ac3Util;->parseEAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    goto :goto_13

    :cond_37
    const v3, 0x64616334

    if-ne v2, v3, :cond_38

    add-int/lit8 v2, v13, 0x8

    .line 2052
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2054
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Landroidx/media3/extractor/Ac4Util;->parseAc4AnnexEFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    goto :goto_13

    :cond_38
    const v3, 0x646d6c70

    if-ne v2, v3, :cond_3a

    if-lez v9, :cond_39

    move v8, v9

    const/4 v3, -0x1

    const/4 v10, 0x2

    goto :goto_12

    .line 2057
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v0, v14}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_3a
    const/4 v14, 0x0

    const v3, 0x64647473

    if-eq v2, v3, :cond_40

    const v3, 0x75647473

    if-ne v2, v3, :cond_3b

    goto/16 :goto_15

    :cond_3b
    const v3, 0x644f7073

    if-ne v2, v3, :cond_3c

    add-int/lit8 v2, v12, -0x8

    .line 2080
    sget-object v3, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    array-length v15, v3

    add-int/2addr v15, v2

    invoke-static {v3, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    add-int/lit8 v14, v13, 0x8

    .line 2081
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2082
    array-length v3, v3

    invoke-virtual {v0, v15, v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2083
    invoke-static {v15}, Landroidx/media3/extractor/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object v15

    goto/16 :goto_11

    :cond_3c
    const v3, 0x64664c61

    if-ne v2, v3, :cond_3d

    add-int/lit8 v2, v12, -0xc

    add-int/lit8 v3, v12, -0x8

    .line 2086
    new-array v3, v3, [B

    const/16 v14, 0x66

    const/4 v15, 0x0

    .line 2087
    aput-byte v14, v3, v15

    const/16 v14, 0x4c

    const/16 v21, 0x1

    .line 2088
    aput-byte v14, v3, v21

    const/16 v14, 0x61

    const/16 v22, 0x2

    .line 2089
    aput-byte v14, v3, v22

    const/16 v14, 0x43

    const/16 v17, 0x3

    .line 2090
    aput-byte v14, v3, v17

    add-int/lit8 v14, v13, 0xc

    .line 2091
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v14, 0x4

    .line 2092
    invoke-virtual {v0, v3, v14, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2093
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    :goto_14
    const/4 v3, -0x1

    const/16 v18, 0x0

    goto/16 :goto_17

    :cond_3d
    const v3, 0x616c6163

    const/4 v14, 0x4

    const/16 v17, 0x3

    const/16 v21, 0x1

    const/16 v22, 0x2

    if-ne v2, v3, :cond_3e

    add-int/lit8 v2, v12, -0xc

    .line 2096
    new-array v8, v2, [B

    add-int/lit8 v10, v13, 0xc

    .line 2097
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v10, 0x0

    .line 2098
    invoke-virtual {v0, v8, v10, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2102
    invoke-static {v8}, Landroidx/media3/common/util/CodecSpecificDataUtil;->parseAlacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v2

    .line 2103
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 2104
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2105
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    move v8, v10

    const/4 v3, -0x1

    const/16 v18, 0x0

    const v19, 0x616c6163

    move v10, v2

    goto/16 :goto_1a

    :cond_3e
    const v3, 0x69616362

    if-ne v2, v3, :cond_3f

    add-int/lit8 v2, v13, 0x9

    .line 2107
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2109
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLeb128ToInt()I

    move-result v2

    .line 2110
    new-array v3, v2, [B

    const/4 v15, 0x0

    .line 2111
    invoke-virtual {v0, v3, v15, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2112
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object v15, v2

    goto :goto_14

    :cond_3f
    const/16 v18, 0x0

    goto :goto_16

    :cond_40
    :goto_15
    const/4 v14, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    .line 2067
    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 2069
    invoke-virtual {v2, v4}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 2070
    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 2071
    invoke-virtual {v2, v10}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 2072
    invoke-virtual {v2, v8}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 2073
    invoke-virtual {v2, v6}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 2074
    invoke-virtual {v2, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 2075
    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    :goto_16
    const/4 v3, -0x1

    :goto_17
    const v19, 0x616c6163

    goto :goto_1a

    :cond_41
    :goto_18
    const/4 v14, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x0

    const v19, 0x616c6163

    const/16 v21, 0x1

    const/16 v22, 0x2

    if-ne v2, v3, :cond_42

    move v2, v13

    goto :goto_19

    .line 2020
    :cond_42
    invoke-static {v0, v3, v13, v12}, Landroidx/media3/extractor/mp4/BoxParser;->findBoxPosition(Landroidx/media3/common/util/ParsableByteArray;III)I

    move-result v2

    :goto_19
    const/4 v3, -0x1

    if-eq v2, v3, :cond_45

    .line 2022
    invoke-static {v0, v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    move-result-object v16

    .line 2023
    invoke-static/range {v16 .. v16}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$900(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)Ljava/lang/String;

    move-result-object v1

    .line 2024
    invoke-static/range {v16 .. v16}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1000(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)[B

    move-result-object v2

    if-eqz v2, :cond_45

    .line 2026
    const-string v15, "audio/vorbis"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_43

    .line 2028
    invoke-static {v2}, Landroidx/media3/extractor/VorbisUtil;->parseVorbisCsdFromEsdsInitializationData([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    goto :goto_1a

    .line 2030
    :cond_43
    const-string v15, "audio/mp4a-latm"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_44

    .line 2034
    invoke-static {v2}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v8

    .line 2035
    iget v10, v8, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    .line 2036
    iget v11, v8, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    .line 2037
    iget-object v8, v8, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    move/from16 v24, v11

    move-object v11, v8

    move v8, v10

    move/from16 v10, v24

    .line 2039
    :cond_44
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    :cond_45
    :goto_1a
    add-int/2addr v13, v12

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v14, p7

    goto/16 :goto_e

    .line 2117
    :cond_46
    iget-object v0, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    if-nez v0, :cond_48

    if-eqz v1, :cond_48

    .line 2118
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 2120
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2121
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2122
    invoke-virtual {v0, v11}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2123
    invoke-virtual {v0, v10}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2124
    invoke-virtual {v0, v8}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v11, v23

    .line 2125
    invoke-virtual {v0, v11}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2126
    invoke-virtual {v0, v15}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2127
    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2128
    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    if-eqz v16, :cond_47

    .line 2132
    invoke-static/range {v16 .. v16}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1200(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 2133
    invoke-static/range {v16 .. v16}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1100(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 2136
    :cond_47
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    :cond_48
    return-void
.end method

.method private static parseAv1c(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/ColorInfo;
    .locals 15

    .line 1583
    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 1584
    new-instance v1, Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 1585
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p0

    const/16 v2, 0x8

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    const/4 p0, 0x1

    .line 1589
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    const/4 v3, 0x3

    .line 1590
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v5, 0x6

    .line 1591
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1592
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    .line 1593
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0xc

    const/16 v8, 0xa

    const/4 v9, 0x2

    if-ne v4, v9, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_0

    const/16 v4, 0xc

    goto :goto_0

    :cond_0
    const/16 v4, 0xa

    .line 1595
    :goto_0
    invoke-virtual {v0, v4}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    if-eqz v6, :cond_1

    const/16 v8, 0xc

    .line 1596
    :cond_1
    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    goto :goto_3

    :cond_2
    if-gt v4, v9, :cond_5

    if-eqz v5, :cond_3

    const/16 v4, 0xa

    goto :goto_1

    :cond_3
    const/16 v4, 0x8

    .line 1598
    :goto_1
    invoke-virtual {v0, v4}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const/16 v8, 0x8

    .line 1599
    :goto_2
    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    :cond_5
    :goto_3
    const/16 v4, 0xd

    .line 1603
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1606
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    const/4 v5, 0x4

    .line 1607
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 1608
    const-string v8, "BoxParsers"

    if-eq v6, p0, :cond_6

    .line 1609
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported obu_type: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    .line 1612
    :cond_6
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1613
    const-string p0, "Unsupported obu_extension_flag"

    invoke-static {v8, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    .line 1616
    :cond_7
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    .line 1617
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    if-eqz v6, :cond_8

    .line 1619
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    const/16 v10, 0x7f

    if-le v6, v10, :cond_8

    .line 1620
    const-string p0, "Excessive obu_size"

    invoke-static {v8, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    .line 1624
    :cond_8
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 1625
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1626
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1627
    const-string p0, "Unsupported reduced_still_picture_header"

    invoke-static {v8, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    .line 1630
    :cond_9
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1631
    const-string p0, "Unsupported timing_info_present_flag"

    invoke-static {v8, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    .line 1634
    :cond_a
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1635
    const-string p0, "Unsupported initial_display_delay_present_flag"

    invoke-static {v8, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v8, 0x5

    .line 1638
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4
    const/4 v13, 0x7

    if-gt v12, v10, :cond_d

    .line 1640
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1641
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    if-le v14, v13, :cond_c

    .line 1643
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1646
    :cond_d
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 1647
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v7, p0

    .line 1648
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/2addr v5, p0

    .line 1649
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1650
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1651
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1653
    :cond_e
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1654
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1656
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1659
    :cond_f
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x2

    goto :goto_5

    .line 1661
    :cond_10
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    :goto_5
    if-lez v7, :cond_11

    .line 1663
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-nez v7, :cond_11

    .line 1664
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_11
    if-eqz v5, :cond_12

    .line 1668
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1670
    :cond_12
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1672
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-ne v6, v9, :cond_13

    if-eqz v3, :cond_13

    .line 1674
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    :cond_13
    if-eq v6, p0, :cond_14

    .line 1677
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v11, 0x1

    .line 1679
    :cond_14
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1680
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 1681
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 1682
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-nez v11, :cond_15

    if-ne v3, p0, :cond_15

    if-ne v5, v4, :cond_15

    if-nez v2, :cond_15

    const/4 v1, 0x1

    goto :goto_6

    .line 1689
    :cond_15
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 1691
    :goto_6
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v2

    if-ne v1, p0, :cond_16

    goto :goto_7

    :cond_16
    const/4 p0, 0x2

    .line 1692
    :goto_7
    invoke-virtual {v2, p0}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object p0

    .line 1694
    invoke-static {v5}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v1

    .line 1693
    invoke-virtual {p0, v1}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 1696
    :cond_17
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0
.end method

.method static parseCommonEncryptionSinfFromParent(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v6, v4

    const/4 v5, -0x1

    const/4 v7, 0x0

    :goto_0
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3

    .line 2307
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2308
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 2309
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    const v10, 0x66726d61

    if-ne v9, v10, :cond_0

    .line 2311
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_0
    const v10, 0x7363686d

    if-ne v9, v10, :cond_1

    const/4 v4, 0x4

    .line 2313
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2315
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const v10, 0x73636869

    if-ne v9, v10, :cond_2

    move v5, v0

    move v7, v8

    :cond_2
    :goto_1
    add-int/2addr v0, v8

    goto :goto_0

    .line 2323
    :cond_3
    const-string p1, "cenc"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbc1"

    .line 2324
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cens"

    .line 2325
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbcs"

    .line 2326
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-object v3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    if-eqz v6, :cond_6

    const/4 p2, 0x1

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    .line 2327
    :goto_3
    const-string v0, "frma atom is mandatory"

    invoke-static {p2, v0}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    if-eq v5, v1, :cond_7

    const/4 p2, 0x1

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    .line 2328
    :goto_4
    const-string v0, "schi atom is mandatory"

    invoke-static {p2, v0}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2332
    invoke-static {p0, v5, v7, v4}, Landroidx/media3/extractor/mp4/BoxParser;->parseSchiFromParent(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;)Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 v2, 0x1

    .line 2334
    :cond_8
    const-string p1, "tenc atom is mandatory"

    invoke-static {v2, p1}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2335
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEdts(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/container/Mp4Box$ContainerBox;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    const v0, 0x656c7374

    .line 1777
    invoke-virtual {p0, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1781
    :cond_0
    iget-object p0, p0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 1782
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1783
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1784
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v0

    .line 1785
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 1786
    new-array v2, v1, [J

    .line 1787
    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 1790
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_2

    .line 1791
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    .line 1792
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v5, 0x2

    .line 1797
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1795
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1799
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .locals 12

    add-int/lit8 p1, p1, 0xc

    .line 2172
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x1

    .line 2174
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2175
    invoke-static {p0}, Landroidx/media3/extractor/mp4/BoxParser;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    const/4 v0, 0x2

    .line 2176
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2178
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 2180
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 2183
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 2186
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2190
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2191
    invoke-static {p0}, Landroidx/media3/extractor/mp4/BoxParser;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 2194
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 2195
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v2

    .line 2196
    const-string v0, "audio/mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts"

    .line 2197
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts.hd"

    .line 2198
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    .line 2206
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2207
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    .line 2208
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 2211
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2212
    invoke-static {p0}, Landroidx/media3/extractor/mp4/BoxParser;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result p1

    .line 2213
    new-array v5, p1, [B

    const/4 v6, 0x0

    .line 2214
    invoke-virtual {p0, v5, v6, p1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2217
    new-instance p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    const-wide/16 v6, -0x1

    const-wide/16 v8, 0x0

    cmp-long p1, v3, v8

    if-lez p1, :cond_4

    move-wide v10, v3

    goto :goto_0

    :cond_4
    move-wide v10, v6

    :goto_0
    cmp-long p1, v0, v8

    if-lez p1, :cond_5

    move-wide v6, v0

    :cond_5
    move-object v1, p0

    move-object v3, v5

    move-wide v4, v10

    .line 2221
    invoke-direct/range {v1 .. v7}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0

    .line 2199
    :cond_6
    :goto_1
    new-instance p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0
.end method

.method private static parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 3

    .line 2404
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2407
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static parseFullBoxFlags(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static parseFullBoxVersion(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static parseHdlr(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 1

    const/16 v0, 0x10

    .line 946
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 947
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    return p0
.end method

.method private static parseIlst(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;
    .locals 2

    const/16 v0, 0x8

    .line 847
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 849
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 850
    invoke-static {p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIlstElement(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 852
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 855
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    new-instance p0, Landroidx/media3/common/Metadata;

    invoke-direct {p0, v0}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_1
    return-object p0
.end method

.method private static parseMdhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$MdhdData;
    .locals 11

    const/16 v0, 0x8

    .line 972
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 973
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 974
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 975
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 976
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    .line 978
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v3, v0, :cond_5

    .line 981
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    add-int v7, v2, v3

    aget-byte v6, v6, v7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    if-nez v1, :cond_2

    .line 991
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    const-wide/32 v5, 0xf4240

    move-wide v3, v0

    move-wide v7, v9

    .line 997
    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 988
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :goto_3
    move-wide v6, v4

    .line 1000
    :goto_4
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1006
    new-instance p0, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;

    move-object v3, p0

    move-wide v4, v9

    invoke-direct/range {v3 .. v8}, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;-><init>(JJLjava/lang/String;)V

    return-object p0
.end method

.method public static parseMdtaFromMeta(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroidx/media3/common/Metadata;
    .locals 10

    const v0, 0x68646c72    # 4.3148E24f

    .line 240
    invoke-virtual {p0, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v0

    const v1, 0x6b657973

    .line 241
    invoke-virtual {p0, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v1

    const v2, 0x696c7374

    .line 242
    invoke-virtual {p0, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz p0, :cond_6

    .line 243
    iget-object v0, v0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 246
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseHdlr(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    .line 252
    :cond_0
    iget-object v0, v1, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xc

    .line 253
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 254
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 255
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v1, :cond_1

    .line 257
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    const/4 v7, 0x4

    .line 258
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v6, v5

    .line 260
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 264
    :cond_1
    iget-object p0, p0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 265
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v4, v5, :cond_4

    .line 268
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 269
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 270
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_2

    if-ge v7, v1, :cond_2

    .line 272
    aget-object v7, v3, v7

    add-int v8, v4, v6

    .line 275
    invoke-static {p0, v8, v7}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseMdtaMetadataEntryFromIlst(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 277
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 280
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Skipped metadata with unknown key index: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BoxParsers"

    invoke-static {v8, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/2addr v4, v6

    .line 282
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1

    .line 284
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v2, Landroidx/media3/common/Metadata;

    invoke-direct {v2, v0}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :cond_6
    :goto_3
    return-object v2
.end method

.method private static parseMetaDataSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIILandroidx/media3/extractor/mp4/BoxParser$StsdData;)V
    .locals 0

    add-int/lit8 p2, p2, 0x10

    .line 1758
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const p2, 0x6d657474

    if-ne p1, p2, :cond_0

    .line 1760
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 1761
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1763
    new-instance p1, Landroidx/media3/common/Format$Builder;

    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p1, p3}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    iput-object p0, p4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    :cond_0
    return-void
.end method

.method public static parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;
    .locals 11

    const/16 v0, 0x8

    .line 215
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 216
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 217
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    .line 222
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    .line 225
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v2

    :goto_0
    move-wide v5, v0

    move-wide v7, v2

    .line 228
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    .line 229
    new-instance p0, Landroidx/media3/container/Mp4TimestampData;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Landroidx/media3/container/Mp4TimestampData;-><init>(JJJ)V

    return-object p0
.end method

.method private static parsePaspFromParent(Landroidx/media3/common/util/ParsableByteArray;I)F
    .locals 0

    add-int/lit8 p1, p1, 0x8

    .line 1803
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1804
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    .line 1805
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static parseProjFromParent(Landroidx/media3/common/util/ParsableByteArray;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 2391
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2392
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 2393
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x70726f6a

    if-ne v2, v3, :cond_0

    .line 2395
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p0

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2279
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 2281
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2282
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 2283
    :goto_1
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2284
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x73696e66

    if-ne v2, v3, :cond_1

    .line 2288
    invoke-static {p0, v0, v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseCommonEncryptionSinfFromParent(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSchiFromParent(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;)Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    .locals 11

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_4

    .line 2346
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2347
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 2348
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    const v4, 0x74656e63

    if-ne v3, v4, :cond_3

    .line 2350
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 2351
    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result p1

    const/4 p2, 0x1

    .line 2352
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2356
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1

    .line 2358
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 2362
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 2363
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/16 p1, 0x10

    .line 2364
    new-array v7, p1, [B

    .line 2365
    invoke-virtual {p0, v7, v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    .line 2368
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 2369
    new-array v2, p1, [B

    .line 2370
    invoke-virtual {p0, v2, v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    :cond_2
    move-object v10, v2

    .line 2372
    new-instance p0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static parseStbl(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;)Landroidx/media3/extractor/mp4/TrackSampleTable;
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 413
    invoke-virtual {v0, v3}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 415
    new-instance v5, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;

    iget-object v6, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-direct {v5, v3, v6}, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;-><init>(Landroidx/media3/container/Mp4Box$LeafBox;Landroidx/media3/common/Format;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    .line 417
    invoke-virtual {v0, v3}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 422
    new-instance v5, Landroidx/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;

    invoke-direct {v5, v3}, Landroidx/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;-><init>(Landroidx/media3/container/Mp4Box$LeafBox;)V

    .line 425
    :goto_0
    invoke-interface {v5}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->getSampleCount()I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 427
    new-instance v9, Landroidx/media3/extractor/mp4/TrackSampleTable;

    new-array v2, v6, [J

    new-array v3, v6, [I

    new-array v5, v6, [J

    new-array v6, v6, [I

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 437
    :cond_1
    iget v7, v1, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    if-ne v7, v8, :cond_2

    iget-wide v11, v1, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    cmp-long v7, v11, v9

    if-lez v7, :cond_2

    int-to-float v7, v3

    .line 438
    iget-wide v11, v1, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    long-to-float v11, v11

    const v12, 0x49742400    # 1000000.0f

    div-float/2addr v11, v12

    div-float/2addr v7, v11

    .line 439
    iget-object v11, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-virtual {v11}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v7

    .line 440
    invoke-virtual {v1, v7}, Landroidx/media3/extractor/mp4/Track;->copyWithFormat(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;

    move-result-object v1

    :cond_2
    move-object v12, v1

    const v1, 0x7374636f

    .line 445
    invoke-virtual {v0, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v1

    const/4 v7, 0x1

    if-nez v1, :cond_3

    const v1, 0x636f3634

    .line 448
    invoke-virtual {v0, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/Mp4Box$LeafBox;

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    .line 450
    :goto_1
    iget-object v1, v1, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const v13, 0x73747363

    .line 452
    invoke-virtual {v0, v13}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v13

    invoke-static {v13}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v13, v13, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const v14, 0x73747473

    .line 454
    invoke-virtual {v0, v14}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v14

    invoke-static {v14}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v14, v14, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const v15, 0x73747373

    .line 456
    invoke-virtual {v0, v15}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 457
    iget-object v15, v15, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    const v4, 0x63747473

    .line 459
    invoke-virtual {v0, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 460
    iget-object v0, v0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 463
    :goto_3
    new-instance v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;

    invoke-direct {v4, v13, v1, v11}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;-><init>(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Z)V

    const/16 v1, 0xc

    .line 466
    invoke-virtual {v14, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 467
    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    sub-int/2addr v11, v7

    .line 468
    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    .line 469
    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    if-eqz v0, :cond_6

    .line 476
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 477
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    :goto_4
    const/4 v6, -0x1

    if-eqz v15, :cond_8

    .line 483
    invoke-virtual {v15, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 484
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    if-lez v1, :cond_7

    .line 486
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    :cond_7
    const/4 v15, 0x0

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    const/16 v16, -0x1

    .line 494
    :goto_6
    invoke-interface {v5}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->getFixedSampleSize()I

    move-result v8

    .line 495
    iget-object v7, v12, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v7, v7, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eq v8, v6, :cond_a

    .line 496
    const-string v6, "audio/raw"

    .line 498
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "audio/g711-mlaw"

    .line 499
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "audio/g711-alaw"

    .line 500
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    if-nez v11, :cond_a

    if-nez v10, :cond_a

    if-nez v1, :cond_a

    const/4 v6, 0x1

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_c

    .line 514
    iget v0, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->length:I

    new-array v0, v0, [J

    .line 515
    iget v1, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->length:I

    new-array v1, v1, [I

    .line 516
    :goto_8
    invoke-virtual {v4}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->moveNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 517
    iget v5, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    iget-wide v6, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->offset:J

    aput-wide v6, v0, v5

    .line 518
    iget v5, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    iget v6, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->numSamples:I

    aput v6, v1, v5

    goto :goto_8

    :cond_b
    int-to-long v4, v9

    .line 521
    invoke-static {v8, v0, v1, v4, v5}, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v0

    .line 523
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 524
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 525
    iget v5, v0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 526
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 527
    iget-object v7, v0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 528
    iget-wide v8, v0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    move-object v13, v1

    move-object v14, v4

    move v15, v5

    move-object v2, v6

    move-object v10, v7

    move-wide v0, v8

    goto/16 :goto_14

    .line 530
    :cond_c
    new-array v6, v3, [J

    .line 531
    new-array v7, v3, [I

    .line 532
    new-array v8, v3, [J

    move/from16 p1, v1

    .line 533
    new-array v1, v3, [I

    move/from16 v29, v11

    move-object/from16 v25, v12

    move v11, v13

    move-object/from16 v28, v14

    move/from16 v2, v16

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v38, v9

    move/from16 v9, p1

    move/from16 p1, v10

    move/from16 v10, v38

    .line 537
    :goto_9
    const-string v13, "BoxParsers"

    if-ge v12, v3, :cond_15

    move-wide/from16 v30, v23

    move/from16 v23, v16

    const/16 v16, 0x1

    :goto_a
    if-nez v23, :cond_d

    .line 540
    invoke-virtual {v4}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->moveNext()Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v24, v10

    move/from16 v32, v11

    .line 541
    iget-wide v10, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->offset:J

    move/from16 v33, v3

    .line 542
    iget v3, v4, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->numSamples:I

    move/from16 v23, v3

    move-wide/from16 v30, v10

    move/from16 v10, v24

    move/from16 v11, v32

    move/from16 v3, v33

    goto :goto_a

    :cond_d
    move/from16 v33, v3

    move/from16 v24, v10

    move/from16 v32, v11

    if-nez v16, :cond_e

    .line 545
    const-string v2, "Unexpected end of chunk data"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-static {v6, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    .line 548
    invoke-static {v7, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 549
    invoke-static {v8, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    .line 550
    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move v3, v12

    move/from16 v2, v23

    goto/16 :goto_e

    :cond_e
    move/from16 v11, p1

    if-eqz v0, :cond_10

    :goto_b
    if-nez v27, :cond_f

    if-lez v11, :cond_f

    .line 557
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v27

    .line 563
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v26

    add-int/lit8 v11, v11, -0x1

    goto :goto_b

    :cond_f
    add-int/lit8 v27, v27, -0x1

    :cond_10
    move/from16 v3, v26

    .line 569
    aput-wide v30, v6, v12

    .line 570
    invoke-interface {v5}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->readNextSampleSize()I

    move-result v10

    aput v10, v7, v12

    move-object/from16 v34, v4

    if-le v10, v14, :cond_11

    move v14, v10

    :cond_11
    move-object v10, v5

    int-to-long v4, v3

    add-long v4, v21, v4

    .line 574
    aput-wide v4, v8, v12

    if-nez v15, :cond_12

    const/4 v4, 0x1

    goto :goto_c

    :cond_12
    const/4 v4, 0x0

    .line 577
    :goto_c
    aput v4, v1, v12

    if-ne v12, v2, :cond_13

    const/4 v4, 0x1

    .line 579
    aput v4, v1, v12

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_13

    .line 582
    invoke-static {v15}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    sub-int/2addr v2, v4

    :cond_13
    move-object v5, v1

    move/from16 p1, v2

    move/from16 v4, v24

    int-to-long v1, v4

    add-long v21, v21, v1

    add-int/lit8 v1, v32, -0x1

    if-nez v1, :cond_14

    if-lez v29, :cond_14

    .line 590
    invoke-virtual/range {v28 .. v28}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 597
    invoke-virtual/range {v28 .. v28}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    add-int/lit8 v29, v29, -0x1

    goto :goto_d

    :cond_14
    move v2, v4

    .line 601
    :goto_d
    aget v4, v7, v12

    move/from16 v16, v1

    move v13, v2

    int-to-long v1, v4

    add-long v1, v30, v1

    add-int/lit8 v4, v23, -0x1

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v23, v1

    move/from16 v26, v3

    move-object v1, v5

    move-object v5, v10

    move v10, v13

    move/from16 v3, v33

    move/from16 v2, p1

    move/from16 p1, v11

    move/from16 v11, v16

    move/from16 v16, v4

    move-object/from16 v4, v34

    goto/16 :goto_9

    :cond_15
    move-object v5, v1

    move/from16 v33, v3

    move/from16 v32, v11

    move/from16 v2, v16

    :goto_e
    move/from16 v4, v26

    int-to-long v4, v4

    add-long v4, v21, v4

    if-eqz v0, :cond_17

    move/from16 v11, p1

    :goto_f
    if-lez v11, :cond_17

    .line 611
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    if-eqz v10, :cond_16

    const/4 v0, 0x0

    goto :goto_10

    .line 615
    :cond_16
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    add-int/lit8 v11, v11, -0x1

    goto :goto_f

    :cond_17
    const/4 v0, 0x1

    :goto_10
    if-nez v9, :cond_19

    if-nez v32, :cond_19

    if-nez v2, :cond_19

    if-nez v29, :cond_19

    move/from16 v10, v27

    if-nez v10, :cond_1a

    if-nez v0, :cond_18

    goto :goto_11

    :cond_18
    move-object/from16 v12, v25

    goto :goto_13

    :cond_19
    move/from16 v10, v27

    .line 625
    :cond_1a
    :goto_11
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Inconsistent stbl box for track "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v12, v25

    iget v15, v12, Landroidx/media3/extractor/mp4/Track;->id:I

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": remainingSynchronizationSamples "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v32

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remainingSamplesInChunk "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingTimestampDeltaChanges "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v29

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1b

    .line 639
    const-string v0, ", ctts invalid"

    goto :goto_12

    :cond_1b
    const-string v0, ""

    :goto_12
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-static {v13, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    move-object v10, v1

    move-wide v0, v4

    move-object v13, v6

    move-object v2, v8

    move v15, v14

    move-object v14, v7

    :goto_14
    const-wide/32 v6, 0xf4240

    .line 642
    iget-wide v8, v12, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide v4, v0

    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    .line 644
    iget-object v6, v12, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const-wide/32 v7, 0xf4240

    if-nez v6, :cond_1c

    .line 645
    iget-wide v0, v12, Landroidx/media3/extractor/mp4/Track;->timescale:J

    invoke-static {v2, v7, v8, v0, v1}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 646
    new-instance v0, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object v11, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v10

    move-wide/from16 v18, v4

    invoke-direct/range {v11 .. v19}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    .line 657
    :cond_1c
    iget-object v4, v12, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    iget v4, v12, Landroidx/media3/extractor/mp4/Track;->type:I

    if-ne v4, v5, :cond_20

    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_20

    .line 660
    iget-object v4, v12, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    const/4 v5, 0x0

    aget-wide v21, v4, v5

    .line 661
    iget-object v4, v12, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v23, v4, v5

    iget-wide v4, v12, Landroidx/media3/extractor/mp4/Track;->timescale:J

    iget-wide v7, v12, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v25, v4

    move-wide/from16 v27, v7

    .line 663
    invoke-static/range {v23 .. v28}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    add-long v23, v21, v4

    move-object v4, v2

    move-wide v5, v0

    move-object/from16 p1, v14

    move/from16 v16, v15

    const-wide/32 v14, 0xf4240

    move-wide/from16 v7, v21

    move-object v11, v10

    move-wide/from16 v9, v23

    .line 665
    invoke-static/range {v4 .. v10}, Landroidx/media3/extractor/mp4/BoxParser;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v4

    if-eqz v4, :cond_1e

    sub-long v5, v0, v23

    const/4 v4, 0x0

    .line 667
    aget-wide v7, v2, v4

    sub-long v23, v21, v7

    iget-object v4, v12, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v4, v4, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v7, v4

    iget-wide v9, v12, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v25, v7

    move-wide/from16 v27, v9

    .line 668
    invoke-static/range {v23 .. v28}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    .line 670
    iget-object v4, v12, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v4, v4, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v7, v4

    iget-wide v14, v12, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move/from16 v21, v3

    move-wide v3, v9

    move-wide v9, v14

    .line 671
    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-nez v9, :cond_1d

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1f

    :cond_1d
    const-wide/32 v7, 0x7fffffff

    cmp-long v9, v3, v7

    if-gtz v9, :cond_1f

    cmp-long v9, v5, v7

    if-gtz v9, :cond_1f

    long-to-int v0, v3

    move-object/from16 v1, p2

    .line 675
    iput v0, v1, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v0, v5

    .line 676
    iput v0, v1, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 677
    iget-wide v0, v12, Landroidx/media3/extractor/mp4/Track;->timescale:J

    const-wide/32 v3, 0xf4240

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 678
    iget-object v0, v12, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v3, v0, v1

    const-wide/32 v5, 0xf4240

    iget-wide v7, v12, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 679
    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v18

    .line 681
    new-instance v0, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object v7, v11

    move-object v11, v0

    move-object/from16 v14, p1

    move/from16 v15, v16

    move-object/from16 v16, v2

    move-object/from16 v17, v7

    invoke-direct/range {v11 .. v19}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    :cond_1e
    move/from16 v21, v3

    :cond_1f
    move-object v7, v11

    goto :goto_15

    :cond_20
    move/from16 v21, v3

    move-object v7, v10

    move-object/from16 p1, v14

    move/from16 v16, v15

    .line 687
    :goto_15
    iget-object v3, v12, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    iget-object v3, v12, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v5, v8

    if-nez v3, :cond_22

    .line 691
    iget-object v3, v12, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v5, v3, v4

    const/4 v3, 0x0

    .line 692
    :goto_16
    array-length v4, v2

    if-ge v3, v4, :cond_21

    .line 693
    aget-wide v8, v2, v3

    sub-long v17, v8, v5

    const-wide/32 v19, 0xf4240

    iget-wide v8, v12, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v21, v8

    .line 694
    invoke-static/range {v17 .. v22}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    aput-wide v8, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_21
    sub-long v17, v0, v5

    const-wide/32 v19, 0xf4240

    .line 697
    iget-wide v0, v12, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v21, v0

    .line 698
    invoke-static/range {v17 .. v22}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v18

    .line 699
    new-instance v0, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object v11, v0

    move-object/from16 v14, p1

    move/from16 v15, v16

    move-object/from16 v16, v2

    move-object/from16 v17, v7

    invoke-direct/range {v11 .. v19}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    .line 707
    :cond_22
    iget v0, v12, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    const/4 v4, 0x1

    goto :goto_17

    :cond_23
    const/4 v4, 0x0

    .line 713
    :goto_17
    iget-object v0, v12, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    new-array v0, v0, [I

    .line 714
    iget-object v1, v12, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v1

    new-array v1, v1, [I

    .line 715
    iget-object v3, v12, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 716
    :goto_18
    iget-object v10, v12, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v10, v10

    if-ge v5, v10, :cond_29

    .line 717
    aget-wide v10, v3, v5

    const-wide/16 v14, -0x1

    cmp-long v22, v10, v14

    if-eqz v22, :cond_28

    .line 719
    iget-object v14, v12, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v22, v14, v5

    iget-wide v14, v12, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move/from16 p2, v8

    move/from16 v28, v9

    iget-wide v8, v12, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v24, v14

    move-wide/from16 v26, v8

    .line 720
    invoke-static/range {v22 .. v27}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    const/4 v14, 0x1

    .line 733
    invoke-static {v2, v10, v11, v14, v14}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v15

    aput v15, v0, v5

    add-long/2addr v10, v8

    const/4 v8, 0x0

    .line 741
    invoke-static {v2, v10, v11, v4, v8}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    move-result v9

    aput v9, v1, v5

    .line 747
    aget v9, v0, v5

    .line 748
    :goto_19
    aget v15, v0, v5

    if-ltz v15, :cond_24

    aget v19, v7, v15

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_24

    add-int/lit8 v15, v15, -0x1

    .line 749
    aput v15, v0, v5

    const/4 v14, 0x1

    goto :goto_19

    :cond_24
    if-gez v15, :cond_25

    .line 753
    aput v9, v0, v5

    .line 754
    :goto_1a
    aget v9, v0, v5

    aget v14, v1, v5

    if-ge v9, v14, :cond_25

    aget v14, v7, v9

    const/4 v15, 0x1

    and-int/2addr v14, v15

    if-nez v14, :cond_25

    add-int/lit8 v9, v9, 0x1

    .line 756
    aput v9, v0, v5

    goto :goto_1a

    .line 760
    :cond_25
    iget v9, v12, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v14, 0x2

    if-ne v9, v14, :cond_26

    aget v9, v0, v5

    aget v15, v1, v5

    if-eq v9, v15, :cond_26

    .line 765
    :goto_1b
    aget v9, v1, v5

    array-length v15, v2

    const/16 v19, 0x1

    add-int/lit8 v15, v15, -0x1

    if-ge v9, v15, :cond_26

    add-int/lit8 v15, v9, 0x1

    aget-wide v19, v2, v15

    cmp-long v15, v19, v10

    if-gtz v15, :cond_26

    add-int/lit8 v9, v9, 0x1

    .line 767
    aput v9, v1, v5

    goto :goto_1b

    .line 770
    :cond_26
    aget v9, v1, v5

    aget v10, v0, v5

    sub-int v11, v9, v10

    add-int v11, p2, v11

    move/from16 v15, v28

    if-eq v15, v10, :cond_27

    const/4 v10, 0x1

    goto :goto_1c

    :cond_27
    const/4 v10, 0x0

    :goto_1c
    or-int/2addr v6, v10

    goto :goto_1d

    :cond_28
    move/from16 p2, v8

    move v15, v9

    const/4 v8, 0x0

    const/4 v14, 0x2

    move/from16 v11, p2

    :goto_1d
    add-int/lit8 v5, v5, 0x1

    move v8, v11

    goto/16 :goto_18

    :cond_29
    move v11, v8

    move/from16 v5, v21

    const/4 v8, 0x0

    if-eq v11, v5, :cond_2a

    const/4 v4, 0x1

    goto :goto_1e

    :cond_2a
    const/4 v4, 0x0

    :goto_1e
    or-int v3, v6, v4

    if-eqz v3, :cond_2b

    .line 778
    new-array v4, v11, [J

    goto :goto_1f

    :cond_2b
    move-object v4, v13

    :goto_1f
    if-eqz v3, :cond_2c

    .line 779
    new-array v5, v11, [I

    goto :goto_20

    :cond_2c
    move-object/from16 v5, p1

    :goto_20
    if-eqz v3, :cond_2d

    const/4 v15, 0x0

    goto :goto_21

    :cond_2d
    move/from16 v15, v16

    :goto_21
    if-eqz v3, :cond_2e

    .line 781
    new-array v10, v11, [I

    goto :goto_22

    :cond_2e
    move-object v10, v7

    .line 782
    :goto_22
    new-array v6, v11, [J

    move/from16 v16, v15

    const/16 p2, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    .line 786
    :goto_23
    iget-object v9, v12, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v9, v9

    if-ge v8, v9, :cond_33

    .line 787
    iget-object v9, v12, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v25, v9, v8

    .line 788
    aget v9, v0, v8

    move-object/from16 v27, v0

    .line 789
    aget v0, v1, v8

    move-object/from16 v28, v1

    if-eqz v3, :cond_2f

    sub-int v1, v0, v9

    .line 792
    invoke-static {v13, v9, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v29, v13

    move-object/from16 v13, p1

    .line 793
    invoke-static {v13, v9, v5, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    invoke-static {v7, v9, v10, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_24

    :cond_2f
    move-object/from16 v29, v13

    move-object/from16 v13, p1

    :goto_24
    move/from16 p1, p2

    move/from16 v1, v16

    :goto_25
    if-ge v9, v0, :cond_32

    const-wide/32 v21, 0xf4240

    move-object/from16 v30, v7

    move/from16 v31, v8

    .line 797
    iget-wide v7, v12, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v19, v14

    move-wide/from16 v23, v7

    invoke-static/range {v19 .. v24}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 798
    aget-wide v19, v2, v9

    sub-long v32, v19, v25

    const-wide/32 v34, 0xf4240

    move-wide/from16 v19, v14

    iget-wide v14, v12, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v36, v14

    .line 799
    invoke-static/range {v32 .. v37}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v14

    const-wide/16 v17, 0x0

    cmp-long v16, v14, v17

    if-gez v16, :cond_30

    const/16 v16, 0x1

    goto :goto_26

    :cond_30
    move/from16 v16, p1

    :goto_26
    add-long/2addr v7, v14

    .line 804
    aput-wide v7, v6, v11

    if-eqz v3, :cond_31

    .line 805
    aget v7, v5, v11

    if-le v7, v1, :cond_31

    .line 806
    aget v1, v13, v9

    :cond_31
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 p1, v16

    move-wide/from16 v14, v19

    move-object/from16 v7, v30

    move/from16 v8, v31

    goto :goto_25

    :cond_32
    move-object/from16 v30, v7

    move/from16 v31, v8

    move-wide/from16 v19, v14

    const-wide/16 v17, 0x0

    .line 810
    iget-object v0, v12, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v7, v0, v31

    add-long v14, v19, v7

    add-int/lit8 v8, v31, 0x1

    move/from16 p2, p1

    move/from16 v16, v1

    move-object/from16 p1, v13

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v13, v29

    move-object/from16 v7, v30

    goto/16 :goto_23

    :cond_33
    move-wide/from16 v19, v14

    const-wide/32 v21, 0xf4240

    .line 812
    iget-wide v0, v12, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v23, v0

    .line 813
    invoke-static/range {v19 .. v24}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v26

    if-eqz p2, :cond_34

    .line 815
    iget-object v0, v12, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setHasPrerollSamples(Z)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 816
    invoke-virtual {v12, v0}, Landroidx/media3/extractor/mp4/Track;->copyWithFormat(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;

    move-result-object v12

    :cond_34
    move-object/from16 v20, v12

    .line 818
    new-instance v0, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v19, v0

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v23, v16

    move-object/from16 v24, v6

    move-object/from16 v25, v10

    invoke-direct/range {v19 .. v27}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    .line 419
    :cond_35
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private static parseStereoViewBox(Landroidx/media3/common/util/ParsableByteArray;II)Landroidx/media3/extractor/mp4/BoxParser$EyesData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    .line 2250
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2251
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_5

    .line 2253
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2254
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 2255
    :goto_1
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2256
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x73747269

    if-ne v4, v5, :cond_4

    const/4 p1, 0x4

    .line 2258
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2259
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    .line 2260
    new-instance p1, Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    new-instance p2, Landroidx/media3/extractor/mp4/BoxParser$StriData;

    and-int/lit8 v0, p0, 0x1

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    and-int/lit8 v1, p0, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    const/16 v4, 0x8

    and-int/2addr p0, v4

    if-ne p0, v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-direct {p2, v0, v1, v2}, Landroidx/media3/extractor/mp4/BoxParser$StriData;-><init>(ZZZ)V

    invoke-direct {p1, p2}, Landroidx/media3/extractor/mp4/BoxParser$EyesData;-><init>(Landroidx/media3/extractor/mp4/BoxParser$StriData;)V

    return-object p1

    :cond_4
    add-int/2addr v0, v1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseStsd(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    const/16 v0, 0xc

    .line 1028
    invoke-virtual {v10, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1029
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 1030
    new-instance v13, Landroidx/media3/extractor/mp4/BoxParser$StsdData;

    invoke-direct {v13, v12}, Landroidx/media3/extractor/mp4/BoxParser$StsdData;-><init>(I)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v12, :cond_9

    .line 1032
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 1033
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v16

    if-lez v16, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1034
    :goto_1
    const-string v1, "childAtomSize must be positive"

    invoke-static {v0, v1}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1035
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v0, 0x61766331

    if-eq v1, v0, :cond_8

    const v0, 0x61766333

    if-eq v1, v0, :cond_8

    const v0, 0x656e6376

    if-eq v1, v0, :cond_8

    const v0, 0x6d317620

    if-eq v1, v0, :cond_8

    const v0, 0x6d703476

    if-eq v1, v0, :cond_8

    const v0, 0x68766331

    if-eq v1, v0, :cond_8

    const v0, 0x68657631

    if-eq v1, v0, :cond_8

    const v0, 0x73323633

    if-eq v1, v0, :cond_8

    const v0, 0x48323633

    if-eq v1, v0, :cond_8

    const v0, 0x68323633

    if-eq v1, v0, :cond_8

    const v0, 0x76703038

    if-eq v1, v0, :cond_8

    const v0, 0x76703039

    if-eq v1, v0, :cond_8

    const v0, 0x61763031

    if-eq v1, v0, :cond_8

    const v0, 0x64766176

    if-eq v1, v0, :cond_8

    const v0, 0x64766131

    if-eq v1, v0, :cond_8

    const v0, 0x64766865

    if-eq v1, v0, :cond_8

    const v0, 0x64766831

    if-eq v1, v0, :cond_8

    const v0, 0x61707631

    if-ne v1, v0, :cond_1

    goto/16 :goto_5

    :cond_1
    const v0, 0x6d703461

    if-eq v1, v0, :cond_7

    const v0, 0x656e6361

    if-eq v1, v0, :cond_7

    const v0, 0x61632d33

    if-eq v1, v0, :cond_7

    const v0, 0x65632d33

    if-eq v1, v0, :cond_7

    const v0, 0x61632d34

    if-eq v1, v0, :cond_7

    const v0, 0x6d6c7061

    if-eq v1, v0, :cond_7

    const v0, 0x64747363

    if-eq v1, v0, :cond_7

    const v0, 0x64747365

    if-eq v1, v0, :cond_7

    const v0, 0x64747368

    if-eq v1, v0, :cond_7

    const v0, 0x6474736c

    if-eq v1, v0, :cond_7

    const v0, 0x64747378

    if-eq v1, v0, :cond_7

    const v0, 0x73616d72

    if-eq v1, v0, :cond_7

    const v0, 0x73617762

    if-eq v1, v0, :cond_7

    const v0, 0x6c70636d

    if-eq v1, v0, :cond_7

    const v0, 0x736f7774

    if-eq v1, v0, :cond_7

    const v0, 0x74776f73

    if-eq v1, v0, :cond_7

    const v0, 0x2e6d7032

    if-eq v1, v0, :cond_7

    const v0, 0x2e6d7033

    if-eq v1, v0, :cond_7

    const v0, 0x6d686131

    if-eq v1, v0, :cond_7

    const v0, 0x6d686d31

    if-eq v1, v0, :cond_7

    const v0, 0x616c6163

    if-eq v1, v0, :cond_7

    const v0, 0x616c6177

    if-eq v1, v0, :cond_7

    const v0, 0x756c6177

    if-eq v1, v0, :cond_7

    const v0, 0x4f707573

    if-eq v1, v0, :cond_7

    const v0, 0x664c6143

    if-eq v1, v0, :cond_7

    const v0, 0x69616d66

    if-ne v1, v0, :cond_2

    goto :goto_4

    :cond_2
    const v0, 0x54544d4c

    if-eq v1, v0, :cond_5

    const v0, 0x74783367

    if-eq v1, v0, :cond_5

    const v0, 0x77767474

    if-eq v1, v0, :cond_5

    const v0, 0x73747070

    if-eq v1, v0, :cond_5

    const v0, 0x63363038

    if-ne v1, v0, :cond_3

    goto :goto_2

    :cond_3
    const v0, 0x6d657474

    if-ne v1, v0, :cond_4

    .line 1109
    invoke-static {v10, v1, v9, v11, v13}, Landroidx/media3/extractor/mp4/BoxParser;->parseMetaDataSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIILandroidx/media3/extractor/mp4/BoxParser$StsdData;)V

    goto :goto_3

    :cond_4
    const v0, 0x63616d6d

    if-ne v1, v0, :cond_6

    .line 1111
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1113
    invoke-virtual {v0, v11}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "application/x-camera-motion"

    .line 1114
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1115
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, v13, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    goto :goto_3

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    move v2, v9

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v13

    .line 1106
    invoke-static/range {v0 .. v6}, Landroidx/media3/extractor/mp4/BoxParser;->parseTextSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;Landroidx/media3/extractor/mp4/BoxParser$StsdData;)V

    :cond_6
    :goto_3
    move/from16 v17, v9

    goto :goto_6

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    move v2, v9

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v13

    move/from16 v17, v9

    move v9, v15

    .line 1090
    invoke-static/range {v0 .. v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseAudioSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ZLandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v17, v9

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v13

    move v8, v15

    .line 1054
    invoke-static/range {v0 .. v8}, Landroidx/media3/extractor/mp4/BoxParser;->parseVideoSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIIILandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V

    :goto_6
    add-int v9, v17, v16

    .line 1117
    invoke-virtual {v10, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v13
.end method

.method private static parseTextSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;Landroidx/media3/extractor/mp4/BoxParser$StsdData;)V
    .locals 4

    add-int/lit8 p2, p2, 0x10

    .line 1130
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const p2, 0x54544d4c

    .line 1137
    const-string v0, "application/ttml+xml"

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x74783367

    if-ne p1, p2, :cond_1

    add-int/lit8 p3, p3, -0x10

    .line 1142
    new-array p1, p3, [B

    const/4 p2, 0x0

    .line 1143
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1144
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1145
    const-string v0, "application/x-quicktime-tx3g"

    goto :goto_0

    :cond_1
    const p0, 0x77767474

    if-ne p1, p0, :cond_2

    .line 1146
    const-string v0, "application/x-mp4-vtt"

    goto :goto_0

    :cond_2
    const p0, 0x73747070

    if-ne p1, p0, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_3
    const p0, 0x63363038

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    .line 1153
    iput p0, p6, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->requiredSampleTransformation:I

    const-string v0, "application/x-mp4-cea-608"

    .line 1159
    :goto_0
    new-instance p0, Landroidx/media3/common/Format$Builder;

    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1161
    invoke-virtual {p0, p4}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 1162
    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 1163
    invoke-virtual {p0, p5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 1164
    invoke-virtual {p0, v2, v3}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 1165
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 1166
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    iput-object p0, p6, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    return-void

    .line 1156
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static parseTkhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$TkhdData;
    .locals 12

    const/16 v0, 0x8

    .line 886
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 887
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 888
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    .line 890
    :goto_0
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 891
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    const/4 v4, 0x4

    .line 893
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 895
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v7, v0, :cond_5

    .line 898
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v10

    add-int v11, v5, v7

    aget-byte v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    if-nez v1, :cond_2

    .line 908
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v5, v0, v10

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    move-wide v8, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 905
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 916
    :goto_3
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 917
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 918
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 919
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 920
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 921
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    const/high16 v4, -0x10000

    const/high16 v5, 0x10000

    if-nez v0, :cond_6

    if-ne v1, v5, :cond_6

    if-ne v2, v4, :cond_6

    if-nez p0, :cond_6

    const/16 v6, 0x5a

    goto :goto_4

    :cond_6
    if-nez v0, :cond_7

    if-ne v1, v4, :cond_7

    if-ne v2, v5, :cond_7

    if-nez p0, :cond_7

    const/16 v6, 0x10e

    goto :goto_4

    :cond_7
    if-ne v0, v4, :cond_8

    if-nez v1, :cond_8

    if-nez v2, :cond_8

    if-ne p0, v4, :cond_8

    const/16 v6, 0xb4

    .line 936
    :cond_8
    :goto_4
    new-instance p0, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;

    invoke-direct {p0, v3, v8, v9, v6}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;-><init>(IJI)V

    return-object p0
.end method

.method public static parseTrak(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/container/Mp4Box$LeafBox;JLandroidx/media3/common/DrmInitData;ZZ)Landroidx/media3/extractor/mp4/Track;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x6d646961

    .line 333
    invoke-virtual {v0, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/Mp4Box$ContainerBox;

    const v2, 0x68646c72    # 4.3148E24f

    .line 336
    invoke-virtual {v1, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v2, v2, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseHdlr(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v2

    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->getTrackTypeForHdlr(I)I

    move-result v5

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v5, v2, :cond_0

    return-object v3

    :cond_0
    const v2, 0x746b6864

    .line 341
    invoke-virtual {v0, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v2, v2, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseTkhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$TkhdData;

    move-result-object v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    .line 343
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$000(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)J

    move-result-wide v8

    move-object/from16 v4, p1

    move-wide v10, v8

    goto :goto_0

    :cond_1
    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    .line 345
    :goto_0
    iget-object v4, v4, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v4}, Landroidx/media3/extractor/mp4/BoxParser;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    move-result-object v4

    iget-wide v8, v4, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    cmp-long v4, v10, v6

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const-wide/32 v12, 0xf4240

    move-wide v14, v8

    .line 350
    invoke-static/range {v10 .. v15}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    :goto_1
    move-wide v10, v6

    const v4, 0x6d696e66

    .line 354
    invoke-virtual {v1, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/Mp4Box$ContainerBox;

    const v6, 0x7374626c

    .line 355
    invoke-virtual {v4, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v4

    .line 353
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/Mp4Box$ContainerBox;

    const v6, 0x6d646864

    .line 357
    invoke-virtual {v1, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v1, v1, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseMdhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$MdhdData;

    move-result-object v1

    const v6, 0x73747364

    .line 358
    invoke-virtual {v4, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 363
    iget-object v12, v4, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 366
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$100(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v13

    .line 367
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$200(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v14

    .line 368
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->access$300(Landroidx/media3/extractor/mp4/BoxParser$MdhdData;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, p4

    move/from16 v17, p6

    .line 364
    invoke-static/range {v12 .. v17}, Landroidx/media3/extractor/mp4/BoxParser;->parseStsd(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Landroidx/media3/extractor/mp4/BoxParser$StsdData;

    move-result-object v15

    if-nez p5, :cond_3

    const v4, 0x65647473

    .line 374
    invoke-virtual {v0, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 376
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseEdts(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 378
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [J

    .line 379
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v19, v0

    move-object/from16 v18, v4

    goto :goto_2

    :cond_3
    move-object/from16 v18, v3

    move-object/from16 v19, v18

    .line 383
    :goto_2
    iget-object v0, v15, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    if-nez v0, :cond_4

    goto :goto_3

    .line 385
    :cond_4
    new-instance v0, Landroidx/media3/extractor/mp4/Track;

    move-object v3, v0

    .line 386
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->access$100(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v4

    .line 388
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->access$400(Landroidx/media3/extractor/mp4/BoxParser$MdhdData;)J

    move-result-wide v6

    .line 391
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->access$500(Landroidx/media3/extractor/mp4/BoxParser$MdhdData;)J

    move-result-wide v12

    iget-object v14, v15, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    iget v1, v15, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->requiredSampleTransformation:I

    move-object v2, v15

    move v15, v1

    iget-object v1, v2, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->trackEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v16, v1

    iget v1, v2, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    move/from16 v17, v1

    invoke-direct/range {v3 .. v19}, Landroidx/media3/extractor/mp4/Track;-><init>(IIJJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V

    :goto_3
    return-object v3

    .line 360
    :cond_5
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static parseTraks(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/container/Mp4Box$ContainerBox;",
            "Landroidx/media3/extractor/GaplessInfoHolder;",
            "J",
            "Landroidx/media3/common/DrmInitData;",
            "ZZ",
            "Lcom/google/common/base/Function<",
            "Landroidx/media3/extractor/mp4/Track;",
            "Landroidx/media3/extractor/mp4/Track;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object v0, p0

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 147
    :goto_0
    iget-object v3, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 148
    iget-object v3, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 149
    iget v4, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->type:I

    const v5, 0x7472616b

    if-eq v4, v5, :cond_0

    move-object v6, p1

    move-object/from16 v5, p7

    goto :goto_1

    :cond_0
    const v4, 0x6d766864

    .line 157
    invoke-virtual {p0, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/media3/container/Mp4Box$LeafBox;

    move-object v4, v3

    move-wide v6, p2

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 155
    invoke-static/range {v4 .. v10}, Landroidx/media3/extractor/mp4/BoxParser;->parseTrak(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/container/Mp4Box$LeafBox;JLandroidx/media3/common/DrmInitData;ZZ)Landroidx/media3/extractor/mp4/Track;

    move-result-object v4

    move-object/from16 v5, p7

    .line 154
    invoke-interface {v5, v4}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/mp4/Track;

    if-nez v4, :cond_1

    move-object v6, p1

    goto :goto_1

    :cond_1
    const v6, 0x6d646961

    .line 168
    invoke-virtual {v3, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    const v6, 0x6d696e66

    .line 169
    invoke-virtual {v3, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v3

    .line 167
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    const v6, 0x7374626c

    .line 170
    invoke-virtual {v3, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v3

    .line 166
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    move-object v6, p1

    .line 171
    invoke-static {v4, v3, p1}, Landroidx/media3/extractor/mp4/BoxParser;->parseStbl(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;)Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-result-object v3

    .line 172
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static parseUdta(Landroidx/media3/container/Mp4Box$LeafBox;)Landroidx/media3/common/Metadata;
    .locals 6

    .line 184
    iget-object p0, p0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 185
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 186
    new-instance v1, Landroidx/media3/common/Metadata;

    const/4 v2, 0x0

    new-array v2, v2, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v1, v2}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 187
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lt v2, v0, :cond_3

    .line 188
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 189
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 190
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x6d657461

    if-ne v4, v5, :cond_0

    .line 192
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int v4, v2, v3

    .line 194
    invoke-static {p0, v4}, Landroidx/media3/extractor/mp4/BoxParser;->parseUdtaMeta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v1

    goto :goto_1

    :cond_0
    const v5, 0x736d7461

    if-ne v4, v5, :cond_1

    .line 196
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int v4, v2, v3

    .line 199
    invoke-static {p0, v4}, Landroidx/media3/extractor/mp4/SmtaAtomUtil;->parseSmta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    move-result-object v4

    .line 198
    invoke-virtual {v1, v4}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v1

    goto :goto_1

    :cond_1
    const v5, -0x56878686

    if-ne v4, v5, :cond_2

    .line 201
    invoke-static {p0}, Landroidx/media3/extractor/mp4/BoxParser;->parseXyz(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v1

    :cond_2
    :goto_1
    add-int/2addr v2, v3

    .line 203
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static parseUdtaMeta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;
    .locals 4

    const/16 v0, 0x8

    .line 830
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 831
    invoke-static {p0}, Landroidx/media3/extractor/mp4/BoxParser;->maybeSkipRemainingMetaBoxHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 832
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 833
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 834
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 835
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x696c7374

    if-ne v2, v3, :cond_0

    .line 837
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v0, v1

    .line 838
    invoke-static {p0, v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseIlst(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    .line 840
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static parseVideoExtendedUsageBox(Landroidx/media3/common/util/ParsableByteArray;II)Landroidx/media3/extractor/mp4/BoxParser$VexuData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    .line 2231
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2232
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    sub-int v3, v0, p1

    if-ge v3, p2, :cond_2

    .line 2235
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2236
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 2237
    :goto_1
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2238
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x65796573

    if-ne v4, v5, :cond_1

    .line 2240
    invoke-static {p0, v0, v3}, Landroidx/media3/extractor/mp4/BoxParser;->parseStereoViewBox(Landroidx/media3/common/util/ParsableByteArray;II)Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v2

    :cond_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_2

    .line 2244
    :cond_3
    new-instance v1, Landroidx/media3/extractor/mp4/BoxParser$VexuData;

    invoke-direct {v1, v2}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;-><init>(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)V

    :goto_2
    return-object v1
.end method

.method private static parseVideoSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIIILandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x10

    .line 1182
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/16 v5, 0x10

    .line 1184
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1185
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 1186
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const/16 v7, 0x32

    .line 1192
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1194
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v7

    const v8, 0x656e6376

    move/from16 v10, p1

    if-ne v10, v8, :cond_2

    .line 1198
    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1200
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 1204
    :cond_0
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v11, v11, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v3

    .line 1205
    :goto_0
    iget-object v11, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->trackEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v8, v11, p8

    .line 1207
    :cond_1
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :cond_2
    const v8, 0x6d317620

    .line 1215
    const-string v11, "video/3gpp"

    if-ne v10, v8, :cond_3

    .line 1216
    const-string v8, "video/mpeg"

    goto :goto_1

    :cond_3
    const v8, 0x48323633

    if-ne v10, v8, :cond_4

    move-object v8, v11

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v15, 0x8

    const/16 v13, 0x8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_2
    sub-int v12, v7, v1

    if-ge v12, v2, :cond_41

    .line 1238
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1239
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v12

    .line 1240
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    if-nez v9, :cond_5

    .line 1241
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v29

    move-object/from16 p8, v11

    sub-int v11, v29, v1

    if-ne v11, v2, :cond_6

    goto/16 :goto_24

    :cond_5
    move-object/from16 p8, v11

    :cond_6
    if-lez v9, :cond_7

    const/4 v11, 0x1

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    .line 1245
    :goto_3
    const-string v1, "childAtomSize must be positive"

    invoke-static {v11, v1}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1246
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v11, 0x61766343

    if-ne v1, v11, :cond_a

    if-nez v8, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    const/4 v8, 0x0

    .line 1248
    invoke-static {v1, v8}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 1250
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1251
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/AvcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v1

    .line 1252
    iget-object v8, v1, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    .line 1253
    iget v11, v1, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v11, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    if-nez v28, :cond_9

    .line 1255
    iget v14, v1, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    .line 1257
    :cond_9
    iget-object v11, v1, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    .line 1258
    iget v12, v1, Landroidx/media3/extractor/AvcConfig;->maxNumReorderFrames:I

    .line 1259
    iget v13, v1, Landroidx/media3/extractor/AvcConfig;->colorSpace:I

    .line 1260
    iget v15, v1, Landroidx/media3/extractor/AvcConfig;->colorRange:I

    .line 1261
    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->colorTransfer:I

    move/from16 v16, v2

    .line 1262
    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->bitdepthLuma:I

    .line 1263
    iget v1, v1, Landroidx/media3/extractor/AvcConfig;->bitdepthChroma:I

    .line 1264
    const-string v17, "video/avc"

    move-object/from16 v30, v3

    move/from16 v39, v6

    move/from16 v22, v10

    move/from16 v20, v12

    move/from16 v23, v15

    move/from16 v24, v16

    const/4 v6, 0x0

    move v15, v2

    move-object/from16 v16, v8

    move-object/from16 v8, v17

    const/4 v2, 0x0

    move-object/from16 v17, v11

    move v11, v13

    move v13, v1

    :goto_5
    const/4 v1, -0x1

    goto/16 :goto_23

    :cond_a
    const v2, 0x68766343

    const-string v11, "video/hevc"

    if-ne v1, v2, :cond_e

    if-nez v8, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x0

    .line 1265
    invoke-static {v1, v2}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 1267
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1268
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/HevcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v1

    .line 1269
    iget-object v2, v1, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 1270
    iget v8, v1, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    iput v8, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    if-nez v28, :cond_c

    .line 1272
    iget v14, v1, Landroidx/media3/extractor/HevcConfig;->pixelWidthHeightRatio:F

    .line 1274
    :cond_c
    iget v8, v1, Landroidx/media3/extractor/HevcConfig;->maxNumReorderPics:I

    .line 1275
    iget v12, v1, Landroidx/media3/extractor/HevcConfig;->maxSubLayers:I

    .line 1276
    iget-object v13, v1, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 1277
    iget v15, v1, Landroidx/media3/extractor/HevcConfig;->stereoMode:I

    move-object/from16 v16, v2

    const/4 v2, -0x1

    if-eq v15, v2, :cond_d

    .line 1279
    iget v2, v1, Landroidx/media3/extractor/HevcConfig;->stereoMode:I

    move/from16 v19, v2

    .line 1281
    :cond_d
    iget v2, v1, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    .line 1282
    iget v15, v1, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    move/from16 v17, v2

    .line 1283
    iget v2, v1, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    move/from16 v20, v2

    .line 1284
    iget v2, v1, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    move/from16 v21, v2

    .line 1285
    iget v2, v1, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    .line 1286
    iget-object v1, v1, Landroidx/media3/extractor/HevcConfig;->vpsData:Landroidx/media3/container/NalUnitUtil$H265VpsData;

    move-object/from16 v27, v1

    move-object/from16 v30, v3

    move/from16 v39, v6

    move/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v20

    move/from16 v15, v21

    const/4 v1, -0x1

    const/4 v6, 0x0

    move/from16 v20, v8

    move-object v8, v11

    move/from16 v21, v12

    move/from16 v11, v17

    move-object/from16 v17, v13

    move v13, v2

    const/4 v2, 0x0

    goto/16 :goto_23

    :cond_e
    const v2, 0x6c687643

    move-object/from16 v30, v3

    const/4 v3, 0x2

    if-ne v1, v2, :cond_1a

    .line 1290
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "lhvC must follow hvcC atom"

    .line 1289
    invoke-static {v1, v2}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    move-object/from16 v2, v27

    if-eqz v2, :cond_f

    .line 1291
    iget-object v1, v2, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    .line 1292
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-lt v1, v3, :cond_f

    const/4 v1, 0x1

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    :goto_7
    const-string v3, "must have at least two layers"

    .line 1291
    invoke-static {v1, v3}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 1294
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1295
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    invoke-static {v0, v1}, Landroidx/media3/extractor/HevcConfig;->parseLayered(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v1

    .line 1296
    iget v3, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    iget v8, v1, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    if-ne v3, v8, :cond_10

    const/4 v3, 0x1

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    :goto_8
    const-string v8, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v3, v8}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1302
    iget v3, v1, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    const/4 v8, -0x1

    if-eq v3, v8, :cond_12

    .line 1303
    iget v3, v1, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    move/from16 v11, v22

    if-ne v11, v3, :cond_11

    const/4 v3, 0x1

    goto :goto_9

    :cond_11
    const/4 v3, 0x0

    :goto_9
    const-string v12, "colorSpace must be the same for both views"

    invoke-static {v3, v12}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    goto :goto_a

    :cond_12
    move/from16 v11, v22

    .line 1306
    :goto_a
    iget v3, v1, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    if-eq v3, v8, :cond_14

    .line 1307
    iget v3, v1, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    move/from16 v12, v23

    if-ne v12, v3, :cond_13

    const/4 v3, 0x1

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    :goto_b
    const-string v8, "colorRange must be the same for both views"

    invoke-static {v3, v8}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    goto :goto_c

    :cond_14
    move/from16 v12, v23

    .line 1310
    :goto_c
    iget v3, v1, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    const/4 v8, -0x1

    if-eq v3, v8, :cond_16

    .line 1311
    iget v3, v1, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    move/from16 v8, v24

    move/from16 v17, v8

    if-ne v8, v3, :cond_15

    const/4 v3, 0x1

    goto :goto_d

    :cond_15
    const/4 v3, 0x0

    :goto_d
    const-string v8, "colorTransfer must be the same for both views"

    invoke-static {v3, v8}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    goto :goto_e

    :cond_16
    move/from16 v17, v24

    .line 1315
    :goto_e
    iget v3, v1, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    if-ne v15, v3, :cond_17

    const/4 v3, 0x1

    goto :goto_f

    :cond_17
    const/4 v3, 0x0

    :goto_f
    const-string v8, "bitdepthLuma must be the same for both views"

    invoke-static {v3, v8}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1318
    iget v3, v1, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    if-ne v13, v3, :cond_18

    const/4 v3, 0x1

    goto :goto_10

    :cond_18
    const/4 v3, 0x0

    :goto_10
    const-string v8, "bitdepthChroma must be the same for both views"

    invoke-static {v3, v8}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    move-object/from16 v3, v16

    if-eqz v3, :cond_19

    .line 1325
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v8

    .line 1326
    invoke-virtual {v8, v3}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    iget-object v8, v1, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 1327
    invoke-virtual {v3, v8}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 1328
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    goto :goto_11

    .line 1330
    :cond_19
    const-string v8, "initializationData must be already set from hvcC atom"

    move-object/from16 v16, v3

    const/4 v3, 0x0

    invoke-static {v3, v8}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1333
    :goto_11
    iget-object v1, v1, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 1334
    const-string v3, "video/mv-hevc"

    move-object/from16 v27, v2

    move-object v8, v3

    move/from16 v39, v6

    move/from16 v22, v10

    move/from16 v23, v12

    move/from16 v24, v17

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v17, v1

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v31, v16

    move/from16 v11, v22

    move/from16 v32, v23

    move/from16 v33, v24

    move-object/from16 v2, v27

    const v3, 0x76657875

    if-ne v1, v3, :cond_1f

    .line 1335
    invoke-static {v0, v12, v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseVideoExtendedUsageBox(Landroidx/media3/common/util/ParsableByteArray;II)Landroidx/media3/extractor/mp4/BoxParser$VexuData;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 1336
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->access$600(Landroidx/media3/extractor/mp4/BoxParser$VexuData;)Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v3

    if-eqz v3, :cond_1d

    if-eqz v2, :cond_1b

    .line 1337
    iget-object v3, v2, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v12, 0x2

    if-lt v3, v12, :cond_1b

    .line 1340
    invoke-virtual {v1}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->hasBothEyeViews()Z

    move-result v3

    const-string v12, "both eye views must be marked as available"

    .line 1339
    invoke-static {v3, v12}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1346
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->access$600(Landroidx/media3/extractor/mp4/BoxParser$VexuData;)Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->access$700(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)Landroidx/media3/extractor/mp4/BoxParser$StriData;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser$StriData;->access$800(Landroidx/media3/extractor/mp4/BoxParser$StriData;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const-string v3, "for MV-HEVC, eye_views_reversed must be set to false"

    .line 1345
    invoke-static {v1, v3}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    goto :goto_12

    :cond_1b
    move/from16 v3, v19

    const/4 v12, -0x1

    if-ne v3, v12, :cond_1e

    .line 1350
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->access$600(Landroidx/media3/extractor/mp4/BoxParser$VexuData;)Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->access$700(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)Landroidx/media3/extractor/mp4/BoxParser$StriData;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser$StriData;->access$800(Landroidx/media3/extractor/mp4/BoxParser$StriData;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x5

    const/16 v19, 0x5

    goto :goto_13

    :cond_1c
    const/4 v1, 0x4

    const/16 v19, 0x4

    goto :goto_13

    :cond_1d
    :goto_12
    move/from16 v3, v19

    :cond_1e
    move/from16 v19, v3

    :goto_13
    move-object/from16 v27, v2

    move/from16 v39, v6

    move/from16 v22, v10

    move-object/from16 v16, v31

    move/from16 v23, v32

    move/from16 v24, v33

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto/16 :goto_23

    :cond_1f
    move/from16 v3, v19

    move-object/from16 v19, v2

    const v2, 0x64766343

    if-eq v1, v2, :cond_3f

    const v2, 0x64767643

    if-ne v1, v2, :cond_20

    goto/16 :goto_20

    :cond_20
    const v2, 0x76706343

    if-ne v1, v2, :cond_26

    if-nez v8, :cond_21

    const/4 v1, 0x1

    goto :goto_14

    :cond_21
    const/4 v1, 0x0

    :goto_14
    const/4 v2, 0x0

    .line 1362
    invoke-static {v1, v2}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const v1, 0x76703038

    .line 1363
    const-string v2, "video/x-vnd.on2.vp9"

    if-ne v10, v1, :cond_22

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_15

    :cond_22
    move-object v1, v2

    :goto_15
    add-int/lit8 v12, v12, 0xc

    .line 1364
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1366
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    int-to-byte v8, v8

    .line 1367
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    int-to-byte v11, v11

    .line 1368
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    shr-int/lit8 v13, v12, 0x4

    shr-int/lit8 v15, v12, 0x1

    and-int/lit8 v15, v15, 0x7

    int-to-byte v15, v15

    .line 1372
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    int-to-byte v2, v13

    .line 1375
    invoke-static {v8, v11, v2, v15}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildVp9CodecPrivateInitializationData(BBBB)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object/from16 v31, v2

    :cond_23
    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    goto :goto_16

    :cond_24
    const/4 v2, 0x0

    .line 1379
    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 1380
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    .line 1381
    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v22

    if-eqz v2, :cond_25

    const/16 v23, 0x1

    goto :goto_17

    :cond_25
    const/16 v23, 0x2

    .line 1384
    :goto_17
    invoke-static {v11}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v24

    move-object v8, v1

    move/from16 v39, v6

    move v15, v13

    move-object/from16 v27, v19

    move/from16 v11, v22

    move-object/from16 v16, v31

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v19, v3

    move/from16 v22, v10

    goto/16 :goto_23

    :cond_26
    const v2, 0x61763143

    if-ne v1, v2, :cond_27

    add-int/lit8 v1, v9, -0x8

    .line 1389
    new-array v2, v1, [B

    const/4 v8, 0x0

    .line 1390
    invoke-virtual {v0, v2, v8, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1391
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    add-int/lit8 v12, v12, 0x8

    .line 1393
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1394
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/mp4/BoxParser;->parseAv1c(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/ColorInfo;

    move-result-object v1

    .line 1396
    iget v2, v1, Landroidx/media3/common/ColorInfo;->lumaBitdepth:I

    .line 1397
    iget v8, v1, Landroidx/media3/common/ColorInfo;->chromaBitdepth:I

    .line 1398
    iget v11, v1, Landroidx/media3/common/ColorInfo;->colorSpace:I

    .line 1399
    iget v12, v1, Landroidx/media3/common/ColorInfo;->colorRange:I

    .line 1400
    iget v1, v1, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    .line 1401
    const-string v13, "video/av01"

    move/from16 v24, v1

    move v15, v2

    move/from16 v39, v6

    move/from16 v22, v10

    move/from16 v23, v12

    move-object/from16 v27, v19

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v19, v3

    move-object/from16 v40, v13

    move v13, v8

    move-object/from16 v8, v40

    goto/16 :goto_23

    :cond_27
    const v2, 0x636c6c69

    if-ne v1, v2, :cond_29

    if-nez v25, :cond_28

    .line 1403
    invoke-static {}, Landroidx/media3/extractor/mp4/BoxParser;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_28
    move-object/from16 v1, v25

    const/16 v2, 0x15

    .line 1407
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1408
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1409
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v1

    move/from16 v39, v6

    move/from16 v22, v10

    move-object/from16 v27, v19

    move-object/from16 v16, v31

    move/from16 v23, v32

    move/from16 v24, v33

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v19, v3

    goto/16 :goto_23

    :cond_29
    const v2, 0x6d646376

    if-ne v1, v2, :cond_2b

    if-nez v25, :cond_2a

    .line 1412
    invoke-static {}, Landroidx/media3/extractor/mp4/BoxParser;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_2a
    move-object/from16 v1, v25

    .line 1416
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v2

    .line 1417
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v12

    move/from16 v22, v10

    .line 1418
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v10

    .line 1419
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v4

    move/from16 v23, v13

    .line 1420
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v13

    move/from16 v24, v15

    .line 1421
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v15

    move/from16 v27, v3

    .line 1422
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v3

    move/from16 v34, v14

    .line 1423
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v14

    .line 1424
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v35

    .line 1425
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v37

    move/from16 v39, v6

    const/4 v6, 0x1

    .line 1427
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1428
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1429
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1430
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1431
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1432
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1433
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1434
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1435
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    .line 1436
    div-long v12, v35, v2

    long-to-int v4, v12

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1437
    div-long v2, v37, v2

    long-to-int v3, v2

    int-to-short v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v1

    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v31

    move/from16 v23, v32

    move/from16 v24, v33

    move/from16 v14, v34

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_18
    const/4 v6, 0x0

    goto/16 :goto_22

    :cond_2b
    move/from16 v27, v3

    move/from16 v39, v6

    move/from16 v22, v10

    move/from16 v23, v13

    move/from16 v34, v14

    move/from16 v24, v15

    const v2, 0x64323633

    if-ne v1, v2, :cond_2e

    if-nez v8, :cond_2c

    const/4 v1, 0x1

    goto :goto_19

    :cond_2c
    const/4 v1, 0x0

    :goto_19
    const/4 v2, 0x0

    .line 1439
    invoke-static {v1, v2}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    move-object/from16 v8, p8

    :cond_2d
    :goto_1a
    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v31

    :goto_1b
    move/from16 v23, v32

    move/from16 v24, v33

    move/from16 v14, v34

    const/4 v1, -0x1

    goto :goto_18

    :cond_2e
    const/4 v2, 0x0

    const v3, 0x65736473

    if-ne v1, v3, :cond_31

    if-nez v8, :cond_2f

    const/4 v1, 0x1

    goto :goto_1c

    :cond_2f
    const/4 v1, 0x0

    .line 1442
    :goto_1c
    invoke-static {v1, v2}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1443
    invoke-static {v0, v12}, Landroidx/media3/extractor/mp4/BoxParser;->parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    move-result-object v26

    .line 1444
    invoke-static/range {v26 .. v26}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$900(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)Ljava/lang/String;

    move-result-object v1

    .line 1445
    invoke-static/range {v26 .. v26}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1000(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)[B

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1447
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    goto :goto_1d

    :cond_30
    move-object/from16 v16, v31

    :goto_1d
    move-object v8, v1

    move/from16 v13, v23

    move/from16 v15, v24

    goto :goto_1b

    :cond_31
    const v3, 0x70617370

    if-ne v1, v3, :cond_32

    .line 1450
    invoke-static {v0, v12}, Landroidx/media3/extractor/mp4/BoxParser;->parsePaspFromParent(Landroidx/media3/common/util/ParsableByteArray;I)F

    move-result v1

    move v14, v1

    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v31

    move/from16 v23, v32

    move/from16 v24, v33

    const/4 v1, -0x1

    const/4 v6, 0x0

    const/16 v28, 0x1

    goto/16 :goto_22

    :cond_32
    const v3, 0x73763364

    if-ne v1, v3, :cond_33

    .line 1453
    invoke-static {v0, v12, v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseProjFromParent(Landroidx/media3/common/util/ParsableByteArray;II)[B

    move-result-object v18

    goto :goto_1a

    :cond_33
    const v3, 0x73743364

    if-ne v1, v3, :cond_38

    .line 1455
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/4 v3, 0x3

    .line 1456
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-nez v1, :cond_2d

    .line 1458
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-eqz v1, :cond_37

    const/4 v4, 0x1

    if-eq v1, v4, :cond_36

    const/4 v6, 0x2

    if-eq v1, v6, :cond_35

    if-eq v1, v3, :cond_34

    goto :goto_1a

    :cond_34
    const/16 v27, 0x3

    goto :goto_1a

    :cond_35
    const/16 v27, 0x2

    goto :goto_1a

    :cond_36
    const/16 v27, 0x1

    goto/16 :goto_1a

    :cond_37
    const/16 v27, 0x0

    goto/16 :goto_1a

    :cond_38
    const/4 v4, 0x1

    const v3, 0x61707643

    if-ne v1, v3, :cond_39

    add-int/lit8 v1, v9, -0xc

    .line 1480
    new-array v3, v1, [B

    add-int/lit8 v12, v12, 0xc

    .line 1481
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v6, 0x0

    .line 1482
    invoke-virtual {v0, v3, v6, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1483
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    .line 1485
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseApvc(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/ColorInfo;

    move-result-object v1

    .line 1487
    iget v3, v1, Landroidx/media3/common/ColorInfo;->lumaBitdepth:I

    .line 1488
    iget v4, v1, Landroidx/media3/common/ColorInfo;->chromaBitdepth:I

    .line 1489
    iget v8, v1, Landroidx/media3/common/ColorInfo;->colorSpace:I

    .line 1490
    iget v10, v1, Landroidx/media3/common/ColorInfo;->colorRange:I

    .line 1491
    iget v1, v1, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    .line 1492
    const-string v11, "video/apv"

    move/from16 v24, v1

    move v15, v3

    move v13, v4

    move/from16 v23, v10

    move/from16 v14, v34

    const/4 v1, -0x1

    move-object/from16 v40, v11

    move v11, v8

    move-object/from16 v8, v40

    move/from16 v41, v27

    move-object/from16 v27, v19

    move/from16 v19, v41

    goto/16 :goto_23

    :cond_39
    const/4 v6, 0x0

    const v3, 0x636f6c72

    if-ne v1, v3, :cond_3e

    const/4 v1, -0x1

    move/from16 v12, v33

    if-ne v11, v1, :cond_40

    if-ne v12, v1, :cond_40

    .line 1500
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    const v10, 0x6e636c78

    if-eq v3, v10, :cond_3b

    const v10, 0x6e636c63

    if-ne v3, v10, :cond_3a

    goto :goto_1e

    .line 1519
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "Unsupported color type: "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroidx/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BoxParsers"

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 1504
    :cond_3b
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 1505
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    const/4 v11, 0x2

    .line 1506
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/16 v12, 0x13

    if-ne v9, v12, :cond_3c

    .line 1513
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_3c

    const/4 v12, 0x1

    goto :goto_1f

    :cond_3c
    const/4 v12, 0x0

    .line 1514
    :goto_1f
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v3

    if-eqz v12, :cond_3d

    const/4 v11, 0x1

    .line 1517
    :cond_3d
    invoke-static {v10}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v4

    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v31

    move/from16 v14, v34

    move/from16 v24, v4

    move/from16 v23, v11

    move v11, v3

    goto :goto_22

    :cond_3e
    move/from16 v12, v33

    const/4 v1, -0x1

    goto :goto_21

    :cond_3f
    :goto_20
    move/from16 v27, v3

    move/from16 v39, v6

    move/from16 v22, v10

    move/from16 v23, v13

    move/from16 v34, v14

    move/from16 v24, v15

    move/from16 v12, v33

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1356
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/DolbyVisionConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/DolbyVisionConfig;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 1358
    iget-object v3, v3, Landroidx/media3/extractor/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 1359
    const-string v8, "video/dolby-vision"

    move-object/from16 v17, v3

    :cond_40
    :goto_21
    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v31

    move/from16 v23, v32

    move/from16 v14, v34

    move/from16 v24, v12

    :goto_22
    move/from16 v40, v27

    move-object/from16 v27, v19

    move/from16 v19, v40

    :goto_23
    add-int/2addr v7, v9

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p7

    move/from16 v10, v22

    move-object/from16 v3, v30

    move/from16 v6, v39

    move/from16 v22, v11

    move-object/from16 v11, p8

    goto/16 :goto_2

    :cond_41
    :goto_24
    move-object/from16 v30, v3

    move/from16 v39, v6

    move/from16 v34, v14

    move-object/from16 v31, v16

    move/from16 v27, v19

    move/from16 v11, v22

    move/from16 v32, v23

    move/from16 v12, v24

    const/4 v2, 0x0

    move/from16 v23, v13

    move/from16 v24, v15

    if-nez v8, :cond_42

    return-void

    .line 1531
    :cond_42
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    move/from16 v1, p4

    .line 1533
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1534
    invoke-virtual {v0, v8}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v17

    .line 1535
    invoke-virtual {v0, v9}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1536
    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v1, v39

    .line 1537
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v14, v34

    .line 1538
    invoke-virtual {v0, v14}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v1, p5

    .line 1539
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v18

    .line 1540
    invoke-virtual {v0, v9}, Landroidx/media3/common/Format$Builder;->setProjectionData([B)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v1, v27

    .line 1541
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setStereoMode(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v31

    .line 1542
    invoke-virtual {v0, v9}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v1, v20

    .line 1543
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setMaxNumReorderSamples(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v1, v21

    .line 1544
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setMaxSubLayers(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v3, v30

    .line 1545
    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v1}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 1550
    invoke-virtual {v1, v11}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    move/from16 v3, v32

    .line 1551
    invoke-virtual {v1, v3}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    .line 1552
    invoke-virtual {v1, v12}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    if-eqz v25, :cond_43

    .line 1553
    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    goto :goto_25

    :cond_43
    move-object v9, v2

    :goto_25
    invoke-virtual {v1, v9}, Landroidx/media3/common/ColorInfo$Builder;->setHdrStaticInfo([B)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    move/from16 v15, v24

    .line 1554
    invoke-virtual {v1, v15}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    move/from16 v13, v23

    .line 1555
    invoke-virtual {v1, v13}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    .line 1556
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    .line 1548
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    if-eqz v26, :cond_44

    .line 1560
    invoke-static/range {v26 .. v26}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1200(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1561
    invoke-static/range {v26 .. v26}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->access$1100(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 1564
    :cond_44
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    move-object/from16 v1, p7

    iput-object v0, v1, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->format:Landroidx/media3/common/Format;

    return-void
.end method

.method private static parseXyz(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata;
    .locals 5

    .line 861
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v0

    const/4 v1, 0x2

    .line 862
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 863
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2b

    .line 865
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2d

    .line 866
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 867
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    .line 869
    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 871
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 872
    new-instance v0, Landroidx/media3/common/Metadata;

    new-array v3, v4, [Landroidx/media3/common/Metadata$Entry;

    new-instance v4, Landroidx/media3/container/Mp4LocationData;

    invoke-direct {v4, v2, p0}, Landroidx/media3/container/Mp4LocationData;-><init>(FF)V

    aput-object v4, v3, v1

    invoke-direct {v0, v3}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
