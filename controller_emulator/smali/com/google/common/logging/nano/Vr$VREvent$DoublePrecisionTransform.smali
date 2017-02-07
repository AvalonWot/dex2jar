.class public final Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;
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
    name = "DoublePrecisionTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;


# instance fields
.field public rotationQx:Ljava/lang/Double;

.field public rotationQy:Ljava/lang/Double;

.field public rotationQz:Ljava/lang/Double;

.field public scale:Ljava/lang/Double;

.field public translationX:Ljava/lang/Double;

.field public translationY:Ljava/lang/Double;

.field public translationZ:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 832
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->clear()Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 833
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;
    .locals 2

    .prologue
    .line 797
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-nez v0, :cond_1

    .line 798
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 800
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-nez v0, :cond_0

    .line 801
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 803
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    return-object v0

    .line 803
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 975
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 969
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 836
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationX:Ljava/lang/Double;

    .line 837
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationY:Ljava/lang/Double;

    .line 838
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationZ:Ljava/lang/Double;

    .line 839
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQx:Ljava/lang/Double;

    .line 840
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQy:Ljava/lang/Double;

    .line 841
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQz:Ljava/lang/Double;

    .line 842
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->scale:Ljava/lang/Double;

    .line 843
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 844
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->cachedSize:I

    .line 845
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;
    .locals 3

    .prologue
    .line 851
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;
    return-object v0

    .line 852
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;
    :catch_0
    move-exception v1

    .line 853
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
    .line 791
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

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
    .line 791
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

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
    .line 791
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 888
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 889
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationX:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 890
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationX:Ljava/lang/Double;

    .line 891
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 893
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationY:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 894
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationY:Ljava/lang/Double;

    .line 895
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 897
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationZ:Ljava/lang/Double;

    if-eqz v1, :cond_2

    .line 898
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationZ:Ljava/lang/Double;

    .line 899
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 901
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQx:Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 902
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQx:Ljava/lang/Double;

    .line 903
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 905
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQy:Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 906
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQy:Ljava/lang/Double;

    .line 907
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 909
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQz:Ljava/lang/Double;

    if-eqz v1, :cond_5

    .line 910
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQz:Ljava/lang/Double;

    .line 911
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 913
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->scale:Ljava/lang/Double;

    if-eqz v1, :cond_6

    .line 914
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->scale:Ljava/lang/Double;

    .line 915
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 917
    :cond_6
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 925
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 926
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 930
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 931
    :sswitch_0
    return-object p0

    .line 936
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationX:Ljava/lang/Double;

    goto :goto_0

    .line 940
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationY:Ljava/lang/Double;

    goto :goto_0

    .line 944
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationZ:Ljava/lang/Double;

    goto :goto_0

    .line 948
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQx:Ljava/lang/Double;

    goto :goto_0

    .line 952
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQy:Ljava/lang/Double;

    goto :goto_0

    .line 956
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQz:Ljava/lang/Double;

    goto :goto_0

    .line 960
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->scale:Ljava/lang/Double;

    goto :goto_0

    .line 926
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x19 -> :sswitch_3
        0x21 -> :sswitch_4
        0x29 -> :sswitch_5
        0x31 -> :sswitch_6
        0x39 -> :sswitch_7
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
    .line 791
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    move-result-object v0

    return-object v0
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
    .line 862
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationX:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 863
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationX:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationY:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 866
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationY:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationZ:Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 869
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->translationZ:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 871
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQx:Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 872
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQx:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 874
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQy:Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 875
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQy:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 877
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQz:Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 878
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->rotationQz:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 880
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->scale:Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 881
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->scale:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 883
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 884
    return-void
.end method
