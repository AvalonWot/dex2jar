.class public final Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OrientationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;


# instance fields
.field private bitField0_:I

.field private timestamp_:J

.field private w_:F

.field private x_:F

.field private y_:F

.field private z_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1120
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1121
    invoke-virtual {p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    .line 1122
    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
    .locals 2

    .prologue
    .line 1010
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    if-nez v0, :cond_1

    .line 1011
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1013
    :try_start_0
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    if-nez v0, :cond_0

    .line 1014
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    sput-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    .line 1016
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    :cond_1
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    return-object v0

    .line 1016
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1235
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1229
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1125
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    .line 1126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->timestamp_:J

    .line 1127
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->x_:F

    .line 1128
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->y_:F

    .line 1129
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->z_:F

    .line 1130
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->w_:F

    .line 1131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1132
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->cachedSize:I

    .line 1133
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
    .locals 2

    .prologue
    .line 1037
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->timestamp_:J

    .line 1038
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    .line 1039
    return-object p0
.end method

.method public clearW()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
    .locals 1

    .prologue
    .line 1113
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->w_:F

    .line 1114
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    .line 1115
    return-object p0
.end method

.method public clearX()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->x_:F

    .line 1057
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    .line 1058
    return-object p0
.end method

.method public clearY()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->y_:F

    .line 1076
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    .line 1077
    return-object p0
.end method

.method public clearZ()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
    .locals 1

    .prologue
    .line 1094
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->z_:F

    .line 1095
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    .line 1096
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 1159
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1160
    .local v0, "size":I
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1161
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->timestamp_:J

    .line 1162
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1164
    :cond_0
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1165
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->x_:F

    .line 1166
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1168
    :cond_1
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1169
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->y_:F

    .line 1170
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1172
    :cond_2
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1173
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->z_:F

    .line 1174
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1176
    :cond_3
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1177
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->w_:F

    .line 1178
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1180
    :cond_4
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 1026
    iget-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->timestamp_:J

    return-wide v0
.end method

.method public getW()F
    .locals 1

    .prologue
    .line 1102
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->w_:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->x_:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1064
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->y_:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 1083
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->z_:F

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 1034
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasW()Z
    .locals 1

    .prologue
    .line 1110
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasX()Z
    .locals 1

    .prologue
    .line 1053
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasY()Z
    .locals 1

    .prologue
    .line 1072
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasZ()Z
    .locals 1

    .prologue
    .line 1091
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 1004
    invoke-virtual {p0, p1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1188
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1189
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1193
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1194
    :sswitch_0
    return-object p0

    .line 1199
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->timestamp_:J

    .line 1200
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    goto :goto_0

    .line 1204
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->x_:F

    .line 1205
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    goto :goto_0

    .line 1209
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->y_:F

    .line 1210
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    goto :goto_0

    .line 1214
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->z_:F

    .line 1215
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    goto :goto_0

    .line 1219
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->w_:F

    .line 1220
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    goto :goto_0

    .line 1189
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
    .end sparse-switch
.end method

.method public setTimestamp(J)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1029
    iput-wide p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->timestamp_:J

    .line 1030
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    .line 1031
    return-object p0
.end method

.method public setW(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1105
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->w_:F

    .line 1106
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    .line 1107
    return-object p0
.end method

.method public setX(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1048
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->x_:F

    .line 1049
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    .line 1050
    return-object p0
.end method

.method public setY(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1067
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->y_:F

    .line 1068
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    .line 1069
    return-object p0
.end method

.method public setZ(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1086
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->z_:F

    .line 1087
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    .line 1088
    return-object p0
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
    .line 1139
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1140
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->timestamp_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1142
    :cond_0
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1143
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->x_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1145
    :cond_1
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1146
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->y_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1148
    :cond_2
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1149
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->z_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1151
    :cond_3
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1152
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->w_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1154
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1155
    return-void
.end method
