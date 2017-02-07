.class public final Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$StreetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PanoSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession$Source;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;


# instance fields
.field public infoClicks:Ljava/lang/Integer;

.field public nextClicks:Ljava/lang/Integer;

.field public nodesNavigated:Ljava/lang/Integer;

.field public panosAvailable:Ljava/lang/Integer;

.field public panosViewed:Ljava/lang/Integer;

.field public playPauseClicks:Ljava/lang/Integer;

.field public prevClicks:Ljava/lang/Integer;

.field public source:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9841
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9842
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->clear()Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    .line 9843
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;
    .locals 2

    .prologue
    .line 9804
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    if-nez v0, :cond_1

    .line 9805
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9807
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    if-nez v0, :cond_0

    .line 9808
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    .line 9810
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9812
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    return-object v0

    .line 9810
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10005
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9999
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9846
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosAvailable:Ljava/lang/Integer;

    .line 9847
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosViewed:Ljava/lang/Integer;

    .line 9848
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nodesNavigated:Ljava/lang/Integer;

    .line 9849
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nextClicks:Ljava/lang/Integer;

    .line 9850
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->prevClicks:Ljava/lang/Integer;

    .line 9851
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->playPauseClicks:Ljava/lang/Integer;

    .line 9852
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->infoClicks:Ljava/lang/Integer;

    .line 9853
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9854
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->cachedSize:I

    .line 9855
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;
    .locals 3

    .prologue
    .line 9861
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9865
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;
    return-object v0

    .line 9862
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;
    :catch_0
    move-exception v1

    .line 9863
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
    .line 9789
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

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
    .line 9789
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

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
    .line 9789
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 9901
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9902
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->source:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 9903
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->source:Ljava/lang/Integer;

    .line 9904
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9906
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosAvailable:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 9907
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosAvailable:Ljava/lang/Integer;

    .line 9908
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9910
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosViewed:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 9911
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosViewed:Ljava/lang/Integer;

    .line 9912
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9914
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nodesNavigated:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 9915
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nodesNavigated:Ljava/lang/Integer;

    .line 9916
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9918
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nextClicks:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 9919
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nextClicks:Ljava/lang/Integer;

    .line 9920
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9922
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->prevClicks:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 9923
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->prevClicks:Ljava/lang/Integer;

    .line 9924
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9926
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->playPauseClicks:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 9927
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->playPauseClicks:Ljava/lang/Integer;

    .line 9928
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9930
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->infoClicks:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 9931
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->infoClicks:Ljava/lang/Integer;

    .line 9932
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9934
    :cond_7
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9942
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9943
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9947
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9948
    :sswitch_0
    return-object p0

    .line 9953
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 9954
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 9960
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->source:Ljava/lang/Integer;

    goto :goto_0

    .line 9966
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosAvailable:Ljava/lang/Integer;

    goto :goto_0

    .line 9970
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosViewed:Ljava/lang/Integer;

    goto :goto_0

    .line 9974
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nodesNavigated:Ljava/lang/Integer;

    goto :goto_0

    .line 9978
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nextClicks:Ljava/lang/Integer;

    goto :goto_0

    .line 9982
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->prevClicks:Ljava/lang/Integer;

    goto :goto_0

    .line 9986
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->playPauseClicks:Ljava/lang/Integer;

    goto :goto_0

    .line 9990
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->infoClicks:Ljava/lang/Integer;

    goto :goto_0

    .line 9943
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch

    .line 9954
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .line 9789
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

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
    .line 9872
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->source:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 9873
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->source:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9875
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosAvailable:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 9876
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosAvailable:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9878
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosViewed:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 9879
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->panosViewed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9881
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nodesNavigated:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 9882
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nodesNavigated:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9884
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nextClicks:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 9885
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->nextClicks:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9887
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->prevClicks:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 9888
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->prevClicks:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9890
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->playPauseClicks:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 9891
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->playPauseClicks:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9893
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->infoClicks:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 9894
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->infoClicks:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9896
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9897
    return-void
.end method
