.class public final Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Preferences.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserPrefs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs$Handedness;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;


# instance fields
.field private bitField0_:I

.field private controllerHandedness_:I

.field public developerPrefs:Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->clear()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    .line 61
    return-void
.end method

.method public static emptyArray()[Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    if-nez v0, :cond_1

    .line 23
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    sput-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->bitField0_:I

    .line 65
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->controllerHandedness_:I

    .line 66
    iput-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->developerPrefs:Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    .line 67
    iput-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->cachedSize:I

    .line 69
    return-object p0
.end method

.method public clearControllerHandedness()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->controllerHandedness_:I

    .line 50
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->bitField0_:I

    .line 51
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
    .line 10
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

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
    .line 10
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
    .locals 3

    .prologue
    .line 75
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .local v0, "cloned":Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->developerPrefs:Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->developerPrefs:Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    invoke-virtual {v2}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    move-result-object v2

    iput-object v2, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->developerPrefs:Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    .line 82
    :cond_0
    return-object v0

    .line 76
    .end local v0    # "cloned":Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
    :catch_0
    move-exception v1

    .line 77
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
    .line 10
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 101
    .local v0, "size":I
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->controllerHandedness_:I

    .line 103
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->developerPrefs:Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    if-eqz v1, :cond_1

    .line 106
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->developerPrefs:Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    .line 107
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_1
    return v0
.end method

.method public getControllerHandedness()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->controllerHandedness_:I

    return v0
.end method

.method public hasControllerHandedness()Z
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->bitField0_:I

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
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 118
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 122
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    :sswitch_0
    return-object p0

    .line 128
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 129
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->controllerHandedness_:I

    .line 133
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->bitField0_:I

    goto :goto_0

    .line 139
    .end local v1    # "value":I
    :sswitch_2
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->developerPrefs:Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    if-nez v2, :cond_1

    .line 140
    new-instance v2, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    invoke-direct {v2}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;-><init>()V

    iput-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->developerPrefs:Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->developerPrefs:Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setControllerHandedness(I)Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->controllerHandedness_:I

    .line 42
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->bitField0_:I

    .line 43
    return-object p0
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
    .line 89
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->controllerHandedness_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->developerPrefs:Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    if-eqz v0, :cond_1

    .line 93
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;->developerPrefs:Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$DeveloperPrefs;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 95
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 96
    return-void
.end method
