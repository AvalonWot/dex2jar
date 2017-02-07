.class public final Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$Photos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenMedia"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia$MediaSource;,
        Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia$MediaType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;


# instance fields
.field public isSample:Ljava/lang/Boolean;

.field public source:Ljava/lang/Integer;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1833
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    .line 1834
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;
    .locals 2

    .prologue
    .line 1810
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    if-nez v0, :cond_1

    .line 1811
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1813
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    if-nez v0, :cond_0

    .line 1814
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    .line 1816
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1818
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    return-object v0

    .line 1816
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1943
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1937
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1837
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->isSample:Ljava/lang/Boolean;

    .line 1838
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1839
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->cachedSize:I

    .line 1840
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;
    .locals 3

    .prologue
    .line 1846
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1850
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;
    return-object v0

    .line 1847
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;
    :catch_0
    move-exception v1

    .line 1848
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
    .line 1787
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

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
    .line 1787
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

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
    .line 1787
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1871
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1872
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1873
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->type:Ljava/lang/Integer;

    .line 1874
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1876
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->source:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1877
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->source:Ljava/lang/Integer;

    .line 1878
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1880
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->isSample:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 1881
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->isSample:Ljava/lang/Boolean;

    .line 1882
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1884
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1892
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1893
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1897
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1898
    :sswitch_0
    return-object p0

    .line 1903
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1904
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1910
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->type:Ljava/lang/Integer;

    goto :goto_0

    .line 1916
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1917
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1922
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->source:Ljava/lang/Integer;

    goto :goto_0

    .line 1928
    .end local v1    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->isSample:Ljava/lang/Boolean;

    goto :goto_0

    .line 1893
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 1904
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1917
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1787
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

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
    .line 1857
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1858
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1860
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->source:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1861
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->source:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1863
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->isSample:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1864
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->isSample:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1866
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1867
    return-void
.end method
