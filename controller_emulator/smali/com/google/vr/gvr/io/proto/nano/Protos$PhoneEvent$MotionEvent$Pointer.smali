.class public final Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pointer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;


# instance fields
.field private bitField0_:I

.field private id_:I

.field private normalizedX_:F

.field private normalizedY_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 106
    invoke-virtual {p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    .line 107
    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    if-nez v0, :cond_1

    .line 34
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    sput-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 110
    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    .line 111
    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->id_:I

    .line 112
    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->normalizedX_:F

    .line 113
    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->normalizedY_:F

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->cachedSize:I

    .line 116
    return-object p0
.end method

.method public clearId()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->id_:I

    .line 61
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    .line 62
    return-object p0
.end method

.method public clearNormalizedX()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->normalizedX_:F

    .line 80
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    .line 81
    return-object p0
.end method

.method public clearNormalizedY()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->normalizedY_:F

    .line 99
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    .line 100
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 136
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 137
    .local v0, "size":I
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->id_:I

    .line 139
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_0
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 142
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->normalizedX_:F

    .line 143
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_1
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 146
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->normalizedY_:F

    .line 147
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_2
    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->id_:I

    return v0
.end method

.method public getNormalizedX()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->normalizedX_:F

    return v0
.end method

.method public getNormalizedY()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->normalizedY_:F

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNormalizedX()Z
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNormalizedY()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 158
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 162
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    :sswitch_0
    return-object p0

    .line 168
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->id_:I

    .line 169
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    goto :goto_0

    .line 173
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->normalizedX_:F

    .line 174
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    goto :goto_0

    .line 178
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->normalizedY_:F

    .line 179
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    goto :goto_0

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
    .end sparse-switch
.end method

.method public setId(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->id_:I

    .line 53
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    .line 54
    return-object p0
.end method

.method public setNormalizedX(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 71
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->normalizedX_:F

    .line 72
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    .line 73
    return-object p0
.end method

.method public setNormalizedY(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->normalizedY_:F

    .line 91
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    .line 92
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->id_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 125
    :cond_0
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 126
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->normalizedX_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 128
    :cond_1
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 129
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->normalizedY_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 131
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 132
    return-void
.end method
