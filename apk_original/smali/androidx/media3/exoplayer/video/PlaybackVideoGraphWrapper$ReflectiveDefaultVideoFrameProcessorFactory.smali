.class final Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"

# interfaces
.implements Landroidx/media3/common/VideoFrameProcessor$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReflectiveDefaultVideoFrameProcessorFactory"
.end annotation


# static fields
.field private static final VIDEO_FRAME_PROCESSOR_FACTORY_SUPPLIER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/common/VideoFrameProcessor$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1066
    new-instance v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory$$ExternalSyntheticLambda0;-><init>()V

    .line 1067
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;->VIDEO_FRAME_PROCESSOR_FACTORY_SUPPLIER:Lcom/google/common/base/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;)V
    .locals 0

    .line 1063
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0()Landroidx/media3/common/VideoFrameProcessor$Factory;
    .locals 4

    .line 1071
    :try_start_0
    const-string v0, "androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder"

    .line 1072
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 1076
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1077
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1078
    const-string v3, "build"

    .line 1081
    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1082
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1079
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/VideoFrameProcessor$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1085
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;ZLjava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)Landroidx/media3/common/VideoFrameProcessor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    .line 1098
    sget-object v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;->VIDEO_FRAME_PROCESSOR_FACTORY_SUPPLIER:Lcom/google/common/base/Supplier;

    .line 1099
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/media3/common/VideoFrameProcessor$Factory;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1100
    invoke-interface/range {v1 .. v7}, Landroidx/media3/common/VideoFrameProcessor$Factory;->create(Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;ZLjava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)Landroidx/media3/common/VideoFrameProcessor;

    move-result-object p1

    return-object p1
.end method
