.class public final Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;
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
    name = "QrCodeScan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;


# instance fields
.field public headMountConfigUrl:Ljava/lang/String;

.field public status:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3047
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3048
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->clear()Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 3049
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;
    .locals 2

    .prologue
    .line 3028
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-nez v0, :cond_1

    .line 3029
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3031
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-nez v0, :cond_0

    .line 3032
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 3034
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3036
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    return-object v0

    .line 3034
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3138
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3132
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3052
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->headMountConfigUrl:Ljava/lang/String;

    .line 3053
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3054
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->cachedSize:I

    .line 3055
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;
    .locals 3

    .prologue
    .line 3061
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3065
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;
    return-object v0

    .line 3062
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;
    :catch_0
    move-exception v1

    .line 3063
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
    .line 3014
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->clone()Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

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
    .line 3014
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->clone()Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

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
    .line 3014
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->clone()Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 3083
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3084
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->status:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3085
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->status:Ljava/lang/Integer;

    .line 3086
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3088
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->headMountConfigUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3089
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->headMountConfigUrl:Ljava/lang/String;

    .line 3090
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3092
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3101
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3105
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3106
    :sswitch_0
    return-object p0

    .line 3111
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3112
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3117
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->status:Ljava/lang/Integer;

    goto :goto_0

    .line 3123
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->headMountConfigUrl:Ljava/lang/String;

    goto :goto_0

    .line 3101
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 3112
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 3014
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

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
    .line 3072
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->status:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3073
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->status:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3075
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->headMountConfigUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3076
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->headMountConfigUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3078
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3079
    return-void
.end method
