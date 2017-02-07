.class public final Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistogramBucket"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;


# instance fields
.field public count:Ljava/lang/Integer;

.field public minimumValue:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3167
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3168
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clear()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3169
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .locals 2

    .prologue
    .line 3148
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v0, :cond_1

    .line 3149
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3151
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v0, :cond_0

    .line 3152
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3154
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3156
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    return-object v0

    .line 3154
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3251
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3245
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3172
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->minimumValue:Ljava/lang/Integer;

    .line 3173
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->count:Ljava/lang/Integer;

    .line 3174
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3175
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->cachedSize:I

    .line 3176
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .locals 3

    .prologue
    .line 3182
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3186
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    return-object v0

    .line 3183
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :catch_0
    move-exception v1

    .line 3184
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3142
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

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
    .line 3142
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3142
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 3204
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3205
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->minimumValue:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3206
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->minimumValue:Ljava/lang/Integer;

    .line 3207
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3209
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 3210
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->count:Ljava/lang/Integer;

    .line 3211
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3213
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3221
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3222
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3226
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3227
    :sswitch_0
    return-object p0

    .line 3232
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->minimumValue:Ljava/lang/Integer;

    goto :goto_0

    .line 3236
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->count:Ljava/lang/Integer;

    goto :goto_0

    .line 3222
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3142
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    return-object v0
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
    .line 3193
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->minimumValue:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3194
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->minimumValue:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3196
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3197
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3199
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3200
    return-void
.end method
