.class public final Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto$Label;,
        Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;


# instance fields
.field public defaultValue:Ljava/lang/String;

.field public extendee:Ljava/lang/String;

.field public jsonName:Ljava/lang/String;

.field public label:I

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/Integer;

.field public oneofIndex:Ljava/lang/Integer;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

.field public type:I

.field public typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 1285
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1286
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->name:Ljava/lang/String;

    .line 1287
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->number:Ljava/lang/Integer;

    .line 1288
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->label:I

    .line 1289
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->type:I

    .line 1290
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->typeName:Ljava/lang/String;

    .line 1291
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->extendee:Ljava/lang/String;

    .line 1292
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->defaultValue:Ljava/lang/String;

    .line 1293
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->oneofIndex:Ljava/lang/Integer;

    .line 1294
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->jsonName:Ljava/lang/String;

    .line 1295
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->cachedSize:I

    .line 1296
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    .locals 2

    .prologue
    .line 1242
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-nez v0, :cond_1

    .line 1243
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1245
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-nez v0, :cond_0

    .line 1246
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    .line 1248
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    return-object v0

    .line 1248
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1479
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1473
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 1336
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1337
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1338
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->name:Ljava/lang/String;

    .line 1339
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1341
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->extendee:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1342
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->extendee:Ljava/lang/String;

    .line 1343
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1345
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->number:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1346
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->number:Ljava/lang/Integer;

    .line 1347
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1349
    :cond_2
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->label:I

    if-eq v1, v3, :cond_3

    .line 1350
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->label:I

    .line 1351
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1353
    :cond_3
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->type:I

    if-eq v1, v3, :cond_4

    .line 1354
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->type:I

    .line 1355
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1357
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->typeName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1358
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->typeName:Ljava/lang/String;

    .line 1359
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1361
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->defaultValue:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1362
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->defaultValue:Ljava/lang/String;

    .line 1363
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1365
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    if-eqz v1, :cond_7

    .line 1366
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    .line 1367
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1369
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->oneofIndex:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 1370
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->oneofIndex:Ljava/lang/Integer;

    .line 1371
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1373
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->jsonName:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1374
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->jsonName:Ljava/lang/String;

    .line 1375
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1377
    :cond_9
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1385
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1386
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1390
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1391
    :sswitch_0
    return-object p0

    .line 1396
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    .line 1400
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->extendee:Ljava/lang/String;

    goto :goto_0

    .line 1404
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->number:Ljava/lang/Integer;

    goto :goto_0

    .line 1408
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1409
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1413
    :pswitch_0
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->label:I

    goto :goto_0

    .line 1419
    .end local v1    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1420
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1439
    :pswitch_1
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->type:I

    goto :goto_0

    .line 1445
    .end local v1    # "value":I
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->typeName:Ljava/lang/String;

    goto :goto_0

    .line 1449
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->defaultValue:Ljava/lang/String;

    goto :goto_0

    .line 1453
    :sswitch_8
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    if-nez v2, :cond_1

    .line 1454
    new-instance v2, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    invoke-direct {v2}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;-><init>()V

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    .line 1456
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1460
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->oneofIndex:Ljava/lang/Integer;

    goto :goto_0

    .line 1464
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->jsonName:Ljava/lang/String;

    goto :goto_0

    .line 1386
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch

    .line 1409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1420
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
    .line 1207
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

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
    const/high16 v2, -0x80000000

    .line 1301
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1302
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->extendee:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1305
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->extendee:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1307
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->number:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1308
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->number:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1310
    :cond_2
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->label:I

    if-eq v0, v2, :cond_3

    .line 1311
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->label:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1313
    :cond_3
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->type:I

    if-eq v0, v2, :cond_4

    .line 1314
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1316
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->typeName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1317
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->typeName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1319
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->defaultValue:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1320
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->defaultValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1322
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    if-eqz v0, :cond_7

    .line 1323
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1325
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->oneofIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 1326
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->oneofIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1328
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->jsonName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1329
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->jsonName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1331
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1332
    return-void
.end method
