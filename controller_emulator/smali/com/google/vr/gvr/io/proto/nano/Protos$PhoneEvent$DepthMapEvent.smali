.class public final Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DepthMapEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;


# instance fields
.field private bitField0_:I

.field private height_:I

.field private timestamp_:J

.field private width_:I

.field public zDistances:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 862
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 863
    invoke-virtual {p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    .line 864
    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;
    .locals 2

    .prologue
    .line 787
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    if-nez v0, :cond_1

    .line 788
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 790
    :try_start_0
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    if-nez v0, :cond_0

    .line 791
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    sput-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    .line 793
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    :cond_1
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    return-object v0

    .line 793
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1000
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 994
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 867
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    .line 868
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->timestamp_:J

    .line 869
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->width_:I

    .line 870
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->height_:I

    .line 871
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    .line 872
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 873
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->cachedSize:I

    .line 874
    return-object p0
.end method

.method public clearHeight()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;
    .locals 1

    .prologue
    .line 852
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->height_:I

    .line 853
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    .line 854
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;
    .locals 2

    .prologue
    .line 814
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->timestamp_:J

    .line 815
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    .line 816
    return-object p0
.end method

.method public clearWidth()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;
    .locals 1

    .prologue
    .line 833
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->width_:I

    .line 834
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    .line 835
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 902
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 903
    .local v1, "size":I
    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 904
    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->timestamp_:J

    .line 905
    invoke-static {v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 907
    :cond_0
    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 908
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->width_:I

    .line 909
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 911
    :cond_1
    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 912
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->height_:I

    .line 913
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 915
    :cond_2
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    array-length v2, v2

    if-lez v2, :cond_3

    .line 916
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x4

    .line 917
    .local v0, "dataSize":I
    add-int/2addr v1, v0

    .line 918
    add-int/lit8 v1, v1, 0x1

    .line 920
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 922
    .end local v0    # "dataSize":I
    :cond_3
    return v1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 841
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->height_:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 803
    iget-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->timestamp_:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 822
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->width_:I

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    .prologue
    .line 849
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWidth()Z
    .locals 1

    .prologue
    .line 830
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 781
    invoke-virtual {p0, p1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;
    .locals 10
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 930
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    .line 931
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 935
    invoke-super {p0, p1, v5}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 936
    :sswitch_0
    return-object p0

    .line 941
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->timestamp_:J

    .line 942
    iget v7, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    goto :goto_0

    .line 946
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->width_:I

    .line 947
    iget v7, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    goto :goto_0

    .line 951
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->height_:I

    .line 952
    iget v7, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    goto :goto_0

    .line 956
    :sswitch_4
    const/16 v7, 0x25

    .line 957
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 958
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    if-nez v7, :cond_2

    move v1, v6

    .line 959
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 960
    .local v4, "newArray":[F
    if-eqz v1, :cond_1

    .line 961
    iget-object v7, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 963
    :cond_1
    :goto_2
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    .line 964
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 965
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 963
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 958
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_2
    iget-object v7, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    array-length v1, v7

    goto :goto_1

    .line 968
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 969
    iput-object v4, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    goto :goto_0

    .line 973
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 974
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 975
    .local v3, "limit":I
    div-int/lit8 v0, v2, 0x4

    .line 976
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    if-nez v7, :cond_5

    move v1, v6

    .line 977
    .restart local v1    # "i":I
    :goto_3
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 978
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_4

    .line 979
    iget-object v7, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 981
    :cond_4
    :goto_4
    array-length v7, v4

    if-ge v1, v7, :cond_6

    .line 982
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 981
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 976
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_5
    iget-object v7, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    array-length v1, v7

    goto :goto_3

    .line 984
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_6
    iput-object v4, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    .line 985
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 931
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_5
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public setHeight(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 844
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->height_:I

    .line 845
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    .line 846
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 806
    iput-wide p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->timestamp_:J

    .line 807
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    .line 808
    return-object p0
.end method

.method public setWidth(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 825
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->width_:I

    .line 826
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    .line 827
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
    .line 880
    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 881
    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->timestamp_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 883
    :cond_0
    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 884
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->width_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 886
    :cond_1
    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 887
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->height_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 889
    :cond_2
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    array-length v2, v2

    if-lez v2, :cond_3

    .line 890
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x4

    .line 891
    .local v0, "dataSize":I
    const/16 v2, 0x22

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 892
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 893
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 894
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 893
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 897
    .end local v0    # "dataSize":I
    .end local v1    # "i":I
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 898
    return-void
.end method
