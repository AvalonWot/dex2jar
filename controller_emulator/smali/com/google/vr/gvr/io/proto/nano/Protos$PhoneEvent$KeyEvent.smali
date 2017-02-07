.class public final Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;


# instance fields
.field private action_:I

.field private bitField0_:I

.field private code_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1298
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1299
    invoke-virtual {p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    .line 1300
    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;
    .locals 2

    .prologue
    .line 1245
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    if-nez v0, :cond_1

    .line 1246
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1248
    :try_start_0
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    if-nez v0, :cond_0

    .line 1249
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    sput-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    .line 1251
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1253
    :cond_1
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    return-object v0

    .line 1251
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1374
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1368
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1303
    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    .line 1304
    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->action_:I

    .line 1305
    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->code_:I

    .line 1306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1307
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->cachedSize:I

    .line 1308
    return-object p0
.end method

.method public clearAction()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;
    .locals 1

    .prologue
    .line 1272
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->action_:I

    .line 1273
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    .line 1274
    return-object p0
.end method

.method public clearCode()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;
    .locals 1

    .prologue
    .line 1291
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->code_:I

    .line 1292
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    .line 1293
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1325
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1326
    .local v0, "size":I
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1327
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->action_:I

    .line 1328
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1330
    :cond_0
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1331
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->code_:I

    .line 1332
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1334
    :cond_1
    return v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 1261
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->action_:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 1280
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->code_:I

    return v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 1269
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCode()Z
    .locals 1

    .prologue
    .line 1288
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

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
    .line 1239
    invoke-virtual {p0, p1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1342
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1343
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1347
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1348
    :sswitch_0
    return-object p0

    .line 1353
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->action_:I

    .line 1354
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    goto :goto_0

    .line 1358
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->code_:I

    .line 1359
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    goto :goto_0

    .line 1343
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setAction(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1264
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->action_:I

    .line 1265
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    .line 1266
    return-object p0
.end method

.method public setCode(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1283
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->code_:I

    .line 1284
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    .line 1285
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
    .line 1314
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1315
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->action_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1317
    :cond_0
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1318
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->code_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1320
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1321
    return-void
.end method
