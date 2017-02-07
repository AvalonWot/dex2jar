.class public final Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;


# instance fields
.field public clientMessageType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

.field public serverMessageType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2202
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2203
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->name:Ljava/lang/String;

    .line 2204
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->clientMessageType:Ljava/lang/String;

    .line 2205
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->serverMessageType:Ljava/lang/String;

    .line 2206
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->cachedSize:I

    .line 2207
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    .locals 2

    .prologue
    .line 2177
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    if-nez v0, :cond_1

    .line 2178
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2180
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    if-nez v0, :cond_0

    .line 2181
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    .line 2183
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2185
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    return-object v0

    .line 2183
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2295
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2289
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 2229
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2230
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2231
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->name:Ljava/lang/String;

    .line 2232
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2234
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->clientMessageType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2235
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->clientMessageType:Ljava/lang/String;

    .line 2236
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2238
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->serverMessageType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2239
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->serverMessageType:Ljava/lang/String;

    .line 2240
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2242
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    if-eqz v1, :cond_3

    .line 2243
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    .line 2244
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2246
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2254
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2255
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2259
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2260
    :sswitch_0
    return-object p0

    .line 2265
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    .line 2269
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->clientMessageType:Ljava/lang/String;

    goto :goto_0

    .line 2273
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->serverMessageType:Ljava/lang/String;

    goto :goto_0

    .line 2277
    :sswitch_4
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    if-nez v1, :cond_1

    .line 2278
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;-><init>()V

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    .line 2280
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2255
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 2171
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

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
    .line 2212
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2213
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2215
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->clientMessageType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2216
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->clientMessageType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2218
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->serverMessageType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2219
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->serverMessageType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2221
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    if-eqz v0, :cond_3

    .line 2222
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2224
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2225
    return-void
.end method
