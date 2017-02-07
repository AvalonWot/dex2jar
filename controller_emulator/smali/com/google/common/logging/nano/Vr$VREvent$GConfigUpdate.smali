.class public final Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
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
    name = "GConfigUpdate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;


# instance fields
.field public gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10245
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10246
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->clear()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 10247
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
    .locals 2

    .prologue
    .line 10229
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-nez v0, :cond_1

    .line 10230
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10232
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-nez v0, :cond_0

    .line 10233
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 10235
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10237
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    return-object v0

    .line 10235
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10351
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10345
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
    .locals 1

    .prologue
    .line 10250
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    .line 10251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10252
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->cachedSize:I

    .line 10253
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
    .locals 5

    .prologue
    .line 10259
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10263
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 10264
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    .line 10265
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 10266
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 10267
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    move-result-object v4

    aput-object v4, v3, v2

    .line 10265
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10260
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 10261
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 10271
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10110
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

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
    .line 10110
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

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
    .line 10110
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 10291
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 10292
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 10293
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 10294
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    aget-object v0, v3, v1

    .line 10295
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
    if-eqz v0, :cond_0

    .line 10296
    const/4 v3, 0x1

    .line 10297
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 10293
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10301
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 10309
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 10310
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 10314
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 10315
    :sswitch_0
    return-object p0

    .line 10320
    :sswitch_1
    const/16 v5, 0xa

    .line 10321
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 10322
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-nez v5, :cond_2

    move v1, v4

    .line 10323
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    .line 10325
    .local v2, "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
    if-eqz v1, :cond_1

    .line 10326
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10328
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 10329
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;-><init>()V

    aput-object v5, v2, v1

    .line 10330
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 10331
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10328
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10322
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
    :cond_2
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v1, v5

    goto :goto_1

    .line 10334
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
    :cond_3
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;-><init>()V

    aput-object v5, v2, v1

    .line 10335
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 10336
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    goto :goto_0

    .line 10310
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 10110
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10278
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 10279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 10280
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    aget-object v0, v2, v1

    .line 10281
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
    if-eqz v0, :cond_0

    .line 10282
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10279
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10286
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10287
    return-void
.end method
