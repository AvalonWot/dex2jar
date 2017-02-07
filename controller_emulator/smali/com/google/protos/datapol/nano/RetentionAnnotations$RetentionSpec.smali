.class public final Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "RetentionAnnotations.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/datapol/nano/RetentionAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RetentionSpec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;


# instance fields
.field public context:Ljava/lang/String;

.field public desiredRetention:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->clear()Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    .line 54
    return-void
.end method

.method public static emptyArray()[Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->_emptyArray:[Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    if-nez v0, :cond_1

    .line 34
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->_emptyArray:[Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    sput-object v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->_emptyArray:[Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->_emptyArray:[Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->cachedSize:I

    .line 60
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
    .line 27
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->clone()Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

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
    .line 27
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->clone()Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    .locals 3

    .prologue
    .line 66
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .local v0, "cloned":Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    return-object v0

    .line 67
    .end local v0    # "cloned":Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    :catch_0
    move-exception v1

    .line 68
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
    .line 27
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->clone()Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 89
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->desiredRetention:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->desiredRetention:Ljava/lang/Integer;

    .line 91
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 94
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context:Ljava/lang/String;

    .line 95
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_1
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
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 106
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 110
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    :sswitch_0
    return-object p0

    .line 116
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 117
    .local v1, "value":I
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 131
    :sswitch_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->desiredRetention:Ljava/lang/Integer;

    goto :goto_0

    .line 137
    .end local v1    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context:Ljava/lang/String;

    goto :goto_0

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
    .end sparse-switch

    .line 117
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0xa -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x1e -> :sswitch_2
        0x28 -> :sswitch_2
        0x32 -> :sswitch_2
        0x3a -> :sswitch_2
        0x3c -> :sswitch_2
        0x46 -> :sswitch_2
        0x50 -> :sswitch_2
        0x3e8 -> :sswitch_2
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
    .line 77
    iget-object v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->desiredRetention:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->desiredRetention:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 83
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 84
    return-void
.end method
