.class public final Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Session.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vrtoolkit/cardboard/proto/nano/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;


# instance fields
.field private bitField0_:I

.field public gyroscopeBias:[D

.field public lastGyroscopeSample:[D

.field private lastGyroscopeTimestamp_:D

.field public lensOffset:[F

.field public q:[D

.field private timeSinceEpochSeconds_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->clear()Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;

    .line 83
    return-void
.end method

.method public static emptyArray()[Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;

    sput-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    .line 87
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    .line 89
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    .line 90
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    .line 91
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->cachedSize:I

    .line 95
    return-object p0
.end method

.method public clearLastGyroscopeTimestamp()Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;
    .locals 2

    .prologue
    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    .line 75
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    .line 76
    return-object p0
.end method

.method public clearTimeSinceEpochSeconds()Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;
    .locals 2

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    .line 47
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    .line 48
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;
    .locals 3

    .prologue
    .line 101
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .local v0, "cloned":Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    array-length v2, v2

    if-lez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    iput-object v2, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    array-length v2, v2

    if-lez v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    iput-object v2, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    array-length v2, v2

    if-lez v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    array-length v2, v2

    if-lez v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    iput-object v2, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    .line 117
    :cond_3
    return-object v0

    .line 102
    .end local v0    # "cloned":Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 167
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 168
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    array-length v2, v2

    if-lez v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x8

    .line 170
    .local v0, "dataSize":I
    add-int/2addr v1, v0

    .line 171
    add-int/lit8 v1, v1, 0x1

    .line 173
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 175
    .end local v0    # "dataSize":I
    :cond_0
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 176
    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    .line 177
    invoke-static {v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    array-length v2, v2

    if-lez v2, :cond_2

    .line 180
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x8

    .line 181
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 182
    add-int/lit8 v1, v1, 0x1

    .line 184
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 186
    .end local v0    # "dataSize":I
    :cond_2
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    array-length v2, v2

    if-lez v2, :cond_3

    .line 187
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x4

    .line 188
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 191
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 193
    .end local v0    # "dataSize":I
    :cond_3
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    array-length v2, v2

    if-lez v2, :cond_4

    .line 194
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x8

    .line 195
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 196
    add-int/lit8 v1, v1, 0x1

    .line 198
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 200
    .end local v0    # "dataSize":I
    :cond_4
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 201
    const/4 v2, 0x6

    iget-wide v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    .line 202
    invoke-static {v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v1, v2

    .line 204
    :cond_5
    return v1
.end method

.method public getLastGyroscopeTimestamp()D
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    return-wide v0
.end method

.method public getTimeSinceEpochSeconds()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    return-wide v0
.end method

.method public hasLastGyroscopeTimestamp()Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeSinceEpochSeconds()Z
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;
    .locals 10
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 212
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    .line 213
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 217
    invoke-super {p0, p1, v5}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 218
    :sswitch_0
    return-object p0

    .line 223
    :sswitch_1
    const/16 v7, 0x9

    .line 224
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 225
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    if-nez v7, :cond_2

    move v1, v6

    .line 226
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v4, v7, [D

    .line 227
    .local v4, "newArray":[D
    if-eqz v1, :cond_1

    .line 228
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    :cond_1
    :goto_2
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    .line 231
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v8

    aput-wide v8, v4, v1

    .line 232
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 225
    .end local v1    # "i":I
    .end local v4    # "newArray":[D
    :cond_2
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    array-length v1, v7

    goto :goto_1

    .line 235
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[D
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v8

    aput-wide v8, v4, v1

    .line 236
    iput-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    goto :goto_0

    .line 240
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[D
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 241
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 242
    .local v3, "limit":I
    div-int/lit8 v0, v2, 0x8

    .line 243
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    if-nez v7, :cond_5

    move v1, v6

    .line 244
    .restart local v1    # "i":I
    :goto_3
    add-int v7, v1, v0

    new-array v4, v7, [D

    .line 245
    .restart local v4    # "newArray":[D
    if-eqz v1, :cond_4

    .line 246
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    :cond_4
    :goto_4
    array-length v7, v4

    if-ge v1, v7, :cond_6

    .line 249
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v8

    aput-wide v8, v4, v1

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 243
    .end local v1    # "i":I
    .end local v4    # "newArray":[D
    :cond_5
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    array-length v1, v7

    goto :goto_3

    .line 251
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[D
    :cond_6
    iput-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    .line 252
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    .line 256
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[D
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    .line 257
    iget v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    goto :goto_0

    .line 261
    :sswitch_4
    const/16 v7, 0x19

    .line 262
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 263
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    if-nez v7, :cond_8

    move v1, v6

    .line 264
    .restart local v1    # "i":I
    :goto_5
    add-int v7, v1, v0

    new-array v4, v7, [D

    .line 265
    .restart local v4    # "newArray":[D
    if-eqz v1, :cond_7

    .line 266
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    :cond_7
    :goto_6
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_9

    .line 269
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v8

    aput-wide v8, v4, v1

    .line 270
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 263
    .end local v1    # "i":I
    .end local v4    # "newArray":[D
    :cond_8
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    array-length v1, v7

    goto :goto_5

    .line 273
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[D
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v8

    aput-wide v8, v4, v1

    .line 274
    iput-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    goto/16 :goto_0

    .line 278
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[D
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 279
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 280
    .restart local v3    # "limit":I
    div-int/lit8 v0, v2, 0x8

    .line 281
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    if-nez v7, :cond_b

    move v1, v6

    .line 282
    .restart local v1    # "i":I
    :goto_7
    add-int v7, v1, v0

    new-array v4, v7, [D

    .line 283
    .restart local v4    # "newArray":[D
    if-eqz v1, :cond_a

    .line 284
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    :cond_a
    :goto_8
    array-length v7, v4

    if-ge v1, v7, :cond_c

    .line 287
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v8

    aput-wide v8, v4, v1

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 281
    .end local v1    # "i":I
    .end local v4    # "newArray":[D
    :cond_b
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    array-length v1, v7

    goto :goto_7

    .line 289
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[D
    :cond_c
    iput-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    .line 290
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 294
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[D
    :sswitch_6
    const/16 v7, 0x25

    .line 295
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 296
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    if-nez v7, :cond_e

    move v1, v6

    .line 297
    .restart local v1    # "i":I
    :goto_9
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 298
    .local v4, "newArray":[F
    if-eqz v1, :cond_d

    .line 299
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    :cond_d
    :goto_a
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_f

    .line 302
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 303
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 296
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_e
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    array-length v1, v7

    goto :goto_9

    .line 306
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 307
    iput-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    goto/16 :goto_0

    .line 311
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 312
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 313
    .restart local v3    # "limit":I
    div-int/lit8 v0, v2, 0x4

    .line 314
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    if-nez v7, :cond_11

    move v1, v6

    .line 315
    .restart local v1    # "i":I
    :goto_b
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 316
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_10

    .line 317
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    :cond_10
    :goto_c
    array-length v7, v4

    if-ge v1, v7, :cond_12

    .line 320
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 314
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_11
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    array-length v1, v7

    goto :goto_b

    .line 322
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_12
    iput-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    .line 323
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 327
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[F
    :sswitch_8
    const/16 v7, 0x29

    .line 328
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 329
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    if-nez v7, :cond_14

    move v1, v6

    .line 330
    .restart local v1    # "i":I
    :goto_d
    add-int v7, v1, v0

    new-array v4, v7, [D

    .line 331
    .local v4, "newArray":[D
    if-eqz v1, :cond_13

    .line 332
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    :cond_13
    :goto_e
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_15

    .line 335
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v8

    aput-wide v8, v4, v1

    .line 336
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 329
    .end local v1    # "i":I
    .end local v4    # "newArray":[D
    :cond_14
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    array-length v1, v7

    goto :goto_d

    .line 339
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[D
    :cond_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v8

    aput-wide v8, v4, v1

    .line 340
    iput-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    goto/16 :goto_0

    .line 344
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[D
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 345
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 346
    .restart local v3    # "limit":I
    div-int/lit8 v0, v2, 0x8

    .line 347
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    if-nez v7, :cond_17

    move v1, v6

    .line 348
    .restart local v1    # "i":I
    :goto_f
    add-int v7, v1, v0

    new-array v4, v7, [D

    .line 349
    .restart local v4    # "newArray":[D
    if-eqz v1, :cond_16

    .line 350
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    :cond_16
    :goto_10
    array-length v7, v4

    if-ge v1, v7, :cond_18

    .line 353
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v8

    aput-wide v8, v4, v1

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 347
    .end local v1    # "i":I
    .end local v4    # "newArray":[D
    :cond_17
    iget-object v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    array-length v1, v7

    goto :goto_f

    .line 355
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[D
    :cond_18
    iput-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    .line 356
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 360
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[D
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    .line 361
    iget v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    goto/16 :goto_0

    .line 213
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x19 -> :sswitch_4
        0x1a -> :sswitch_5
        0x22 -> :sswitch_7
        0x25 -> :sswitch_6
        0x29 -> :sswitch_8
        0x2a -> :sswitch_9
        0x31 -> :sswitch_a
    .end sparse-switch
.end method

.method public setLastGyroscopeTimestamp(D)Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    .line 67
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    .line 68
    return-object p0
.end method

.method public setTimeSinceEpochSeconds(J)Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    .line 39
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    .line 40
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    array-length v2, v2

    if-lez v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x8

    .line 126
    .local v0, "dataSize":I
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 127
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->q:[D

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "dataSize":I
    .end local v1    # "i":I
    :cond_0
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 133
    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    array-length v2, v2

    if-lez v2, :cond_2

    .line 136
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x8

    .line 137
    .restart local v0    # "dataSize":I
    const/16 v2, 0x1a

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 138
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 139
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    .end local v0    # "dataSize":I
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    array-length v2, v2

    if-lez v2, :cond_3

    .line 144
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x4

    .line 145
    .restart local v0    # "dataSize":I
    const/16 v2, 0x22

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 146
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 147
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 148
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lensOffset:[F

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 151
    .end local v0    # "dataSize":I
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    array-length v2, v2

    if-lez v2, :cond_4

    .line 152
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x8

    .line 153
    .restart local v0    # "dataSize":I
    const/16 v2, 0x2a

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 154
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 155
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 156
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 159
    .end local v0    # "dataSize":I
    .end local v1    # "i":I
    :cond_4
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 160
    const/4 v2, 0x6

    iget-wide v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 162
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 163
    return-void
.end method
