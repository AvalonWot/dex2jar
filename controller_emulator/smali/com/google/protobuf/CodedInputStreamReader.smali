.class final Lcom/google/protobuf/CodedInputStreamReader;
.super Ljava/lang/Object;
.source "CodedInputStreamReader.java"

# interfaces
.implements Lcom/google/protobuf/Reader;


# static fields
.field private static final FIXED32_MULTIPLE_MASK:I = 0x3

.field private static final FIXED64_MULTIPLE_MASK:I = 0x7

.field private static final NEXT_TAG_UNSET:I


# instance fields
.field private endGroupTag:I

.field private final input:Lcom/google/protobuf/CodedInputStream;

.field private nextTag:I

.field private tag:I


# direct methods
.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;)V
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    .line 37
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    iput-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 38
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    iput-object p0, v0, Lcom/google/protobuf/CodedInputStream;->wrapper:Lcom/google/protobuf/CodedInputStreamReader;

    .line 39
    return-void
.end method

.method public static forCodedInput(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/CodedInputStreamReader;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->wrapper:Lcom/google/protobuf/CodedInputStreamReader;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->wrapper:Lcom/google/protobuf/CodedInputStreamReader;

    .line 33
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/protobuf/CodedInputStreamReader;

    invoke-direct {v0, p0}, Lcom/google/protobuf/CodedInputStreamReader;-><init>(Lcom/google/protobuf/CodedInputStream;)V

    goto :goto_0
.end method

.method private readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1198
    .local p2, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/google/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1234
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1200
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1232
    :goto_0
    return-object v0

    .line 1202
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_0

    .line 1204
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 1206
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1208
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1210
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1212
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1214
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1216
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1218
    :pswitch_9
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1220
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1222
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1224
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1226
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1228
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1230
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1232
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 1198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 4
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 170
    .local v1, "prevEndGroupTag":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 171
    invoke-static {v2}, Lcom/google/protobuf/BinaryProtocolUtil;->getFieldNumber(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/protobuf/BinaryProtocolUtil;->tagFor(IB)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 175
    :try_start_0
    invoke-interface {p1}, Lcom/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0, p0, p2}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 178
    iget v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-eq v2, v3, :cond_0

    .line 179
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .end local v0    # "message":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    throw v2

    .restart local v0    # "message":Ljava/lang/Object;, "TT;"
    :cond_0
    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 181
    return-object v0
.end method

.method private readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 5
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    .line 155
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v3, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 158
    .local v1, "prevLimit":I
    :try_start_0
    invoke-interface {p1}, Lcom/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0, p0, p2}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 160
    return-object v0

    .line 163
    .end local v0    # "message":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    throw v3
.end method

.method private requireWireType(I)V
    .locals 1
    .param p1, "requiredWireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 70
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 72
    :cond_0
    return-void
.end method

.method private verifyPackedFixed32Length(I)V
    .locals 1
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1239
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_0

    .line 1241
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1243
    :cond_0
    return-void
.end method

.method private verifyPackedFixed64Length(I)V
    .locals 1
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1140
    and-int/lit8 v0, p1, 0x7

    if-eqz v0, :cond_0

    .line 1142
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1144
    :cond_0
    return-void
.end method


# virtual methods
.method public getFieldNumber()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v0, :cond_0

    .line 44
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    .line 49
    :goto_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_1

    .line 50
    const v0, 0x7fffffff

    .line 52
    :goto_1
    return v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    goto :goto_0

    .line 52
    :cond_1
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/BinaryProtocolUtil;->getFieldNumber(I)I

    move-result v0

    goto :goto_1
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    return v0
.end method

.method public readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 119
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    return v0
.end method

.method public readBoolList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    instance-of v4, p1, Lcom/google/protobuf/BooleanArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 633
    check-cast v3, Lcom/google/protobuf/BooleanArrayList;

    .line 634
    .local v3, "plist":Lcom/google/protobuf/BooleanArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 656
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 636
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 637
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 639
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 640
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 684
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/BooleanArrayList;
    :cond_1
    :goto_0
    return-void

    .line 644
    .restart local v3    # "plist":Lcom/google/protobuf/BooleanArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 645
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 648
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 649
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 651
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 659
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/BooleanArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 681
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 661
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 662
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 664
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 669
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 673
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 674
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 676
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 659
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 191
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readBytesList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 781
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 782
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 794
    :goto_0
    return-void

    .line 790
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 791
    .local v0, "nextTag":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_0

    .line 793
    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 77
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubleList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    instance-of v4, p1, Lcom/google/protobuf/DoubleArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 233
    check-cast v3, Lcom/google/protobuf/DoubleArrayList;

    .line 234
    .local v3, "plist":Lcom/google/protobuf/DoubleArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 257
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 236
    :pswitch_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 237
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 238
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 240
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    .line 241
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 286
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/DoubleArrayList;
    :cond_1
    :goto_0
    return-void

    .line 245
    .restart local v3    # "plist":Lcom/google/protobuf/DoubleArrayList;
    :cond_2
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    .line 246
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 249
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 250
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 252
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 260
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/DoubleArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 283
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 262
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 263
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 264
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 266
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 271
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_3
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 275
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 276
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 278
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 260
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 203
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    return v0
.end method

.method public readEnumList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 857
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v4, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 858
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 859
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 881
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 861
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 862
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 864
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 865
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 909
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_0
    return-void

    .line 869
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 870
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 873
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 874
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 876
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 884
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 906
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 886
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 887
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 889
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 894
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 898
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 899
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 901
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 884
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 113
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    return v0
.end method

.method public readFixed32List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v4, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 575
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 576
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 599
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 578
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 579
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 580
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 582
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 583
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 628
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_0
    return-void

    .line 587
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 588
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 591
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 592
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 594
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 602
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 625
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 604
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 605
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 606
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 608
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 613
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 617
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 618
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 620
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 602
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 107
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFixed64List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v4, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 517
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 518
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 541
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 520
    :pswitch_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 521
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 522
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 524
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 525
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 570
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_0
    return-void

    .line 529
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 530
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 533
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 534
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 536
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 544
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 567
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 546
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 547
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 548
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 550
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 555
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_3
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 559
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 560
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 562
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 544
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 83
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFloatList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    instance-of v4, p1, Lcom/google/protobuf/FloatArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 291
    check-cast v3, Lcom/google/protobuf/FloatArrayList;

    .line 292
    .local v3, "plist":Lcom/google/protobuf/FloatArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 315
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 294
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 295
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 296
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 298
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    .line 299
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 344
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/FloatArrayList;
    :cond_1
    :goto_0
    return-void

    .line 303
    .restart local v3    # "plist":Lcom/google/protobuf/FloatArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    .line 304
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 307
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 308
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 310
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 318
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/FloatArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 341
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 320
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 321
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 322
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 324
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 329
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 333
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 334
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 336
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 318
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public readGroup(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 147
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/protobuf/CodedInputStreamReader;->readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v3}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 760
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v3

    throw v3

    .line 763
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v2

    .line 764
    .local v2, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 766
    .local v0, "listTag":I
    :cond_1
    invoke-direct {p0, v2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v3, :cond_3

    .line 774
    :cond_2
    :goto_0
    return-void

    .line 770
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 771
    .local v1, "nextTag":I
    if-eq v1, v0, :cond_1

    .line 773
    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 101
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    return v0
.end method

.method public readInt32List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v4, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 461
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 462
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 484
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 464
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 465
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 467
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 468
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 512
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_0
    return-void

    .line 472
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 473
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 476
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 477
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 479
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 487
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 509
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 489
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 490
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 492
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 497
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 501
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 502
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 504
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 487
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 95
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v4, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 405
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 406
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 428
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 408
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 409
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 411
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 412
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 456
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_0
    return-void

    .line 416
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 417
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 420
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 421
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 423
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 431
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 453
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 433
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 434
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 436
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 441
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 445
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 446
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 448
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 431
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$Metadata;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/protobuf/MapEntryLite$Metadata",
            "<TK;TV;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1153
    .local p1, "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 1154
    iget-object v6, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v6}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    .line 1155
    .local v4, "size":I
    iget-object v6, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v6, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 1156
    .local v3, "prevLimit":I
    iget-object v1, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 1157
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v5, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1160
    .local v5, "value":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->getFieldNumber()I

    move-result v2

    .line 1161
    .local v2, "number":I
    const v6, 0x7fffffff

    if-eq v2, v6, :cond_1

    iget-object v6, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v6}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1188
    :cond_1
    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    iget-object v6, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v6, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 1193
    return-void

    .line 1165
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 1176
    :try_start_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1177
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v7, "Unable to parse map entry."

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1181
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "ignore":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :try_start_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1184
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v7, "Unable to parse map entry."

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1191
    .end local v0    # "ignore":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .end local v2    # "number":I
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v7, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    throw v6

    .line 1167
    .restart local v2    # "number":I
    :pswitch_0
    :try_start_3
    iget-object v6, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/google/protobuf/CodedInputStreamReader;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    .line 1168
    goto :goto_0

    .line 1170
    :pswitch_1
    iget-object v6, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    iget-object v7, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1173
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 1172
    invoke-direct {p0, v6, v7, p3}, Lcom/google/protobuf/CodedInputStreamReader;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 1174
    goto :goto_0

    .line 1165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 139
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/protobuf/CodedInputStreamReader;->readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 735
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v3}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 736
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v3

    throw v3

    .line 739
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v2

    .line 740
    .local v2, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 742
    .local v0, "listTag":I
    :cond_1
    invoke-direct {p0, v2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v3, :cond_3

    .line 750
    :cond_2
    :goto_0
    return-void

    .line 746
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 747
    .local v1, "nextTag":I
    if-eq v1, v0, :cond_1

    .line 749
    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 209
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    return v0
.end method

.method public readSFixed32List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v4, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 914
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 915
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 938
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 917
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 918
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 919
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 921
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 922
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 967
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_0
    return-void

    .line 926
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 927
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 930
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 931
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 933
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 941
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 964
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 943
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 944
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 945
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 947
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 952
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 956
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 957
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 959
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 915
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 941
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 215
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSFixed64List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 971
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v4, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 972
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 973
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 996
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 975
    :pswitch_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 976
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 977
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 979
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 980
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 1025
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_0
    return-void

    .line 984
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 985
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 988
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 989
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 991
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 999
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 1022
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 1001
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1002
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 1003
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 1005
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 1010
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_3
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1014
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1015
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 1017
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 973
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 999
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 221
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    return v0
.end method

.method public readSInt32List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1029
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v4, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 1030
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 1031
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1053
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 1033
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1034
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 1036
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 1037
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 1081
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_0
    return-void

    .line 1041
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 1042
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1045
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1046
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 1048
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 1056
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 1078
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 1058
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1059
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 1061
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 1066
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1067
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1070
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1071
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 1073
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 1031
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1056
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 227
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt64List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1085
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v4, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 1086
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 1087
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1109
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 1089
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1090
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 1092
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 1093
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 1137
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_0
    return-void

    .line 1097
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 1098
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1101
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1102
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 1104
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 1112
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 1134
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 1114
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1115
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 1117
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 1122
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1126
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1127
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 1129
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 1087
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1112
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 125
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 689
    return-void
.end method

.method public readStringListInternal(Ljava/util/List;Z)V
    .locals 4
    .param p2, "requireUtf8"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v2}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 698
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v2

    throw v2

    .line 701
    :cond_0
    instance-of v2, p1, Lcom/google/protobuf/LazyStringList;

    if-eqz v2, :cond_4

    if-nez p2, :cond_4

    move-object v0, p1

    .line 702
    check-cast v0, Lcom/google/protobuf/LazyStringList;

    .line 704
    .local v0, "lazyList":Lcom/google/protobuf/LazyStringList;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 705
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 725
    .end local v0    # "lazyList":Lcom/google/protobuf/LazyStringList;
    :cond_2
    :goto_0
    return-void

    .line 708
    .restart local v0    # "lazyList":Lcom/google/protobuf/LazyStringList;
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 709
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_1

    .line 711
    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 717
    .end local v0    # "lazyList":Lcom/google/protobuf/LazyStringList;
    .end local v1    # "nextTag":I
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v2

    if-nez v2, :cond_2

    .line 721
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 722
    .restart local v1    # "nextTag":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_4

    .line 724
    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 717
    .end local v1    # "nextTag":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public readStringListRequireUtf8(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 694
    return-void
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 131
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 197
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    return v0
.end method

.method public readUInt32List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v4, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 802
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 803
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 825
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 805
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 806
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 808
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 809
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 853
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_0
    return-void

    .line 813
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 814
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 817
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 818
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 820
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 828
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 850
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 830
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 831
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 833
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 838
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 842
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 843
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 845
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 803
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 828
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 89
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt64List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v4, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 349
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 350
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 372
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 352
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 353
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 355
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 356
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 400
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_0
    return-void

    .line 360
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 361
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 364
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 365
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 367
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 375
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 397
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 377
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 378
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 380
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 385
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 389
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 390
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 392
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 375
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public skipField()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    goto :goto_0
.end method
