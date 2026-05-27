.class public final Landroidx/media3/container/NalUnitUtil$H265SpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265SpsData"
.end annotation


# instance fields
.field public final bitDepthChromaMinus8:I

.field public final bitDepthLumaMinus8:I

.field public final chromaFormatIdc:I

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final height:I

.field public final maxNumReorderPics:I

.field public final maxSubLayersMinus1:I

.field public final nalHeader:Landroidx/media3/container/NalUnitUtil$H265NalHeader;

.field public final pixelWidthHeightRatio:F

.field public final profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;ILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;IIIIIIFIIII)V
    .locals 0

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->nalHeader:Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    .line 423
    iput p2, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxSubLayersMinus1:I

    .line 424
    iput-object p3, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 425
    iput p4, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->chromaFormatIdc:I

    .line 426
    iput p5, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    .line 427
    iput p6, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    .line 428
    iput p7, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->seqParameterSetId:I

    .line 429
    iput p8, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    .line 430
    iput p9, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    .line 431
    iput p10, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    .line 432
    iput p11, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxNumReorderPics:I

    .line 433
    iput p12, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    .line 434
    iput p13, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    .line 435
    iput p14, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    return-void
.end method
