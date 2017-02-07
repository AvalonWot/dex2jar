.class public final Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SemanticAnnotations.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/datapol/nano/SemanticAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationQualifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;


# instance fields
.field public nonUserLocation:Ljava/lang/Boolean;

.field public preciseLocation:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 485
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->clear()Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    .line 486
    return-void
.end method

.method public static emptyArray()[Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    .locals 2

    .prologue
    .line 465
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    if-nez v0, :cond_1

    .line 466
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_0
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    .line 471
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :cond_1
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    return-object v0

    .line 471
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    new-instance v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 562
    new-instance v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation:Ljava/lang/Boolean;

    .line 490
    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation:Ljava/lang/Boolean;

    .line 491
    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 492
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->cachedSize:I

    .line 493
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
    .line 459
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->clone()Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

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
    .line 459
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->clone()Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    .locals 3

    .prologue
    .line 499
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .local v0, "cloned":Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    return-object v0

    .line 500
    .end local v0    # "cloned":Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    :catch_0
    move-exception v1

    .line 501
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
    .line 459
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->clone()Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 521
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 522
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 523
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation:Ljava/lang/Boolean;

    .line 524
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 527
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation:Ljava/lang/Boolean;

    .line 528
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 530
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
    .line 459
    invoke-virtual {p0, p1}, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 539
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 543
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    :sswitch_0
    return-object p0

    .line 549
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation:Ljava/lang/Boolean;

    goto :goto_0

    .line 553
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation:Ljava/lang/Boolean;

    goto :goto_0

    .line 539
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 510
    iget-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 511
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 514
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 516
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 517
    return-void
.end method
