.class public final Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View$Orientation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;


# instance fields
.field public interaction:Ljava/lang/Boolean;

.field public numPanos:Ljava/lang/Integer;

.field public orientation:Ljava/lang/Integer;

.field public withSound:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1225
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1226
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    .line 1227
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;
    .locals 2

    .prologue
    .line 1200
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    if-nez v0, :cond_1

    .line 1201
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1203
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    if-nez v0, :cond_0

    .line 1204
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    .line 1206
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    return-object v0

    .line 1206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1339
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1333
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1230
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->interaction:Ljava/lang/Boolean;

    .line 1231
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->withSound:Ljava/lang/Boolean;

    .line 1232
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->numPanos:Ljava/lang/Integer;

    .line 1233
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1234
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->cachedSize:I

    .line 1235
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;
    .locals 3

    .prologue
    .line 1241
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;
    return-object v0

    .line 1242
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;
    :catch_0
    move-exception v1

    .line 1243
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
    .line 1187
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

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
    .line 1187
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

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
    .line 1187
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1269
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1270
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->orientation:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1271
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->orientation:Ljava/lang/Integer;

    .line 1272
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1274
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->interaction:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 1275
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->interaction:Ljava/lang/Boolean;

    .line 1276
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1278
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->withSound:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 1279
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->withSound:Ljava/lang/Boolean;

    .line 1280
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1282
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->numPanos:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 1283
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->numPanos:Ljava/lang/Integer;

    .line 1284
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1286
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1294
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1295
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1299
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1300
    :sswitch_0
    return-object p0

    .line 1305
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1306
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1310
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->orientation:Ljava/lang/Integer;

    goto :goto_0

    .line 1316
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->interaction:Ljava/lang/Boolean;

    goto :goto_0

    .line 1320
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->withSound:Ljava/lang/Boolean;

    goto :goto_0

    .line 1324
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->numPanos:Ljava/lang/Integer;

    goto :goto_0

    .line 1295
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 1306
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 1187
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

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
    .line 1252
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->orientation:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1253
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->orientation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->interaction:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1256
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->interaction:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1258
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->withSound:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1259
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->withSound:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1261
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->numPanos:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 1262
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->numPanos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1264
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1265
    return-void
.end method
