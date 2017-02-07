.class public final Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UninterpretedOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# instance fields
.field public aggregateValue:Ljava/lang/String;

.field public doubleValue:Ljava/lang/Double;

.field public identifierValue:Ljava/lang/String;

.field public name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

.field public negativeIntValue:Ljava/lang/Long;

.field public positiveIntValue:Ljava/lang/Long;

.field public stringValue:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5121
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5122
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    .line 5123
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    .line 5124
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:Ljava/lang/Long;

    .line 5125
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:Ljava/lang/Long;

    .line 5126
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:Ljava/lang/Double;

    .line 5127
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    .line 5128
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    .line 5129
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->cachedSize:I

    .line 5130
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 5087
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v0, :cond_1

    .line 5088
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5090
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v0, :cond_0

    .line 5091
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 5093
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5095
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    return-object v0

    .line 5093
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5274
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5268
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 5166
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 5167
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 5168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 5169
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    aget-object v0, v3, v1

    .line 5170
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    if-eqz v0, :cond_0

    .line 5171
    const/4 v3, 0x2

    .line 5172
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5168
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5176
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 5177
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    .line 5178
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5180
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 5181
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:Ljava/lang/Long;

    .line 5182
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5184
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:Ljava/lang/Long;

    if-eqz v3, :cond_4

    .line 5185
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:Ljava/lang/Long;

    .line 5186
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5188
    :cond_4
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:Ljava/lang/Double;

    if-eqz v3, :cond_5

    .line 5189
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:Ljava/lang/Double;

    .line 5190
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 5192
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    if-eqz v3, :cond_6

    .line 5193
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    .line 5194
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 5196
    :cond_6
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 5197
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    .line 5198
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5200
    :cond_7
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5208
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 5209
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 5213
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5214
    :sswitch_0
    return-object p0

    .line 5219
    :sswitch_1
    const/16 v5, 0x12

    .line 5220
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5221
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    if-nez v5, :cond_2

    move v1, v4

    .line 5222
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    .line 5224
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    if-eqz v1, :cond_1

    .line 5225
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5227
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 5228
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;-><init>()V

    aput-object v5, v2, v1

    .line 5229
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5230
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5227
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5221
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    array-length v1, v5

    goto :goto_1

    .line 5233
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    :cond_3
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;-><init>()V

    aput-object v5, v2, v1

    .line 5234
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5235
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    goto :goto_0

    .line 5239
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    goto :goto_0

    .line 5243
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:Ljava/lang/Long;

    goto :goto_0

    .line 5247
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:Ljava/lang/Long;

    goto :goto_0

    .line 5251
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:Ljava/lang/Double;

    goto :goto_0

    .line 5255
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    goto :goto_0

    .line 5259
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    goto/16 :goto_0

    .line 5209
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x31 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
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
    .line 4993
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5135
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 5136
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 5137
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    aget-object v0, v2, v1

    .line 5138
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    if-eqz v0, :cond_0

    .line 5139
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5136
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5143
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 5144
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5146
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 5147
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 5149
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 5150
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5152
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:Ljava/lang/Double;

    if-eqz v2, :cond_5

    .line 5153
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5155
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    if-eqz v2, :cond_6

    .line 5156
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 5158
    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 5159
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5161
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5162
    return-void
.end method
