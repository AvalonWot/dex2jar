.class public final Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Menu"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;


# instance fields
.field public categoryName:Ljava/lang/String;

.field public contentKey:Ljava/lang/String;

.field public pageIndex:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7043
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7044
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->clear()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 7045
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;
    .locals 2

    .prologue
    .line 7021
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-nez v0, :cond_1

    .line 7022
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 7024
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-nez v0, :cond_0

    .line 7025
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 7027
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7029
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    return-object v0

    .line 7027
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7139
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7133
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7048
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->categoryName:Ljava/lang/String;

    .line 7049
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->pageIndex:Ljava/lang/Integer;

    .line 7050
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->contentKey:Ljava/lang/String;

    .line 7051
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7052
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->cachedSize:I

    .line 7053
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;
    .locals 3

    .prologue
    .line 7059
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7063
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;
    return-object v0

    .line 7060
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;
    :catch_0
    move-exception v1

    .line 7061
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
    .line 7015
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

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
    .line 7015
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

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
    .line 7015
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 7084
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7085
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->categoryName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7086
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->categoryName:Ljava/lang/String;

    .line 7087
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7089
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->pageIndex:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 7090
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->pageIndex:Ljava/lang/Integer;

    .line 7091
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7093
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->contentKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7094
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->contentKey:Ljava/lang/String;

    .line 7095
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7097
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7106
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7110
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7111
    :sswitch_0
    return-object p0

    .line 7116
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->categoryName:Ljava/lang/String;

    goto :goto_0

    .line 7120
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->pageIndex:Ljava/lang/Integer;

    goto :goto_0

    .line 7124
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->contentKey:Ljava/lang/String;

    goto :goto_0

    .line 7106
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 7015
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

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
    .line 7070
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->categoryName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7071
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7073
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->pageIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 7074
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->pageIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7076
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->contentKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 7077
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->contentKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7079
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7080
    return-void
.end method
