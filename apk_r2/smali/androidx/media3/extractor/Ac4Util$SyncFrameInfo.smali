.class public final Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/Ac4Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation


# instance fields
.field public final bitstreamVersion:I

.field public final channelCount:I

.field public final frameSize:I

.field public final sampleCount:I

.field public final sampleRate:I


# direct methods
.method private constructor <init>(IIIII)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->bitstreamVersion:I

    .line 61
    iput p2, p0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->channelCount:I

    .line 62
    iput p3, p0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->sampleRate:I

    .line 63
    iput p4, p0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->frameSize:I

    .line 64
    iput p5, p0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->sampleCount:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILandroidx/media3/extractor/Ac4Util$1;)V
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p5}, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;-><init>(IIIII)V

    return-void
.end method
