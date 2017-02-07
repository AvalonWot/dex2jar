.class public final Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
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
    name = "Qualifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;


# instance fields
.field public autoDeleteWithinWipeout:Ljava/lang/Boolean;

.field public hasExplicitConsent:Ljava/lang/Boolean;

.field public isEncrypted:Ljava/lang/Boolean;

.field public isGoogle:Ljava/lang/Boolean;

.field public isPartner:Ljava/lang/Boolean;

.field public isPublic:Ljava/lang/Boolean;

.field public isPublisher:Ljava/lang/Boolean;

.field public limitedAccess:Ljava/lang/Boolean;

.field public nonUserLocation:Ljava/lang/Boolean;

.field public otherUser:Ljava/lang/Boolean;

.field public relatedField:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 264
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->clear()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    .line 265
    return-void
.end method

.method public static emptyArray()[Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    if-nez v0, :cond_1

    .line 218
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    :try_start_0
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    .line 223
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_1
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    new-instance v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic:Ljava/lang/Boolean;

    .line 269
    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle:Ljava/lang/Boolean;

    .line 270
    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser:Ljava/lang/Boolean;

    .line 271
    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner:Ljava/lang/Boolean;

    .line 272
    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher:Ljava/lang/Boolean;

    .line 273
    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent:Ljava/lang/Boolean;

    .line 274
    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted:Ljava/lang/Boolean;

    .line 275
    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField:Ljava/lang/Integer;

    .line 276
    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation:Ljava/lang/Boolean;

    .line 277
    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess:Ljava/lang/Boolean;

    .line 278
    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout:Ljava/lang/Boolean;

    .line 279
    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 280
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->cachedSize:I

    .line 281
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
    .line 211
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->clone()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

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
    .line 211
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->clone()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 3

    .prologue
    .line 287
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .local v0, "cloned":Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    return-object v0

    .line 288
    .end local v0    # "cloned":Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    :catch_0
    move-exception v1

    .line 289
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
    .line 211
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->clone()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 336
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 337
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 338
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic:Ljava/lang/Boolean;

    .line 339
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 342
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle:Ljava/lang/Boolean;

    .line 343
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 346
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser:Ljava/lang/Boolean;

    .line 347
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 350
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner:Ljava/lang/Boolean;

    .line 351
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_3
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 354
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher:Ljava/lang/Boolean;

    .line 355
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 357
    :cond_4
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 358
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent:Ljava/lang/Boolean;

    .line 359
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 361
    :cond_5
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 362
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted:Ljava/lang/Boolean;

    .line 363
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_6
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 366
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField:Ljava/lang/Integer;

    .line 367
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_7
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 370
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation:Ljava/lang/Boolean;

    .line 371
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    :cond_8
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 374
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess:Ljava/lang/Boolean;

    .line 375
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    :cond_9
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 378
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout:Ljava/lang/Boolean;

    .line 379
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_a
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
    .line 211
    invoke-virtual {p0, p1}, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 390
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 394
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    :sswitch_0
    return-object p0

    .line 400
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic:Ljava/lang/Boolean;

    goto :goto_0

    .line 404
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle:Ljava/lang/Boolean;

    goto :goto_0

    .line 408
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser:Ljava/lang/Boolean;

    goto :goto_0

    .line 412
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner:Ljava/lang/Boolean;

    goto :goto_0

    .line 416
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher:Ljava/lang/Boolean;

    goto :goto_0

    .line 420
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent:Ljava/lang/Boolean;

    goto :goto_0

    .line 424
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted:Ljava/lang/Boolean;

    goto :goto_0

    .line 428
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField:Ljava/lang/Integer;

    goto :goto_0

    .line 432
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation:Ljava/lang/Boolean;

    goto :goto_0

    .line 436
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess:Ljava/lang/Boolean;

    goto :goto_0

    .line 440
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 390
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
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
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
    .line 298
    iget-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 302
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 305
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 308
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 311
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 314
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 317
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 319
    :cond_6
    iget-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 320
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 322
    :cond_7
    iget-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 323
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 325
    :cond_8
    iget-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 326
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 328
    :cond_9
    iget-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 329
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 331
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 332
    return-void
.end method
