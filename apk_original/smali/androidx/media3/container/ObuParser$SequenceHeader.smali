.class public final Landroidx/media3/container/ObuParser$SequenceHeader;
.super Ljava/lang/Object;
.source "ObuParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/ObuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SequenceHeader"
.end annotation


# instance fields
.field public final decoderModelInfoPresentFlag:Z

.field public final frameIdNumbersPresentFlag:Z

.field public final orderHintBits:I

.field public final reducedStillPictureHeader:Z

.field public final seqForceIntegerMv:Z

.field public final seqForceScreenContentTools:Z


# direct methods
.method private constructor <init>(Landroidx/media3/container/ObuParser$Obu;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/container/ObuParser$NotYetImplementedException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iget v0, p1, Landroidx/media3/container/ObuParser$Obu;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 157
    iget-object v0, p1, Landroidx/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 159
    iget-object p1, p1, Landroidx/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 160
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    const/4 v0, 0x4

    .line 161
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 162
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    iput-boolean v3, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->reducedStillPictureHeader:Z

    .line 163
    invoke-static {v3}, Landroidx/media3/container/ObuParser;->access$100(Z)V

    .line 164
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    invoke-static {p1}, Landroidx/media3/container/ObuParser$SequenceHeader;->skipTimingInfo(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 167
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    iput-boolean v3, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->decoderModelInfoPresentFlag:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x2f

    .line 170
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    .line 173
    :cond_1
    iput-boolean v1, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->decoderModelInfoPresentFlag:Z

    .line 175
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/4 v4, 0x5

    .line 176
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-gt v6, v5, :cond_5

    const/16 v7, 0xc

    .line 178
    invoke-virtual {p1, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 179
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    const/4 v8, 0x7

    if-le v7, v8, :cond_3

    .line 181
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 183
    :cond_3
    iget-boolean v7, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->decoderModelInfoPresentFlag:Z

    invoke-static {v7}, Landroidx/media3/container/ObuParser;->access$100(Z)V

    if-eqz v3, :cond_4

    .line 185
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 187
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 191
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 192
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v3, v2

    .line 193
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/2addr v4, v2

    .line 194
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 195
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    iput-boolean v3, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->frameIdNumbersPresentFlag:Z

    .line 196
    invoke-static {v3}, Landroidx/media3/container/ObuParser;->access$100(Z)V

    const/4 v3, 0x3

    .line 198
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 201
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 202
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v4, 0x2

    .line 204
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 206
    :cond_6
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 208
    iput-boolean v2, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceScreenContentTools:Z

    goto :goto_3

    .line 210
    :cond_7
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    iput-boolean v4, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceScreenContentTools:Z

    .line 212
    :goto_3
    iget-boolean v4, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceScreenContentTools:Z

    if-eqz v4, :cond_9

    .line 213
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 215
    iput-boolean v2, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceIntegerMv:Z

    goto :goto_4

    .line 217
    :cond_8
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    iput-boolean v4, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceIntegerMv:Z

    goto :goto_4

    .line 220
    :cond_9
    iput-boolean v2, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceIntegerMv:Z

    :goto_4
    if-eqz v0, :cond_a

    .line 223
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    add-int/2addr p1, v2

    .line 224
    iput p1, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->orderHintBits:I

    goto :goto_5

    .line 226
    :cond_a
    iput v1, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->orderHintBits:I

    :goto_5
    return-void
.end method

.method public static parse(Landroidx/media3/container/ObuParser$Obu;)Landroidx/media3/container/ObuParser$SequenceHeader;
    .locals 1

    .line 148
    :try_start_0
    new-instance v0, Landroidx/media3/container/ObuParser$SequenceHeader;

    invoke-direct {v0, p0}, Landroidx/media3/container/ObuParser$SequenceHeader;-><init>(Landroidx/media3/container/ObuParser$Obu;)V
    :try_end_0
    .catch Landroidx/media3/container/ObuParser$NotYetImplementedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static skipTimingInfo(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 1

    const/16 v0, 0x40

    .line 232
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 233
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {p0}, Landroidx/media3/container/ObuParser;->access$200(Landroidx/media3/common/util/ParsableBitArray;)V

    :cond_0
    return-void
.end method
