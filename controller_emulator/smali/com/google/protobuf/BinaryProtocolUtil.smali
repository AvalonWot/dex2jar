.class final Lcom/google/protobuf/BinaryProtocolUtil;
.super Ljava/lang/Object;
.source "BinaryProtocolUtil.java"


# static fields
.field static final FIXED32_SIZE:B = 0x4t

.field static final FIXED64_SIZE:B = 0x8t

.field static final MAX_VARINT32_SIZE:B = 0x5t

.field static final MAX_VARINT64_SIZE:B = 0xat

.field private static final TAG_TYPE_BITS:I = 0x3

.field private static final TAG_TYPE_MASK:I = 0x7

.field static final WIRETYPE_END_GROUP:B = 0x4t

.field static final WIRETYPE_FIXED32:B = 0x5t

.field static final WIRETYPE_FIXED64:B = 0x1t

.field static final WIRETYPE_LENGTH_DELIMITED:B = 0x2t

.field static final WIRETYPE_START_GROUP:B = 0x3t

.field static final WIRETYPE_VARINT:B


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decodeZigZag32(I)I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 44
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method static decodeZigZag64(J)J
    .locals 4
    .param p0, "n"    # J

    .prologue
    .line 57
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method static encodeZigZag32(I)I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 71
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method static encodeZigZag64(J)J
    .locals 4
    .param p0, "n"    # J

    .prologue
    .line 85
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method static getFieldNumber(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 27
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static getWireType(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 31
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static tagFor(IB)I
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "wireType"    # B

    .prologue
    .line 23
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
