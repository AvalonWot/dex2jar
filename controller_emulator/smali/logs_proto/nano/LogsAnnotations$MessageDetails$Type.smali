.class public final Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "LogsAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llogs_proto/nano/LogsAnnotations$MessageDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;


# instance fields
.field public logType:Ljava/lang/String;

.field public sourceType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 228
    iput-object v0, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->sourceType:Ljava/lang/String;

    .line 229
    iput-object v0, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->logType:Ljava/lang/String;

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->cachedSize:I

    .line 231
    return-void
.end method

.method public static emptyArray()[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    .locals 2

    .prologue
    .line 208
    sget-object v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->_emptyArray:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    if-nez v0, :cond_1

    .line 209
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    sget-object v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->_emptyArray:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    new-array v0, v0, [Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    sput-object v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->_emptyArray:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    .line 214
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_1
    sget-object v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->_emptyArray:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    return-object v0

    .line 214
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    invoke-direct {v0}, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;-><init>()V

    invoke-virtual {v0, p0}, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    invoke-direct {v0}, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    return-object v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 243
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 244
    .local v0, "size":I
    const/4 v1, 0x1

    iget-object v2, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->sourceType:Ljava/lang/String;

    .line 245
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    const/4 v1, 0x2

    iget-object v2, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->logType:Ljava/lang/String;

    .line 247
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 257
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 261
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    :sswitch_0
    return-object p0

    .line 267
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->sourceType:Ljava/lang/String;

    goto :goto_0

    .line 271
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->logType:Ljava/lang/String;

    goto :goto_0

    .line 257
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
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
    .line 236
    const/4 v0, 0x1

    iget-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->sourceType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 237
    const/4 v0, 0x2

    iget-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->logType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 238
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 239
    return-void
.end method
