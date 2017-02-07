.class abstract Lcom/google/protobuf/BinaryWriter;
.super Lcom/google/protobuf/ByteOutput;
.source "BinaryWriter.java"

# interfaces
.implements Lcom/google/protobuf/Writer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;,
        Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;,
        Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;,
        Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHUNK_SIZE:I = 0x1000

.field private static final MAP_KEY_NUMBER:I = 0x1

.field private static final MAP_VALUE_NUMBER:I = 0x2


# instance fields
.field private final alloc:Lcom/google/protobuf/BufferAllocator;

.field final buffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/google/protobuf/AllocatedBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkSize:I

.field totalDoneBytes:I


# direct methods
.method private constructor <init>(Lcom/google/protobuf/BufferAllocator;I)V
    .locals 2
    .param p1, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p2, "chunkSize"    # I

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/protobuf/ByteOutput;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    .line 119
    if-gtz p2, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chunkSize must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    const-string v0, "alloc"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BufferAllocator;

    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter;->alloc:Lcom/google/protobuf/BufferAllocator;

    .line 123
    iput p2, p0, Lcom/google/protobuf/BinaryWriter;->chunkSize:I

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/BufferAllocator;ILcom/google/protobuf/BinaryWriter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/BufferAllocator;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/protobuf/BinaryWriter$1;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter;-><init>(Lcom/google/protobuf/BufferAllocator;I)V

    return-void
.end method

.method static synthetic access$200(J)B
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/google/protobuf/BinaryWriter;->computeUInt64SizeNoTag(J)B

    move-result v0

    return v0
.end method

.method private static computeUInt64SizeNoTag(J)B
    .locals 6
    .param p0, "value"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 816
    const-wide/16 v2, -0x80

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 818
    const/4 v0, 0x1

    .line 840
    :cond_0
    :goto_0
    return v0

    .line 820
    :cond_1
    cmp-long v1, p0, v4

    if-gez v1, :cond_2

    .line 822
    const/16 v0, 0xa

    goto :goto_0

    .line 825
    :cond_2
    const/4 v0, 0x2

    .line 826
    .local v0, "n":B
    const-wide v2, -0x800000000L

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 828
    const/4 v1, 0x6

    int-to-byte v0, v1

    .line 829
    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    .line 831
    :cond_3
    const-wide/32 v2, -0x200000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 833
    add-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 834
    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    .line 836
    :cond_4
    const-wide/16 v2, -0x4000

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 838
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0
.end method

.method static isUnsafeDirectSupported()Z
    .locals 1

    .prologue
    .line 92
    # invokes: Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->isSupported()Z
    invoke-static {}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->access$000()Z

    move-result v0

    return v0
.end method

.method static isUnsafeHeapSupported()Z
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->isSupported()Z

    move-result v0

    return v0
.end method

.method public static newDirectInstance(Lcom/google/protobuf/BufferAllocator;)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;

    .prologue
    .line 74
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/google/protobuf/BinaryWriter;->newDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    return-object v0
.end method

.method public static newDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .prologue
    .line 82
    invoke-static {}, Lcom/google/protobuf/BinaryWriter;->isUnsafeDirectSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0, p1}, Lcom/google/protobuf/BinaryWriter;->newUnsafeDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 84
    :cond_0
    invoke-static {p0, p1}, Lcom/google/protobuf/BinaryWriter;->newSafeDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    goto :goto_0
.end method

.method public static newHeapInstance(Lcom/google/protobuf/BufferAllocator;)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;

    .prologue
    .line 56
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/google/protobuf/BinaryWriter;->newHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    return-object v0
.end method

.method public static newHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .prologue
    .line 64
    invoke-static {}, Lcom/google/protobuf/BinaryWriter;->isUnsafeHeapSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0, p1}, Lcom/google/protobuf/BinaryWriter;->newUnsafeHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-static {p0, p1}, Lcom/google/protobuf/BinaryWriter;->newSafeHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    goto :goto_0
.end method

.method static newSafeDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .prologue
    .line 107
    new-instance v0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;-><init>(Lcom/google/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method static newSafeHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .prologue
    .line 96
    new-instance v0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;-><init>(Lcom/google/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method static newUnsafeDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 2
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .prologue
    .line 111
    invoke-static {}, Lcom/google/protobuf/BinaryWriter;->isUnsafeDirectSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsafe operations not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    new-instance v0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;-><init>(Lcom/google/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method static newUnsafeHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 2
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .prologue
    .line 100
    invoke-static {}, Lcom/google/protobuf/BinaryWriter;->isUnsafeHeapSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsafe operations not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    new-instance v0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;-><init>(Lcom/google/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method private final writeBoolList_Internal(ILcom/google/protobuf/BooleanArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/BooleanArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 472
    if-eqz p3, :cond_2

    .line 473
    invoke-virtual {p2}, Lcom/google/protobuf/BooleanArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 474
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 475
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/BooleanArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 476
    invoke-virtual {p2, v0}, Lcom/google/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeBool(Z)V

    .line 475
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 479
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 480
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 486
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 482
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/BooleanArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 483
    invoke-virtual {p2, v0}, Lcom/google/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeBool(IZ)V

    .line 482
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeBoolList_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_2

    .line 455
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 456
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 457
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 458
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeBool(Z)V

    .line 457
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 461
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 462
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 468
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 464
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 465
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeBool(IZ)V

    .line 464
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeDoubleList_Internal(ILcom/google/protobuf/DoubleArrayList;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/DoubleArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 423
    if-eqz p3, :cond_2

    .line 424
    invoke-virtual {p2}, Lcom/google/protobuf/DoubleArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 425
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 426
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/DoubleArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 427
    invoke-virtual {p2, v0}, Lcom/google/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 426
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 430
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 431
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 437
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 433
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/DoubleArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 434
    invoke-virtual {p2, v0}, Lcom/google/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeDouble(ID)V

    .line 433
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeDoubleList_Internal(ILjava/util/List;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    if-eqz p3, :cond_2

    .line 406
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 407
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 408
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 409
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 408
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 412
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 413
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 419
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 415
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 416
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeDouble(ID)V

    .line 415
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeFixed32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 244
    if-eqz p3, :cond_2

    .line 245
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 246
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 247
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 248
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 247
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 251
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 252
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 258
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 254
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 255
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 254
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeFixed32List_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_2

    .line 228
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 229
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 230
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 231
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 230
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 234
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 235
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 241
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 237
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 238
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 237
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeFixed64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/LongArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 336
    if-eqz p3, :cond_2

    .line 337
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 338
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 339
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 340
    invoke-virtual {p2, v0}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 339
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 343
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 344
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 350
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 346
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 347
    invoke-virtual {p2, v0}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 346
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeFixed64List_Internal(ILjava/util/List;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p3, :cond_2

    .line 319
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 320
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 321
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 322
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 321
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 325
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 326
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 332
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 328
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 329
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 328
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeFloatList_Internal(ILcom/google/protobuf/FloatArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/FloatArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 379
    if-eqz p3, :cond_2

    .line 380
    invoke-virtual {p2}, Lcom/google/protobuf/FloatArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 381
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 382
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/FloatArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 383
    invoke-virtual {p2, v0}, Lcom/google/protobuf/FloatArrayList;->getFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 382
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 386
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 387
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 393
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 389
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/FloatArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 390
    invoke-virtual {p2, v0}, Lcom/google/protobuf/FloatArrayList;->getFloat(I)F

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeFloat(IF)V

    .line 389
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeFloatList_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz p3, :cond_2

    .line 363
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 364
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 365
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 366
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 365
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 369
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 370
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 376
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 372
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 373
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeFloat(IF)V

    .line 372
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 200
    if-eqz p3, :cond_2

    .line 201
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 202
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 203
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 204
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeInt32(I)V

    .line 203
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 207
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 208
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 214
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 210
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 211
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeInt32(II)V

    .line 210
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeInt32List_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_2

    .line 184
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 185
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 186
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 187
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeInt32(I)V

    .line 186
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 190
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 191
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 197
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 193
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 194
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeInt32(II)V

    .line 193
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private writeLazyString(ILjava/lang/Object;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 503
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 504
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter;->writeString(ILjava/lang/String;)V

    .line 508
    :goto_0
    return-void

    .line 506
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p2, Lcom/google/protobuf/ByteString;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_0
.end method

.method static final writeMapEntryField(Lcom/google/protobuf/Writer;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 4
    .param p0, "writer"    # Lcom/google/protobuf/Writer;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 641
    sget-object v0, Lcom/google/protobuf/BinaryWriter$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p2}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported map value type for: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :pswitch_0
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    .line 702
    :goto_0
    return-void

    .line 646
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_0

    .line 649
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_0

    .line 652
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_0

    .line 655
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_4
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_0

    .line 658
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto :goto_0

    .line 661
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_6
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto :goto_0

    .line 664
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_7
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto :goto_0

    .line 667
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_8
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto :goto_0

    .line 670
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_9
    check-cast p3, Ljava/lang/String;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-interface {p0, p1, p3}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 673
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_a
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto :goto_0

    .line 676
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_b
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_0

    .line 679
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_c
    check-cast p3, Ljava/lang/Float;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_0

    .line 682
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_d
    check-cast p3, Ljava/lang/Double;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto :goto_0

    .line 685
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_e
    invoke-interface {p0, p1, p3}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 688
    :pswitch_f
    check-cast p3, Lcom/google/protobuf/ByteString;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-interface {p0, p1, p3}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 691
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_10
    instance-of v0, p3, Lcom/google/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_0

    .line 692
    check-cast p3, Lcom/google/protobuf/Internal$EnumLite;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-interface {p3}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_0

    .line 693
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 694
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_0

    .line 696
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected type for enum in map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private final writeSInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 597
    if-eqz p3, :cond_2

    .line 598
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 599
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 600
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 601
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeSInt32(I)V

    .line 600
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 604
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 605
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 611
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 607
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 608
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeSInt32(II)V

    .line 607
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeSInt32List_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_2

    .line 581
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 582
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 583
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 584
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeSInt32(I)V

    .line 583
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 587
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 588
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 594
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 590
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 591
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeSInt32(II)V

    .line 590
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeSInt64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/LongArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 722
    if-eqz p3, :cond_2

    .line 723
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 724
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 725
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 726
    invoke-virtual {p2, v0}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeSInt64(J)V

    .line 725
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 729
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 730
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 736
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 732
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 733
    invoke-virtual {p2, v0}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeSInt64(IJ)V

    .line 732
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeSInt64List_Internal(ILjava/util/List;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 705
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p3, :cond_2

    .line 706
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 707
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 708
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 709
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeSInt64(J)V

    .line 708
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 711
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 712
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 713
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 719
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 715
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 716
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeSInt64(IJ)V

    .line 715
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeUInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 544
    if-eqz p3, :cond_2

    .line 545
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 546
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 547
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 548
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 547
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 551
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 552
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 558
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 554
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 555
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeUInt32(II)V

    .line 554
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeUInt32List_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 527
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_2

    .line 528
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 529
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 530
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 531
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 530
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 534
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 535
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 541
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 537
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 538
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeUInt32(II)V

    .line 537
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeUInt64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/LongArrayList;
    .param p3, "packed"    # Z

    .prologue
    .line 292
    if-eqz p3, :cond_2

    .line 293
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 294
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 295
    .local v2, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 296
    invoke-virtual {p2, v0}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeVarint64(J)V

    .line 295
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 299
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 300
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 306
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 302
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 303
    invoke-virtual {p2, v0}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeUInt64(IJ)V

    .line 302
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private final writeUInt64List_Internal(ILjava/util/List;Z)V
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p3, :cond_2

    .line 276
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 277
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 278
    .local v2, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 279
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeVarint64(J)V

    .line 278
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int v1, v3, v2

    .line 282
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 283
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 289
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_1
    return-void

    .line 285
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 286
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeUInt64(IJ)V

    .line 285
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final complete()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/protobuf/AllocatedBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->finishCurrentBuffer()V

    .line 140
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public final fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    return-object v0
.end method

.method abstract finishCurrentBuffer()V
.end method

.method public abstract getTotalBytesWritten()I
.end method

.method final newDirectBuffer()Lcom/google/protobuf/AllocatedBuffer;
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->alloc:Lcom/google/protobuf/BufferAllocator;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/BufferAllocator;->allocateDirectBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final newDirectBuffer(I)Lcom/google/protobuf/AllocatedBuffer;
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 777
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->alloc:Lcom/google/protobuf/BufferAllocator;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/BufferAllocator;->allocateDirectBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final newHeapBuffer()Lcom/google/protobuf/AllocatedBuffer;
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->alloc:Lcom/google/protobuf/BufferAllocator;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/BufferAllocator;->allocateHeapBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final newHeapBuffer(I)Lcom/google/protobuf/AllocatedBuffer;
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 769
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->alloc:Lcom/google/protobuf/BufferAllocator;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/BufferAllocator;->allocateHeapBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method abstract requireSpace(I)V
.end method

.method abstract writeBool(Z)V
.end method

.method public final writeBoolList(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    instance-of v0, p2, Lcom/google/protobuf/BooleanArrayList;

    if-eqz v0, :cond_0

    .line 447
    check-cast p2, Lcom/google/protobuf/BooleanArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeBoolList_Internal(ILcom/google/protobuf/BooleanArrayList;Z)V

    .line 451
    :goto_0
    return-void

    .line 449
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeBoolList_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method public final writeBytesList(ILjava/util/List;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 513
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 512
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 515
    :cond_0
    return-void
.end method

.method public final writeDouble(ID)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # D

    .prologue
    .line 165
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 166
    return-void
.end method

.method public final writeDoubleList(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    instance-of v0, p2, Lcom/google/protobuf/DoubleArrayList;

    if-eqz v0, :cond_0

    .line 398
    check-cast p2, Lcom/google/protobuf/DoubleArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeDoubleList_Internal(ILcom/google/protobuf/DoubleArrayList;Z)V

    .line 402
    :goto_0
    return-void

    .line 400
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeDoubleList_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method public final writeEnum(II)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter;->writeInt32(II)V

    .line 171
    return-void
.end method

.method public final writeEnumList(ILjava/util/List;Z)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeInt32List(ILjava/util/List;Z)V

    .line 442
    return-void
.end method

.method abstract writeFixed32(I)V
.end method

.method public final writeFixed32List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_0

    .line 219
    check-cast p2, Lcom/google/protobuf/IntArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V

    .line 223
    :goto_0
    return-void

    .line 221
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32List_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method abstract writeFixed64(J)V
.end method

.method public final writeFixed64List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p2, Lcom/google/protobuf/LongArrayList;

    if-eqz v0, :cond_0

    .line 311
    check-cast p2, Lcom/google/protobuf/LongArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V

    .line 315
    :goto_0
    return-void

    .line 313
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64List_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method public final writeFloat(IF)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # F

    .prologue
    .line 160
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 161
    return-void
.end method

.method public final writeFloatList(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    instance-of v0, p2, Lcom/google/protobuf/FloatArrayList;

    if-eqz v0, :cond_0

    .line 355
    check-cast p2, Lcom/google/protobuf/FloatArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFloatList_Internal(ILcom/google/protobuf/FloatArrayList;Z)V

    .line 359
    :goto_0
    return-void

    .line 357
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFloatList_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method public final writeGroupList(ILjava/util/List;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 747
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 748
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeGroup(ILjava/lang/Object;)V

    .line 747
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 750
    :cond_0
    return-void
.end method

.method abstract writeInt32(I)V
.end method

.method public final writeInt32List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_0

    .line 176
    check-cast p2, Lcom/google/protobuf/IntArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V

    .line 180
    :goto_0
    return-void

    .line 178
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeInt32List_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method public final writeInt64(IJ)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt64(IJ)V

    .line 151
    return-void
.end method

.method public final writeInt64List(ILjava/util/List;Z)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt64List(ILjava/util/List;Z)V

    .line 263
    return-void
.end method

.method public writeMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 8
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/protobuf/MapEntryLite$Metadata",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v7, 0x2

    .line 629
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 630
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 631
    .local v2, "prevBytes":I
    iget-object v4, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v7, v4, v5}, Lcom/google/protobuf/BinaryWriter;->writeMapEntryField(Lcom/google/protobuf/Writer;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 632
    const/4 v4, 0x1

    iget-object v5, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, v4, v5, v6}, Lcom/google/protobuf/BinaryWriter;->writeMapEntryField(Lcom/google/protobuf/Writer;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 633
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v4

    sub-int v1, v4, v2

    .line 634
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 635
    invoke-virtual {p0, p1, v7}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    goto :goto_0

    .line 637
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "length":I
    .end local v2    # "prevBytes":I
    :cond_0
    return-void
.end method

.method public final writeMessageList(ILjava/util/List;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 740
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 741
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;)V

    .line 740
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 743
    :cond_0
    return-void
.end method

.method public final writeMessageSetItem(ILjava/lang/Object;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 754
    const/4 v0, 0x4

    invoke-virtual {p0, v2, v0}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 755
    instance-of v0, p2, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 756
    check-cast p2, Lcom/google/protobuf/ByteString;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/BinaryWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 760
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/BinaryWriter;->writeUInt32(II)V

    .line 761
    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/BinaryWriter;->writeTag(IB)V

    .line 762
    return-void

    .line 758
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final writeSFixed32(II)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 146
    return-void
.end method

.method public final writeSFixed32List(ILjava/util/List;Z)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32List(ILjava/util/List;Z)V

    .line 563
    return-void
.end method

.method public final writeSFixed64(IJ)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J

    .prologue
    .line 155
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 156
    return-void
.end method

.method public final writeSFixed64List(ILjava/util/List;Z)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64List(ILjava/util/List;Z)V

    .line 568
    return-void
.end method

.method abstract writeSInt32(I)V
.end method

.method public final writeSInt32List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 572
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_0

    .line 573
    check-cast p2, Lcom/google/protobuf/IntArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeSInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V

    .line 577
    :goto_0
    return-void

    .line 575
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeSInt32List_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method abstract writeSInt64(J)V
.end method

.method public final writeSInt64List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 615
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p2, Lcom/google/protobuf/LongArrayList;

    if-eqz v0, :cond_0

    .line 616
    check-cast p2, Lcom/google/protobuf/LongArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeSInt64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V

    .line 620
    :goto_0
    return-void

    .line 618
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeSInt64List_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method abstract writeString(Ljava/lang/String;)V
.end method

.method public final writeStringList(ILjava/util/List;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v2, p2, Lcom/google/protobuf/LazyStringList;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 491
    check-cast v1, Lcom/google/protobuf/LazyStringList;

    .line 492
    .local v1, "lazyList":Lcom/google/protobuf/LazyStringList;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 493
    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeLazyString(ILjava/lang/Object;)V

    .line 492
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 496
    .end local v0    # "i":I
    .end local v1    # "lazyList":Lcom/google/protobuf/LazyStringList;
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 497
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeString(ILjava/lang/String;)V

    .line 496
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 500
    :cond_1
    return-void
.end method

.method abstract writeTag(IB)V
.end method

.method public final writeUInt32List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_0

    .line 520
    check-cast p2, Lcom/google/protobuf/IntArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V

    .line 524
    :goto_0
    return-void

    .line 522
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt32List_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method public final writeUInt64List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p2, Lcom/google/protobuf/LongArrayList;

    if-eqz v0, :cond_0

    .line 268
    check-cast p2, Lcom/google/protobuf/LongArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V

    .line 272
    :goto_0
    return-void

    .line 270
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt64List_Internal(ILjava/util/List;Z)V

    goto :goto_0
.end method

.method abstract writeVarint32(I)V
.end method

.method abstract writeVarint64(J)V
.end method
