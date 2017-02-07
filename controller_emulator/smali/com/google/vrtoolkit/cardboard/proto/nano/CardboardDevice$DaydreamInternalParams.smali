.class public final Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CardboardDevice.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DaydreamInternalParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;


# instance fields
.field public alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

.field private bitField0_:I

.field private version_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 964
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 965
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->clear()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    .line 966
    return-void
.end method

.method public static emptyArray()[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 2

    .prologue
    .line 927
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-nez v0, :cond_1

    .line 928
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 930
    :try_start_0
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-nez v0, :cond_0

    .line 931
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    sput-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    .line 933
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    :cond_1
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    return-object v0

    .line 933
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1084
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1078
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 969
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 970
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 971
    invoke-static {}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->emptyArray()[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    .line 972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 973
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->cachedSize:I

    .line 974
    return-object p0
.end method

.method public clearVersion()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 955
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 956
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
    .line 921
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

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
    .line 921
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 5

    .prologue
    .line 980
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    .local v0, "cloned":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 985
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    iput-object v3, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    .line 986
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 987
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 988
    iget-object v3, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    move-result-object v4

    aput-object v4, v3, v2

    .line 986
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 981
    .end local v0    # "cloned":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 982
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 992
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "cloned":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    :cond_1
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
    .line 921
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 1015
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 1016
    .local v2, "size":I
    iget v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1017
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 1018
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1020
    :cond_0
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 1021
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 1022
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    aget-object v0, v3, v1

    .line 1023
    .local v0, "element":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    if-eqz v0, :cond_1

    .line 1024
    const/4 v3, 0x2

    .line 1025
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1021
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1029
    .end local v0    # "element":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 951
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

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
    .line 921
    invoke-virtual {p0, p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1037
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1038
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1042
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1043
    :sswitch_0
    return-object p0

    .line 1048
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 1049
    iget v5, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    goto :goto_0

    .line 1053
    :sswitch_2
    const/16 v5, 0x12

    .line 1054
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1055
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-nez v5, :cond_2

    move v1, v4

    .line 1056
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    .line 1058
    .local v2, "newArray":[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    if-eqz v1, :cond_1

    .line 1059
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1061
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1062
    new-instance v5, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    invoke-direct {v5}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;-><init>()V

    aput-object v5, v2, v1

    .line 1063
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1064
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1061
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1055
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    :cond_2
    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v1, v5

    goto :goto_1

    .line 1067
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    :cond_3
    new-instance v5, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    invoke-direct {v5}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;-><init>()V

    aput-object v5, v2, v1

    .line 1068
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1069
    iput-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    goto :goto_0

    .line 1038
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setVersion(I)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 946
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 947
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 948
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1000
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1002
    :cond_0
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 1003
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1004
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    aget-object v0, v2, v1

    .line 1005
    .local v0, "element":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    if-eqz v0, :cond_1

    .line 1006
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1003
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1010
    .end local v0    # "element":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    .end local v1    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1011
    return-void
.end method
