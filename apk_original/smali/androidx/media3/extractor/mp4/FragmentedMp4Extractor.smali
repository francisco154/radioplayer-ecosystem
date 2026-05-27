.class public Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;,
        Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$Flags;
    }
.end annotation


# static fields
.field private static final EMSG_FORMAT:Landroidx/media3/common/Format;

.field private static final EXTRA_TRACKS_BASE_ID:I = 0x64

.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_EMIT_RAW_SUBTITLE_DATA:I = 0x20

.field public static final FLAG_ENABLE_EMSG_TRACK:I = 0x4

.field public static final FLAG_READ_WITHIN_GOP_SAMPLE_DEPENDENCIES:I = 0x40

.field public static final FLAG_READ_WITHIN_GOP_SAMPLE_DEPENDENCIES_H265:I = 0x80

.field public static final FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME:I = 0x1

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x10

.field public static final FLAG_WORKAROUND_IGNORE_TFDT_BOX:I = 0x2

.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

.field private static final SAMPLE_GROUP_TYPE_seig:I = 0x73656967

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_ENCRYPTION_DATA:I = 0x2

.field private static final STATE_READING_SAMPLE_CONTINUE:I = 0x4

.field private static final STATE_READING_SAMPLE_START:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentedMp4Extractor"


# instance fields
.field private final additionalEmsgTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field private atomData:Landroidx/media3/common/util/ParsableByteArray;

.field private final atomHeader:Landroidx/media3/common/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/container/Mp4Box$ContainerBox;",
            ">;"
        }
    .end annotation
.end field

.field private currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private durationUs:J

.field private emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

.field private endOfMdatPosition:J

.field private final eventMessageEncoder:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private final flags:I

.field private haveOutputSeekMap:Z

.field private isSampleDependedOn:Z

.field private lastSniffFailures:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/extractor/SniffFailure;",
            ">;"
        }
    .end annotation
.end field

.field private final nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field private final nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private parserState:I

.field private pendingMetadataSampleBytes:I

.field private final pendingMetadataSampleInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingSeekTimeUs:J

.field private processSeiNalUnitPayload:Z

.field private final reorderingSeiMessageQueue:Landroidx/media3/container/ReorderingSeiMessageQueue;

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private final scratchBytes:[B

.field private segmentIndexEarliestPresentationTimeUs:J

.field private final sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

.field private final subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field private final timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

.field private final trackBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 166
    new-instance v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    const/16 v0, 0x10

    .line 178
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    .line 182
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "application/x-emsg"

    .line 183
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroidx/media3/common/Format;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 259
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 254
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    or-int/lit8 v2, p1, 0x20

    .line 289
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 284
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    or-int/lit8 v2, p1, 0x20

    .line 321
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    .line 316
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    or-int/lit8 v2, p1, 0x20

    .line 339
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    .line 334
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Landroidx/media3/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 353
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    or-int/lit8 v2, p1, 0x20

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Landroidx/media3/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/extractor/TrackOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    or-int/lit8 v2, p1, 0x20

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 7

    .line 275
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 270
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V
    .locals 7

    .line 306
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 301
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/text/SubtitleParser$Factory;",
            "I",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Landroidx/media3/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/extractor/TrackOutput;",
            ")V"
        }
    .end annotation

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 405
    iput p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    .line 406
    iput-object p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 407
    iput-object p4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    .line 408
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    .line 409
    iput-object p6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 410
    new-instance p1, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    invoke-direct {p1}, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    .line 411
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    .line 412
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    sget-object p3, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, p3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    .line 413
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 p3, 0x6

    invoke-direct {p1, p3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    .line 414
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 415
    new-array p1, p2, [B

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    .line 416
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p2, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 417
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 418
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 419
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 420
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 421
    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 422
    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 423
    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 424
    sget-object p1, Landroidx/media3/extractor/ExtractorOutput;->PLACEHOLDER:Landroidx/media3/extractor/ExtractorOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 p1, 0x0

    .line 425
    new-array p2, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 426
    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 427
    new-instance p1, Landroidx/media3/container/ReorderingSeiMessageQueue;

    new-instance p2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;)V

    invoke-direct {p1, p2}, Landroidx/media3/container/ReorderingSeiMessageQueue;-><init>(Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Landroidx/media3/container/ReorderingSeiMessageQueue;

    return-void
.end method

.method private canReadWithinGopSampleDependencies(Landroidx/media3/common/Format;)Z
    .locals 3

    .line 1738
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1739
    iget p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1741
    :cond_1
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "video/hevc"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1742
    iget p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method private static checkNonNegative(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    if-ltz p0, :cond_0

    return p0

    .line 1286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected negative value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static codecsToParseWithinGopSampleDependenciesAsFlags(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    or-int/lit16 v0, v0, 0x80

    :cond_1
    return v0
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    const/4 v0, 0x0

    .line 537
    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 538
    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method private getDefaultSampleValues(Landroid/util/SparseArray;I)Landroidx/media3/extractor/mp4/DefaultSampleValues;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/DefaultSampleValues;",
            ">;I)",
            "Landroidx/media3/extractor/mp4/DefaultSampleValues;"
        }
    .end annotation

    .line 748
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    .line 751
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    return-object p1

    .line 753
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    return-object p1
.end method

.method private static getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media3/common/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/container/Mp4Box$LeafBox;",
            ">;)",
            "Landroidx/media3/common/DrmInitData;"
        }
    .end annotation

    .line 1809
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1811
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1812
    iget v5, v4, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    .line 1814
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1816
    :cond_0
    iget-object v4, v4, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 1817
    invoke-static {v4}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1819
    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v4, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1821
    :cond_1
    new-instance v6, Landroidx/media3/common/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    .line 1825
    :cond_4
    new-instance v1, Landroidx/media3/common/DrmInitData;

    invoke-direct {v1, v3}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method private static getNextTrackBundle(Landroid/util/SparseArray;)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 1786
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 1788
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1789
    invoke-static {v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v7, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v7, v7, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-eq v6, v7, :cond_2

    .line 1791
    :cond_0
    invoke-static {v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget-object v7, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v7, v7, Landroidx/media3/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 1795
    :cond_1
    invoke-virtual {v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_2

    move-object v1, v5

    move-wide v2, v6

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private initExtraTracks()V
    .locals 7

    const/4 v0, 0x2

    .line 779
    new-array v0, v0, [Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 781
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Landroidx/media3/extractor/TrackOutput;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 782
    aput-object v1, v0, v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 784
    :goto_0
    iget v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/16 v4, 0x64

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 785
    iget-object v5, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v6, 0x5

    .line 786
    invoke-interface {v5, v4, v6}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v4, 0x65

    move v1, v3

    .line 788
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 789
    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 790
    sget-object v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroidx/media3/common/Format;

    invoke-interface {v5, v6}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 793
    :cond_2
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 794
    :goto_2
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    .line 795
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    add-int/lit8 v1, v4, 0x1

    const/4 v3, 0x3

    invoke-interface {v0, v4, v3}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    .line 796
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Format;

    invoke-interface {v0, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 797
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static isEdtsListDurationForEntireMediaTimeline(Landroidx/media3/extractor/mp4/Track;)Z
    .locals 11

    .line 1171
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    if-nez v0, :cond_0

    goto :goto_0

    .line 1176
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v3, v0, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    return v2

    .line 1179
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v3, v0, v1

    const-wide/32 v5, 0xf4240

    iget-wide v7, p0, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 1180
    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    .line 1182
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v5, v0, v1

    const-wide/32 v7, 0xf4240

    iget-wide v9, p0, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 1183
    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 1184
    iget-wide v5, p0, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    cmp-long p0, v3, v5

    if-ltz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic lambda$newFactory$0(Landroidx/media3/extractor/text/SubtitleParser$Factory;)[Landroidx/media3/extractor/Extractor;
    .locals 2

    const/4 v0, 0x1

    .line 87
    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v1, p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    const/4 p0, 0x0

    aput-object v1, v0, p0

    return-object v0
.end method

.method static synthetic lambda$static$1()[Landroidx/media3/extractor/Extractor;
    .locals 4

    const/4 v0, 0x1

    .line 168
    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    sget-object v2, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static newFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 1

    .line 87
    new-instance v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    return-object v0
.end method

.method private onContainerAtomRead(Landroidx/media3/container/Mp4Box$ContainerBox;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 670
    iget v0, p1, Landroidx/media3/container/Mp4Box$ContainerBox;->type:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_0

    .line 671
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Landroidx/media3/container/Mp4Box$ContainerBox;)V

    goto :goto_0

    .line 672
    :cond_0
    iget v0, p1, Landroidx/media3/container/Mp4Box$ContainerBox;->type:I

    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_1

    .line 673
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Landroidx/media3/container/Mp4Box$ContainerBox;)V

    goto :goto_0

    .line 674
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 675
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    invoke-virtual {v0, p1}, Landroidx/media3/container/Mp4Box$ContainerBox;->add(Landroidx/media3/container/Mp4Box$ContainerBox;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onEmsgLeafAtomRead(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 803
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v2, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x8

    .line 806
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 807
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 808
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v2

    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Skipping unsupported emsg version: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentedMp4Extractor"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 831
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 833
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    move-wide v10, v12

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v14

    .line 835
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 836
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 837
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 838
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v20, v2

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-object/from16 v21, v10

    move-wide v8, v4

    goto :goto_1

    .line 818
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 819
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    .line 820
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 822
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    const-wide/32 v13, 0xf4240

    move-wide v15, v6

    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    .line 823
    iget-wide v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    cmp-long v13, v11, v4

    if-eqz v13, :cond_3

    add-long/2addr v11, v8

    move-wide/from16 v17, v11

    goto :goto_0

    :cond_3
    move-wide/from16 v17, v4

    .line 827
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    move-wide v15, v6

    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 828
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    move-object/from16 v20, v2

    move-wide/from16 v22, v6

    move-object/from16 v21, v10

    move-wide/from16 v24, v11

    move-wide/from16 v14, v17

    .line 845
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    new-array v2, v2, [B

    .line 846
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v6}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 847
    new-instance v1, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    move-object/from16 v19, v1

    move-object/from16 v26, v2

    invoke-direct/range {v19 .. v26}, Landroidx/media3/extractor/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 848
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    .line 849
    invoke-virtual {v6, v1}, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->encode(Landroidx/media3/extractor/metadata/emsg/EventMessage;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 850
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    .line 853
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v10, v6

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_4

    aget-object v12, v6, v11

    .line 854
    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 855
    invoke-interface {v12, v2, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    cmp-long v2, v14, v4

    if-nez v2, :cond_5

    .line 862
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v4, v8, v9, v3, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 865
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_4

    .line 866
    :cond_5
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 870
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v3, v14, v15, v7, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 872
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_4

    .line 873
    :cond_6
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_7

    .line 877
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v3, v14, v15, v7, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 879
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_4

    .line 882
    :cond_7
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v2, :cond_8

    .line 883
    invoke-virtual {v2, v14, v15}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v14

    .line 885
    :cond_8
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v3, v2

    :goto_3
    if-ge v7, v3, :cond_9

    aget-object v16, v2, v7

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move-wide/from16 v17, v14

    move/from16 v20, v1

    .line 886
    invoke-interface/range {v16 .. v22}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method

.method private onLeafAtomRead(Landroidx/media3/container/Mp4Box$LeafBox;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    iget-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/container/Mp4Box$ContainerBox;

    invoke-virtual {p2, p1}, Landroidx/media3/container/Mp4Box$ContainerBox;->add(Landroidx/media3/container/Mp4Box$LeafBox;)V

    goto :goto_0

    .line 659
    :cond_0
    iget v0, p1, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    const v1, 0x73696478

    if-ne v0, v1, :cond_1

    .line 660
    iget-object p1, p1, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {p1, p2, p3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Landroidx/media3/common/util/ParsableByteArray;J)Landroid/util/Pair;

    move-result-object p1

    .line 661
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 662
    iget-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/extractor/SeekMap;

    invoke-interface {p2, p1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 p1, 0x1

    .line 663
    iput-boolean p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto :goto_0

    .line 664
    :cond_1
    iget p2, p1, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    const p3, 0x656d7367

    if-ne p2, p3, :cond_2

    .line 665
    iget-object p1, p1, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->onEmsgLeafAtomRead(Landroidx/media3/common/util/ParsableByteArray;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onMoofContainerAtomRead(Landroidx/media3/container/Mp4Box$ContainerBox;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 757
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    invoke-static {p1, v0, v1, v3, v4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Landroidx/media3/container/Mp4Box$ContainerBox;Landroid/util/SparseArray;ZI[B)V

    .line 759
    iget-object p1, p1, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-static {p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 761
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 763
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v3, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->updateDrmInitData(Landroidx/media3/common/DrmInitData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 767
    :cond_1
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_3

    .line 768
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_2

    .line 770
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v5, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    invoke-virtual {v0, v5, v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->seek(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 772
    :cond_2
    iput-wide v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    :cond_3
    return-void
.end method

.method private onMoovContainerAtomRead(Landroidx/media3/container/Mp4Box$ContainerBox;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 680
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Unexpected moov box."

    invoke-static {v0, v3}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 682
    iget-object v0, p1, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-static {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    move-result-object v7

    const v0, 0x6d766578

    .line 685
    invoke-virtual {p1, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 686
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 688
    iget-object v3, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 690
    iget-object v8, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 691
    iget v9, v8, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    const v10, 0x74726578

    if-ne v9, v10, :cond_1

    .line 692
    iget-object v8, v8, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v8}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Landroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v8

    .line 693
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v11, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 694
    :cond_1
    iget v9, v8, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    const v10, 0x6d656864

    if-ne v9, v10, :cond_2

    .line 695
    iget-object v5, v8, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v5

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 700
    :cond_3
    new-instance v4, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {v4}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    new-instance v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;)V

    const/4 v9, 0x0

    move-object v3, p1

    .line 701
    invoke-static/range {v3 .. v10}, Landroidx/media3/extractor/mp4/BoxParser;->parseTraks(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object p1

    .line 710
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 711
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 713
    invoke-static {p1}, Landroidx/media3/extractor/mp4/MimeTypeResolver;->getContainerMimeType(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    if-ge v2, v0, :cond_5

    .line 715
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 716
    iget-object v4, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    .line 717
    iget-object v5, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget v6, v4, Landroidx/media3/extractor/mp4/Track;->type:I

    invoke-interface {v5, v2, v6}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v5

    .line 718
    iget-wide v6, v4, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    invoke-interface {v5, v6, v7}, Landroidx/media3/extractor/TrackOutput;->durationUs(J)V

    .line 719
    new-instance v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v7, v4, Landroidx/media3/extractor/mp4/Track;->id:I

    .line 723
    invoke-direct {p0, v11, v7}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Landroidx/media3/extractor/mp4/DefaultSampleValues;

    move-result-object v7

    invoke-direct {v6, v5, v3, v7, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;Ljava/lang/String;)V

    .line 725
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v5, v4, Landroidx/media3/extractor/mp4/Track;->id:I

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 726
    iget-wide v5, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    iget-wide v3, v4, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 728
    :cond_5
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    goto :goto_7

    .line 730
    :cond_6
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    :goto_6
    if-ge v2, v0, :cond_8

    .line 732
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 733
    iget-object v3, v1, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    .line 734
    iget-object v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v5, v3, Landroidx/media3/extractor/mp4/Track;->id:I

    .line 735
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v3, v3, Landroidx/media3/extractor/mp4/Track;->id:I

    .line 736
    invoke-direct {p0, v11, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Landroidx/media3/extractor/mp4/DefaultSampleValues;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset(Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    return-void
.end method

.method private outputPendingMetadataSamples(J)V
    .locals 13

    .line 1754
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1755
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    .line 1756
    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 1757
    iget-wide v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeUs:J

    .line 1758
    iget-boolean v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeIsRelative:Z

    if-eqz v3, :cond_1

    add-long/2addr v1, p1

    .line 1763
    :cond_1
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v3, :cond_2

    .line 1764
    invoke-virtual {v3, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v1

    .line 1766
    :cond_2
    iget-object v10, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v11, v10

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v3, v10, v12

    .line 1767
    iget v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    iget v8, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    const/4 v9, 0x0

    const/4 v6, 0x1

    move-wide v4, v1

    invoke-interface/range {v3 .. v9}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static parseMehd(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    .line 912
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 913
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 914
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 915
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static parseMoof(Landroidx/media3/container/Mp4Box$ContainerBox;Landroid/util/SparseArray;ZI[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/container/Mp4Box$ContainerBox;",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 925
    iget-object v0, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 927
    iget-object v2, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 929
    iget v3, v2, Landroidx/media3/container/Mp4Box$ContainerBox;->type:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_0

    .line 930
    invoke-static {v2, p1, p2, p3, p4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Landroidx/media3/container/Mp4Box$ContainerBox;Landroid/util/SparseArray;ZI[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static parseSaio(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1078
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1079
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1080
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 1082
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1085
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1092
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v0

    .line 1093
    iget-wide v1, p1, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v0, :cond_1

    .line 1094
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p1, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    return-void

    .line 1088
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unexpected saio entry count: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static parseSaiz(Landroidx/media3/extractor/mp4/TrackEncryptionBox;Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1033
    iget p0, p0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    const/16 v0, 0x8

    .line 1034
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1035
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1036
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 1038
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1040
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1042
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 1043
    iget v3, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-gt v1, v3, :cond_6

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1054
    iget-object v0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    .line 1056
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 1058
    :goto_1
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v0, p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    mul-int v5, v0, v1

    .line 1063
    iget-object p0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1065
    :cond_4
    iget-object p0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {p0, v1, p1, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v5, :cond_5

    .line 1067
    invoke-virtual {p2, v5}, Landroidx/media3/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    :cond_5
    return-void

    .line 1044
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Saiz sample count "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is greater than fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static parseSampleGroups(Landroidx/media3/container/Mp4Box$ContainerBox;Ljava/lang/String;Landroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    const/4 v4, 0x0

    .line 1350
    :goto_0
    iget-object v7, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 1351
    iget-object v7, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1352
    iget-object v8, v7, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 1353
    iget v9, v7, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    const v10, 0x73626770

    const v11, 0x73656967

    const/16 v12, 0xc

    if-ne v9, v10, :cond_0

    .line 1354
    invoke-virtual {v8, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1355
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v11, :cond_1

    move-object v5, v8

    goto :goto_1

    .line 1358
    :cond_0
    iget v7, v7, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    const v9, 0x73677064

    if-ne v7, v9, :cond_1

    .line 1359
    invoke-virtual {v8, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1360
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v11, :cond_1

    move-object v6, v8

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_d

    if-nez v6, :cond_3

    goto/16 :goto_4

    :cond_3
    const/16 v0, 0x8

    .line 1369
    invoke-virtual {v5, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1370
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-static {v4}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v4

    const/4 v7, 0x4

    .line 1371
    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v8, 0x1

    if-ne v4, v8, :cond_4

    .line 1373
    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1375
    :cond_4
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    if-ne v4, v8, :cond_c

    .line 1380
    invoke-virtual {v6, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1381
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v0

    .line 1382
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-ne v0, v8, :cond_6

    .line 1384
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_5

    goto :goto_2

    .line 1385
    :cond_5
    const-string v0, "Variable length description in sgpd found (unsupported)"

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_6
    const/4 v4, 0x2

    if-lt v0, v4, :cond_7

    .line 1389
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1391
    :cond_7
    :goto_2
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/16 v9, 0x1

    cmp-long v0, v4, v9

    if-nez v0, :cond_b

    .line 1397
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1398
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v4, v0, 0xf0

    shr-int/lit8 v14, v4, 0x4

    and-int/lit8 v15, v0, 0xf

    .line 1401
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v8, :cond_8

    const/4 v10, 0x1

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    :goto_3
    if-nez v10, :cond_9

    return-void

    .line 1405
    :cond_9
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    const/16 v0, 0x10

    .line 1406
    new-array v13, v0, [B

    .line 1407
    invoke-virtual {v6, v13, v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    if-nez v12, :cond_a

    .line 1410
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1411
    new-array v2, v0, [B

    .line 1412
    invoke-virtual {v6, v2, v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    :cond_a
    move-object/from16 v16, v2

    .line 1414
    iput-boolean v8, v1, Landroidx/media3/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 1415
    new-instance v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object v9, v0

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v16}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    return-void

    .line 1392
    :cond_b
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 1376
    :cond_c
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_d
    :goto_4
    return-void
.end method

.method private static parseSenc(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1315
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1316
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 1317
    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1326
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    if-nez v1, :cond_1

    .line 1329
    iget-object p0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    .line 1331
    :cond_1
    iget v2, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-ne v1, v2, :cond_2

    .line 1340
    iget-object v2, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1341
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/media3/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 1342
    invoke-virtual {p2, p0}, Landroidx/media3/extractor/mp4/TrackFragment;->fillEncryptionData(Landroidx/media3/common/util/ParsableByteArray;)V

    return-void

    .line 1332
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Senc sample count "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different from fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    .line 1321
    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static parseSenc(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1310
    invoke-static {p0, v0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method private static parseSidx(Landroidx/media3/common/util/ParsableByteArray;J)Landroid/util/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroidx/media3/extractor/ChunkIndex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 1436
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1437
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1438
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v1

    const/4 v2, 0x4

    .line 1440
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1441
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    if-nez v1, :cond_0

    .line 1445
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 1446
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    goto :goto_0

    .line 1448
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    .line 1449
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v5

    :goto_0
    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    const-wide/32 v5, 0xf4240

    move-wide v3, v11

    move-wide v7, v9

    .line 1452
    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v15

    const/4 v1, 0x2

    .line 1454
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1456
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 1457
    new-array v7, v1, [I

    .line 1458
    new-array v8, v1, [J

    .line 1459
    new-array v5, v1, [J

    .line 1460
    new-array v6, v1, [J

    const/4 v3, 0x0

    move-wide v3, v11

    move-wide/from16 v17, v15

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v1, :cond_2

    .line 1465
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    const/high16 v19, -0x80000000

    and-int v19, v12, v19

    if-nez v19, :cond_1

    .line 1472
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v12, v12, v21

    .line 1474
    aput v12, v7, v11

    .line 1475
    aput-wide v13, v8, v11

    .line 1479
    aput-wide v17, v6, v11

    add-long v17, v3, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v3, v17

    move-object v12, v5

    move-object v2, v6

    move-wide/from16 v5, v19

    move/from16 p1, v1

    move-object v1, v7

    move-object/from16 v22, v8

    move-wide v7, v9

    .line 1481
    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    .line 1482
    aget-wide v5, v2, v11

    sub-long v5, v3, v5

    aput-wide v5, v12, v11

    const/4 v5, 0x4

    .line 1484
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1485
    aget v6, v1, v11

    int-to-long v6, v6

    add-long/2addr v13, v6

    add-int/lit8 v11, v11, 0x1

    move-object v7, v1

    move-object v6, v2

    move-object v5, v12

    move-object/from16 v8, v22

    const/4 v2, 0x4

    move/from16 v1, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, v17

    move-wide/from16 v17, v23

    goto :goto_1

    .line 1469
    :cond_1
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v12, v5

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v22, v8

    .line 1489
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Landroidx/media3/extractor/ChunkIndex;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v12, v2}, Landroidx/media3/extractor/ChunkIndex;-><init>([I[J[J[J)V

    .line 1488
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseTfdt(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    .line 1161
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1162
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1163
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1164
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static parseTfhd(Landroidx/media3/common/util/ParsableByteArray;Landroid/util/SparseArray;Z)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;Z)",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 1112
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1113
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1114
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result v0

    .line 1115
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 1118
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_2

    .line 1123
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v1

    .line 1124
    iget-object p2, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iput-wide v1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->dataPosition:J

    .line 1125
    iget-object p2, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iput-wide v1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 1128
    :cond_2
    iget-object p2, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 1131
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1132
    :cond_3
    iget v1, p2, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    :goto_1
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4

    .line 1135
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    goto :goto_2

    .line 1136
    :cond_4
    iget v2, p2, Landroidx/media3/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_2
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_5

    .line 1139
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    goto :goto_3

    .line 1140
    :cond_5
    iget v3, p2, Landroidx/media3/extractor/mp4/DefaultSampleValues;->size:I

    :goto_3
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 1143
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    goto :goto_4

    .line 1144
    :cond_6
    iget p0, p2, Landroidx/media3/extractor/mp4/DefaultSampleValues;->flags:I

    .line 1145
    :goto_4
    iget-object p2, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    new-instance v0, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    return-object p1
.end method

.method private static parseTraf(Landroidx/media3/container/Mp4Box$ContainerBox;Landroid/util/SparseArray;ZI[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/container/Mp4Box$ContainerBox;",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const v0, 0x74666864

    .line 943
    invoke-virtual {p0, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 944
    iget-object v0, v0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v0, p1, p2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Landroidx/media3/common/util/ParsableByteArray;Landroid/util/SparseArray;Z)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 949
    :cond_0
    iget-object p2, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 950
    iget-wide v0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 951
    iget-boolean v2, p2, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 952
    invoke-virtual {p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    const/4 v3, 0x1

    .line 953
    invoke-static {p1, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$002(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;Z)Z

    const v4, 0x74666474

    .line 954
    invoke-virtual {p0, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    if-eqz v4, :cond_1

    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_1

    .line 956
    iget-object v0, v4, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v0

    iput-wide v0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 957
    iput-boolean v3, p2, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    goto :goto_0

    .line 959
    :cond_1
    iput-wide v0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 960
    iput-boolean v2, p2, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 963
    :goto_0
    invoke-static {p0, p1, p3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTruns(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;I)V

    .line 966
    iget-object p1, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object p1, p1, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object p3, p2, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 968
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    iget p3, p3, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 967
    invoke-virtual {p1, p3}, Landroidx/media3/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object p1

    const p3, 0x7361697a

    .line 970
    invoke-virtual {p0, p3}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 972
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object p3, p3, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v0, p3, p2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Landroidx/media3/extractor/mp4/TrackEncryptionBox;Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V

    :cond_2
    const p3, 0x7361696f

    .line 975
    invoke-virtual {p0, p3}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 977
    iget-object p3, p3, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {p3, p2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V

    :cond_3
    const p3, 0x73656e63

    .line 980
    invoke-virtual {p0, p3}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 982
    iget-object p3, p3, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {p3, p2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 985
    iget-object p1, p1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-static {p0, p1, p2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSampleGroups(Landroidx/media3/container/Mp4Box$ContainerBox;Ljava/lang/String;Landroidx/media3/extractor/mp4/TrackFragment;)V

    .line 987
    iget-object p1, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p1, :cond_7

    .line 989
    iget-object v0, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 990
    iget v1, v0, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    const v2, 0x75756964

    if-ne v1, v2, :cond_6

    .line 991
    iget-object v0, v0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v0, p2, p4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;[B)V

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private static parseTrex(Landroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 894
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 895
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 896
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 897
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 898
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 899
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 902
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v4, v1, v2, v3, p0}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    .line 901
    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseTrun(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IILandroidx/media3/common/util/ParsableByteArray;I)I
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p3

    .line 1204
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1205
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1206
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result v1

    .line 1208
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    .line 1209
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1210
    iget-object v5, v4, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-static {v5}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 1212
    iget-object v6, v4, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    aput v7, v6, p1

    .line 1213
    iget-object v6, v4, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget-wide v7, v4, Landroidx/media3/extractor/mp4/TrackFragment;->dataPosition:J

    aput-wide v7, v6, p1

    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_0

    .line 1215
    iget-object v6, v4, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    aget-wide v7, v6, p1

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    aput-wide v7, v6, p1

    :cond_0
    and-int/lit8 v6, v1, 0x4

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 1219
    :goto_0
    iget v9, v5, Landroidx/media3/extractor/mp4/DefaultSampleValues;->flags:I

    if-eqz v6, :cond_2

    .line 1221
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    :cond_2
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 1235
    :goto_4
    invoke-static {v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isEdtsListDurationForEntireMediaTimeline(Landroidx/media3/extractor/mp4/Track;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1236
    iget-object v13, v3, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v13}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    aget-wide v14, v13, v7

    goto :goto_5

    :cond_7
    const-wide/16 v14, 0x0

    .line 1239
    :goto_5
    iget-object v13, v4, Landroidx/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 1240
    iget-object v7, v4, Landroidx/media3/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    .line 1241
    iget-object v8, v4, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    .line 1243
    iget v2, v3, Landroidx/media3/extractor/mp4/Track;->type:I

    move/from16 v16, v9

    const/4 v9, 0x2

    if-ne v2, v9, :cond_8

    const/4 v2, 0x1

    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    .line 1247
    :goto_6
    iget-object v9, v4, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    aget v9, v9, p1

    add-int v9, p4, v9

    move/from16 p2, v2

    .line 1248
    iget-wide v2, v3, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    .line 1249
    iget-wide v7, v4, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    move-wide/from16 v25, v2

    move-wide v2, v7

    move/from16 v7, p4

    :goto_7
    if-ge v7, v9, :cond_11

    if-eqz v10, :cond_9

    .line 1253
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    goto :goto_8

    :cond_9
    iget v8, v5, Landroidx/media3/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_8
    invoke-static {v8}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    move-result v8

    if-eqz v11, :cond_a

    .line 1255
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v17

    move/from16 v27, v10

    goto :goto_9

    :cond_a
    move/from16 v27, v10

    iget v10, v5, Landroidx/media3/extractor/mp4/DefaultSampleValues;->size:I

    move/from16 v17, v10

    :goto_9
    invoke-static/range {v17 .. v17}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    move-result v10

    if-eqz v12, :cond_b

    .line 1258
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v17

    move/from16 v28, v6

    move/from16 v6, v17

    goto :goto_a

    :cond_b
    if-nez v7, :cond_c

    if-eqz v6, :cond_c

    move/from16 v28, v6

    move/from16 v6, v16

    goto :goto_a

    :cond_c
    move/from16 v28, v6

    .line 1259
    iget v6, v5, Landroidx/media3/extractor/mp4/DefaultSampleValues;->flags:I

    :goto_a
    if-eqz v1, :cond_d

    .line 1267
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v17

    move/from16 v29, v1

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v1, v17

    goto :goto_b

    :cond_d
    move/from16 v29, v1

    move/from16 v30, v11

    move/from16 v31, v12

    const/4 v1, 0x0

    :goto_b
    int-to-long v11, v1

    add-long/2addr v11, v2

    sub-long v17, v11, v14

    const-wide/32 v19, 0xf4240

    move-wide/from16 v21, v25

    .line 1271
    invoke-static/range {v17 .. v22}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    aput-wide v11, v23, v7

    .line 1272
    iget-boolean v1, v4, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    if-nez v1, :cond_e

    .line 1273
    aget-wide v11, v23, v7

    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-wide v0, v1, Landroidx/media3/extractor/mp4/TrackSampleTable;->durationUs:J

    add-long/2addr v11, v0

    aput-wide v11, v23, v7

    .line 1275
    :cond_e
    aput v10, v13, v7

    shr-int/lit8 v0, v6, 0x10

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_10

    if-eqz p2, :cond_f

    if-nez v7, :cond_10

    :cond_f
    const/4 v0, 0x1

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    .line 1276
    :goto_c
    aput-boolean v0, v24, v7

    int-to-long v10, v8

    add-long/2addr v2, v10

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v10, v27

    move/from16 v6, v28

    move/from16 v1, v29

    move/from16 v11, v30

    move/from16 v12, v31

    goto/16 :goto_7

    .line 1280
    :cond_11
    iput-wide v2, v4, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    return v9
.end method

.method private static parseTruns(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1000
    iget-object p0, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    .line 1001
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const v5, 0x7472756e

    if-ge v2, v0, :cond_1

    .line 1003
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1004
    iget v7, v6, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    if-ne v7, v5, :cond_0

    .line 1005
    iget-object v5, v6, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v6, 0xc

    .line 1006
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1007
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1014
    :cond_1
    iput v1, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1015
    iput v1, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1016
    iput v1, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1017
    iget-object v2, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    invoke-virtual {v2, v3, v4}, Landroidx/media3/extractor/mp4/TrackFragment;->initTables(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 1022
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1023
    iget v6, v4, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    if-ne v6, v5, :cond_2

    add-int/lit8 v6, v2, 0x1

    .line 1024
    iget-object v4, v4, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 1025
    invoke-static {p1, v2, p2, v4, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IILandroidx/media3/common/util/ParsableByteArray;I)I

    move-result v2

    move v3, v2

    move v2, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static parseUuid(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1295
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 1296
    invoke-virtual {p0, p2, v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1299
    sget-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 1306
    :cond_0
    invoke-static {p0, v1, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method private processAtomEnded(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 650
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-wide v0, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->endPosition:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 651
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    invoke-direct {p0, v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Landroidx/media3/container/Mp4Box$ContainerBox;)V

    goto :goto_0

    .line 653
    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method private readAtomHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 544
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 547
    :cond_0
    iput v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 548
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 549
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 550
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 553
    :cond_1
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 556
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 557
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 558
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 562
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 563
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 564
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-wide v4, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->endPosition:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 567
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 571
    :cond_4
    :goto_0
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_f

    .line 576
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 577
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v6, 0x6d646174

    const v7, 0x6d6f6f66

    if-eq v0, v7, :cond_5

    if-ne v0, v6, :cond_6

    .line 578
    :cond_5
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v0, :cond_6

    .line 580
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v8, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v9, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v8, v9, v10, v4, v5}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    invoke-interface {v0, v8}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 581
    iput-boolean v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .line 585
    :cond_6
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    if-ne v0, v7, :cond_7

    .line 587
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_7

    .line 589
    iget-object v8, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v8, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 590
    iput-wide v4, v8, Landroidx/media3/extractor/mp4/TrackFragment;->atomPosition:J

    .line 591
    iput-wide v4, v8, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 592
    iput-wide v4, v8, Landroidx/media3/extractor/mp4/TrackFragment;->dataPosition:J

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 596
    :cond_7
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_8

    .line 597
    iput-object v7, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 598
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    const/4 p1, 0x2

    .line 599
    iput p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v3

    .line 603
    :cond_8
    invoke-static {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 604
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    .line 605
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v2, v4, v0, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 606
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_9

    .line 607
    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    goto :goto_2

    .line 610
    :cond_9
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_2

    .line 612
    :cond_a
    iget p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_d

    .line 613
    iget p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-ne p1, v1, :cond_c

    .line 617
    iget-wide v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_b

    .line 621
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    iget-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 622
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    .line 624
    iput v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_2

    .line 618
    :cond_b
    const-string p1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 614
    :cond_c
    const-string p1, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 626
    :cond_d
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_e

    .line 630
    iput-object v7, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    .line 631
    iput v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    :goto_2
    return v3

    .line 627
    :cond_e
    const-string p1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 572
    :cond_f
    const-string p1, "Atom size less than header length (unsupported)."

    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method private readAtomPayload(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 639
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {p1, v2, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 642
    new-instance v1, Landroidx/media3/container/Mp4Box$LeafBox;

    iget v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v1, v2, v0}, Landroidx/media3/container/Mp4Box$LeafBox;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Landroidx/media3/container/Mp4Box$LeafBox;J)V

    goto :goto_0

    .line 644
    :cond_0
    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 646
    :goto_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    return-void
.end method

.method private readEncryptionData(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1495
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-object v5, v1

    :goto_0
    if-ge v4, v0, :cond_1

    .line 1497
    iget-object v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1498
    iget-boolean v7, v6, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v7, :cond_0

    iget-wide v7, v6, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v9, v7, v2

    if-gez v9, :cond_0

    .line 1500
    iget-wide v2, v6, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 1501
    iget-object v5, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    const/4 p1, 0x3

    .line 1505
    iput p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return-void

    .line 1508
    :cond_2
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-int v0, v2

    if-ltz v0, :cond_3

    .line 1513
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1514
    iget-object v0, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/mp4/TrackFragment;->fillEncryptionData(Landroidx/media3/extractor/ExtractorInput;)V

    return-void

    .line 1510
    :cond_3
    const-string p1, "Offset to encryption data was negative."

    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method private readSample(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1533
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 1535
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-static {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getNextTrackBundle(Landroid/util/SparseArray;)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1539
    iget-wide v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v2, v5

    if-ltz v2, :cond_0

    .line 1544
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1545
    invoke-direct/range {p0 .. p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return v4

    .line 1541
    :cond_0
    const-string v1, "Offset to end of mdat was negative."

    invoke-static {v1, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 1549
    :cond_1
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v5

    .line 1551
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v6, v5

    if-gez v6, :cond_2

    .line 1554
    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Ignoring negative offset to sample data."

    invoke-static {v5, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 1557
    :cond_2
    invoke-interface {v1, v6}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1558
    iput-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1560
    :cond_3
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v5, v6, :cond_8

    .line 1561
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleSize()I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1565
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    .line 1566
    invoke-direct {v0, v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->canReadWithinGopSampleDependencies(Landroidx/media3/common/Format;)Z

    move-result v5

    xor-int/2addr v5, v8

    iput-boolean v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    .line 1568
    iget v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget v9, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    if-ge v5, v9, :cond_5

    .line 1569
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1570
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->skipSampleEncryptionData()V

    .line 1571
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1572
    iput-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1574
    :cond_4
    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v8

    .line 1578
    :cond_5
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget v5, v5, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    if-ne v5, v8, :cond_6

    .line 1580
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/16 v9, 0x8

    sub-int/2addr v5, v9

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1581
    invoke-interface {v1, v9}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1584
    :cond_6
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v9, "audio/ac4"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1586
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v9, 0x7

    .line 1587
    invoke-virtual {v2, v5, v9}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1588
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v5, v10}, Landroidx/media3/extractor/Ac4Util;->getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 1589
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v5, v10, v9}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 1590
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v9

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_0

    .line 1592
    :cond_7
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1593
    invoke-virtual {v2, v5, v4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1595
    :goto_0
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v9

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1596
    iput v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1597
    iput v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1600
    :cond_8
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    .line 1601
    iget-object v9, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    .line 1602
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSamplePresentationTimeUs()J

    move-result-wide v10

    .line 1603
    iget-object v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v12, :cond_9

    .line 1604
    invoke-virtual {v12, v10, v11}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v10

    :cond_9
    move-wide v14, v10

    .line 1606
    iget v10, v5, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v10, :cond_14

    .line 1609
    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v10

    .line 1610
    aput-byte v4, v10, v4

    .line 1611
    aput-byte v4, v10, v8

    const/4 v11, 0x2

    .line 1612
    aput-byte v4, v10, v11

    .line 1613
    iget v11, v5, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v11, v11, 0x4

    .line 1617
    :goto_1
    iget v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v12, v13, :cond_15

    .line 1618
    iget v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v12, :cond_e

    .line 1620
    iget-object v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v12, v12

    if-gtz v12, :cond_a

    iget-boolean v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    if-nez v12, :cond_b

    .line 1622
    :cond_a
    iget-object v12, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-static {v12}, Landroidx/media3/container/NalUnitUtil;->numberOfBytesInNalUnitHeader(Landroidx/media3/common/Format;)I

    move-result v12

    .line 1623
    iget v13, v5, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int/2addr v13, v12

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    sub-int/2addr v6, v3

    if-gt v13, v6, :cond_b

    goto :goto_2

    :cond_b
    const/4 v12, 0x0

    .line 1634
    :goto_2
    iget v3, v5, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int/2addr v3, v12

    .line 1637
    invoke-interface {v1, v10, v11, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1638
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1639
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    if-ltz v3, :cond_d

    sub-int/2addr v3, v12

    .line 1644
    iput v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1646
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1647
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v9, v3, v7}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 1648
    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v7

    iput v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1649
    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v3, v11

    iput v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1650
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v3, v3

    if-lez v3, :cond_c

    if-lez v12, :cond_c

    iget-object v3, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    aget-byte v6, v10, v7

    .line 1653
    invoke-static {v3, v6}, Landroidx/media3/container/NalUnitUtil;->isNalUnitSei(Landroidx/media3/common/Format;B)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    .line 1655
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v9, v3, v12}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 1656
    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v12

    iput v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    if-lez v12, :cond_13

    .line 1657
    iget-boolean v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    if-nez v3, :cond_13

    iget-object v3, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    .line 1659
    invoke-static {v10, v7, v12, v3}, Landroidx/media3/container/NalUnitUtil;->isDependedOn([BIILandroidx/media3/common/Format;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1664
    iput-boolean v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    goto/16 :goto_6

    .line 1641
    :cond_d
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 1668
    :cond_e
    iget-boolean v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    if-eqz v3, :cond_11

    .line 1670
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v12}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1671
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 1672
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1671
    invoke-interface {v1, v3, v4, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1673
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v9, v3, v6}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 1674
    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1676
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 1678
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    iget-object v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v12

    .line 1677
    invoke-static {v6, v12}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v6

    .line 1679
    iget-object v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1680
    iget-object v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12, v6}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 1682
    iget-object v6, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    const/4 v12, -0x1

    if-ne v6, v12, :cond_f

    .line 1683
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Landroidx/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {v6}, Landroidx/media3/container/ReorderingSeiMessageQueue;->getMaxSize()I

    move-result v6

    if-eqz v6, :cond_10

    .line 1684
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Landroidx/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {v6, v4}, Landroidx/media3/container/ReorderingSeiMessageQueue;->setMaxSize(I)V

    goto :goto_4

    .line 1686
    :cond_f
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Landroidx/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {v6}, Landroidx/media3/container/ReorderingSeiMessageQueue;->getMaxSize()I

    move-result v6

    iget-object v12, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v12, v12, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    if-eq v6, v12, :cond_10

    .line 1688
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Landroidx/media3/container/ReorderingSeiMessageQueue;

    iget-object v12, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v12, v12, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    invoke-virtual {v6, v12}, Landroidx/media3/container/ReorderingSeiMessageQueue;->setMaxSize(I)V

    .line 1690
    :cond_10
    :goto_4
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Landroidx/media3/container/ReorderingSeiMessageQueue;

    iget-object v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v14, v15, v12}, Landroidx/media3/container/ReorderingSeiMessageQueue;->add(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 1692
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleFlags()I

    move-result v6

    and-int/2addr v6, v7

    if-eqz v6, :cond_12

    .line 1693
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Landroidx/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {v6}, Landroidx/media3/container/ReorderingSeiMessageQueue;->flush()V

    goto :goto_5

    .line 1697
    :cond_11
    invoke-interface {v9, v1, v12, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v3

    .line 1699
    :cond_12
    :goto_5
    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v3

    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1700
    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v6, v3

    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    :cond_13
    :goto_6
    const/4 v3, 0x0

    const/4 v6, 0x3

    goto/16 :goto_1

    .line 1704
    :cond_14
    :goto_7
    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v3, v5, :cond_15

    sub-int/2addr v5, v3

    .line 1705
    invoke-interface {v9, v1, v5, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v3

    .line 1706
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v3

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_7

    .line 1710
    :cond_15
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleFlags()I

    move-result v1

    .line 1711
    iget-boolean v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    if-nez v3, :cond_16

    const/high16 v3, 0x4000000

    or-int/2addr v1, v3

    :cond_16
    move v12, v1

    .line 1717
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 1719
    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    goto :goto_8

    :cond_17
    const/4 v1, 0x0

    .line 1722
    :goto_8
    iget v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v3, 0x0

    move-wide v10, v14

    move-wide v4, v14

    move v14, v3

    move-object v15, v1

    invoke-interface/range {v9 .. v15}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 1725
    invoke-direct {v0, v4, v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->outputPendingMetadataSamples(J)V

    .line 1726
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x0

    .line 1727
    iput-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_18
    const/4 v1, 0x3

    .line 1729
    iput v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v8
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x6d6f6f66

    if-eq p0, v0, :cond_1

    const v0, 0x74726166

    if-eq p0, v0, :cond_1

    const v0, 0x6d766578

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x73696478

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x74666474

    if-eq p0, v0, :cond_1

    const v0, 0x74666864

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x74726578

    if-eq p0, v0, :cond_1

    const v0, 0x7472756e

    if-eq p0, v0, :cond_1

    const v0, 0x70737368    # 3.013775E29f

    if-eq p0, v0, :cond_1

    const v0, 0x7361697a

    if-eq p0, v0, :cond_1

    const v0, 0x7361696f

    if-eq p0, v0, :cond_1

    const v0, 0x73656e63

    if-eq p0, v0, :cond_1

    const v0, 0x75756964

    if-eq p0, v0, :cond_1

    const v0, 0x73626770

    if-eq p0, v0, :cond_1

    const v0, 0x73677064

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x6d656864

    if-eq p0, v0, :cond_1

    const v0, 0x656d7367

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getSniffFailureDetails()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/extractor/SniffFailure;",
            ">;"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getSniffFailureDetails()Ljava/util/List;
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getSniffFailureDetails()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;
    .locals 1

    invoke-static {p0}, Landroidx/media3/extractor/Extractor$-CC;->$default$getUnderlyingImplementation(Landroidx/media3/extractor/Extractor;)Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 12

    .line 465
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p1, v0

    .line 467
    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 468
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 469
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->initExtraTracks()V

    .line 470
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    if-eqz p1, :cond_1

    .line 471
    new-instance v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget p1, p1, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v2, 0x0

    .line 473
    invoke-interface {v1, v2, p1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    new-instance v1, Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    new-array v5, v2, [J

    new-array v6, v2, [I

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    new-instance v3, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v3, v2, v2, v2, v2}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iget-object v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    iget-object v4, v4, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    .line 487
    invoke-static {v4}, Landroidx/media3/extractor/mp4/MimeTypeResolver;->getContainerMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p1, v1, v3, v4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;Ljava/lang/String;)V

    .line 488
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    :cond_1
    return-void
.end method

.method synthetic lambda$new$2$androidx-media3-extractor-mp4-FragmentedMp4Extractor(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 1

    .line 430
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    invoke-static {p1, p2, p3, v0}, Landroidx/media3/extractor/CeaUtil;->consume(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method protected modifyTrack(Landroidx/media3/extractor/mp4/Track;)Landroidx/media3/extractor/mp4/Track;
    .locals 0

    return-object p1
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    :cond_0
    :goto_0
    iget p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 529
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->readSample(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 526
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Landroidx/media3/extractor/ExtractorInput;)V

    goto :goto_0

    .line 523
    :cond_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Landroidx/media3/extractor/ExtractorInput;)V

    goto :goto_0

    .line 517
    :cond_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 518
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Landroidx/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {p1}, Landroidx/media3/container/ReorderingSeiMessageQueue;->flush()V

    const/4 p1, -0x1

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 495
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 497
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 500
    iput p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 501
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Landroidx/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {p1}, Landroidx/media3/container/ReorderingSeiMessageQueue;->clear()V

    .line 502
    iput-wide p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 503
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 504
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    invoke-static {p1}, Landroidx/media3/extractor/mp4/Sniffer;->sniffFragmented(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/SniffFailure;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 453
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
