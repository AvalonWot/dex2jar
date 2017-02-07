.class public final Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;
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
    name = "FieldDetails"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;


# instance fields
.field public semanticType:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 595
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->clear()Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;

    .line 596
    return-void
.end method

.method public static emptyArray()[Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;
    .locals 2

    .prologue
    .line 578
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;

    if-nez v0, :cond_1

    .line 579
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 581
    :try_start_0
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;

    if-nez v0, :cond_0

    .line 582
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;

    .line 584
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :cond_1
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;

    return-object v0

    .line 584
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 899
    new-instance v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 893
    new-instance v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;
    .locals 1

    .prologue
    .line 599
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 601
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->cachedSize:I

    .line 602
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
    .line 572
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->clone()Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;

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
    .line 572
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->clone()Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;
    .locals 3

    .prologue
    .line 608
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .local v0, "cloned":Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;
    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    array-length v2, v2

    if-lez v2, :cond_0

    .line 613
    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    .line 615
    :cond_0
    return-object v0

    .line 609
    .end local v0    # "cloned":Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;
    :catch_0
    move-exception v1

    .line 610
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
    .line 572
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->clone()Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 632
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    .line 633
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 636
    iget-object v4, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    aget v1, v4, v2

    .line 638
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 635
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 640
    .end local v1    # "element":I
    :cond_0
    add-int/2addr v3, v0

    .line 641
    iget-object v4, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 643
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;
    .locals 18
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v10

    .line 652
    .local v10, "tag":I
    sparse-switch v10, :sswitch_data_0

    .line 656
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v10}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v15

    if-nez v15, :cond_0

    .line 657
    :sswitch_0
    return-object p0

    .line 662
    :sswitch_1
    const/16 v15, 0x8

    .line 663
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v6

    .line 664
    .local v6, "length":I
    new-array v13, v6, [I

    .line 665
    .local v13, "validValues":[I
    const/4 v11, 0x0

    .line 666
    .local v11, "validCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v12, v11

    .end local v11    # "validCount":I
    .local v12, "validCount":I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 667
    if-eqz v4, :cond_1

    .line 668
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 670
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v14

    .line 671
    .local v14, "value":I
    sparse-switch v14, :sswitch_data_1

    move v11, v12

    .line 666
    .end local v12    # "validCount":I
    .restart local v11    # "validCount":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v12, v11

    .end local v11    # "validCount":I
    .restart local v12    # "validCount":I
    goto :goto_1

    .line 727
    :sswitch_2
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "validCount":I
    .restart local v11    # "validCount":I
    aput v14, v13, v12

    goto :goto_2

    .line 731
    .end local v11    # "validCount":I
    .end local v14    # "value":I
    .restart local v12    # "validCount":I
    :cond_2
    if-eqz v12, :cond_0

    .line 732
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    if-nez v15, :cond_3

    const/4 v4, 0x0

    .line 733
    :goto_3
    if-nez v4, :cond_4

    array-length v15, v13

    if-ne v12, v15, :cond_4

    .line 734
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    goto :goto_0

    .line 732
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    array-length v4, v15

    goto :goto_3

    .line 736
    :cond_4
    add-int v15, v4, v12

    new-array v8, v15, [I

    .line 737
    .local v8, "newArray":[I
    if-eqz v4, :cond_5

    .line 738
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v0, v8, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 740
    :cond_5
    const/4 v15, 0x0

    invoke-static {v13, v15, v8, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    goto :goto_0

    .line 747
    .end local v4    # "i":I
    .end local v6    # "length":I
    .end local v8    # "newArray":[I
    .end local v12    # "validCount":I
    .end local v13    # "validValues":[I
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v3

    .line 748
    .local v3, "bytes":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v7

    .line 750
    .local v7, "limit":I
    const/4 v2, 0x0

    .line 751
    .local v2, "arrayLength":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v9

    .line 752
    .local v9, "startPos":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v15

    if-lez v15, :cond_6

    .line 753
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v15

    sparse-switch v15, :sswitch_data_2

    goto :goto_4

    .line 809
    :sswitch_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 813
    :cond_6
    if-eqz v2, :cond_a

    .line 814
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 815
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    if-nez v15, :cond_8

    const/4 v4, 0x0

    .line 816
    .restart local v4    # "i":I
    :goto_5
    add-int v15, v4, v2

    new-array v8, v15, [I

    .line 817
    .restart local v8    # "newArray":[I
    if-eqz v4, :cond_7

    .line 818
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v0, v8, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    :cond_7
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v15

    if-lez v15, :cond_9

    .line 821
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v14

    .line 822
    .restart local v14    # "value":I
    sparse-switch v14, :sswitch_data_3

    goto :goto_6

    .line 878
    :sswitch_5
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aput v14, v8, v4

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_6

    .line 815
    .end local v4    # "i":I
    .end local v8    # "newArray":[I
    .end local v14    # "value":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    array-length v4, v15

    goto :goto_5

    .line 882
    .restart local v4    # "i":I
    .restart local v8    # "newArray":[I
    :cond_9
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    .line 884
    .end local v4    # "i":I
    .end local v8    # "newArray":[I
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 652
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_3
    .end sparse-switch

    .line 671
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x3e7 -> :sswitch_2
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_2
        0x3ed -> :sswitch_2
        0x3ee -> :sswitch_2
        0x3ef -> :sswitch_2
        0x44c -> :sswitch_2
        0x44e -> :sswitch_2
        0x44f -> :sswitch_2
        0x450 -> :sswitch_2
        0x451 -> :sswitch_2
        0x452 -> :sswitch_2
        0x453 -> :sswitch_2
        0x454 -> :sswitch_2
        0x4b0 -> :sswitch_2
        0x4b1 -> :sswitch_2
        0x4b2 -> :sswitch_2
        0x4b3 -> :sswitch_2
        0x4b4 -> :sswitch_2
        0x514 -> :sswitch_2
        0x515 -> :sswitch_2
        0x578 -> :sswitch_2
        0x579 -> :sswitch_2
        0x5dc -> :sswitch_2
        0x5dd -> :sswitch_2
        0x640 -> :sswitch_2
        0x641 -> :sswitch_2
        0x6a4 -> :sswitch_2
        0x6a5 -> :sswitch_2
        0x6a6 -> :sswitch_2
        0x708 -> :sswitch_2
        0x709 -> :sswitch_2
        0x70a -> :sswitch_2
        0x70b -> :sswitch_2
        0x76c -> :sswitch_2
        0x76d -> :sswitch_2
        0x7d0 -> :sswitch_2
        0x834 -> :sswitch_2
        0x835 -> :sswitch_2
        0x8fc -> :sswitch_2
        0x960 -> :sswitch_2
        0x9c4 -> :sswitch_2
        0xa28 -> :sswitch_2
        0xa29 -> :sswitch_2
        0xa2a -> :sswitch_2
        0x26ac -> :sswitch_2
        0x26ad -> :sswitch_2
        0x26ae -> :sswitch_2
        0x26af -> :sswitch_2
        0x26b0 -> :sswitch_2
        0x26b1 -> :sswitch_2
    .end sparse-switch

    .line 753
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_4
        0x3e7 -> :sswitch_4
        0x3e8 -> :sswitch_4
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_4
        0x3ef -> :sswitch_4
        0x44c -> :sswitch_4
        0x44e -> :sswitch_4
        0x44f -> :sswitch_4
        0x450 -> :sswitch_4
        0x451 -> :sswitch_4
        0x452 -> :sswitch_4
        0x453 -> :sswitch_4
        0x454 -> :sswitch_4
        0x4b0 -> :sswitch_4
        0x4b1 -> :sswitch_4
        0x4b2 -> :sswitch_4
        0x4b3 -> :sswitch_4
        0x4b4 -> :sswitch_4
        0x514 -> :sswitch_4
        0x515 -> :sswitch_4
        0x578 -> :sswitch_4
        0x579 -> :sswitch_4
        0x5dc -> :sswitch_4
        0x5dd -> :sswitch_4
        0x640 -> :sswitch_4
        0x641 -> :sswitch_4
        0x6a4 -> :sswitch_4
        0x6a5 -> :sswitch_4
        0x6a6 -> :sswitch_4
        0x708 -> :sswitch_4
        0x709 -> :sswitch_4
        0x70a -> :sswitch_4
        0x70b -> :sswitch_4
        0x76c -> :sswitch_4
        0x76d -> :sswitch_4
        0x7d0 -> :sswitch_4
        0x834 -> :sswitch_4
        0x835 -> :sswitch_4
        0x8fc -> :sswitch_4
        0x960 -> :sswitch_4
        0x9c4 -> :sswitch_4
        0xa28 -> :sswitch_4
        0xa29 -> :sswitch_4
        0xa2a -> :sswitch_4
        0x26ac -> :sswitch_4
        0x26ad -> :sswitch_4
        0x26ae -> :sswitch_4
        0x26af -> :sswitch_4
        0x26b0 -> :sswitch_4
        0x26b1 -> :sswitch_4
    .end sparse-switch

    .line 822
    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_5
        0x3e7 -> :sswitch_5
        0x3e8 -> :sswitch_5
        0x3e9 -> :sswitch_5
        0x3ea -> :sswitch_5
        0x3eb -> :sswitch_5
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_5
        0x3ef -> :sswitch_5
        0x44c -> :sswitch_5
        0x44e -> :sswitch_5
        0x44f -> :sswitch_5
        0x450 -> :sswitch_5
        0x451 -> :sswitch_5
        0x452 -> :sswitch_5
        0x453 -> :sswitch_5
        0x454 -> :sswitch_5
        0x4b0 -> :sswitch_5
        0x4b1 -> :sswitch_5
        0x4b2 -> :sswitch_5
        0x4b3 -> :sswitch_5
        0x4b4 -> :sswitch_5
        0x514 -> :sswitch_5
        0x515 -> :sswitch_5
        0x578 -> :sswitch_5
        0x579 -> :sswitch_5
        0x5dc -> :sswitch_5
        0x5dd -> :sswitch_5
        0x640 -> :sswitch_5
        0x641 -> :sswitch_5
        0x6a4 -> :sswitch_5
        0x6a5 -> :sswitch_5
        0x6a6 -> :sswitch_5
        0x708 -> :sswitch_5
        0x709 -> :sswitch_5
        0x70a -> :sswitch_5
        0x70b -> :sswitch_5
        0x76c -> :sswitch_5
        0x76d -> :sswitch_5
        0x7d0 -> :sswitch_5
        0x834 -> :sswitch_5
        0x835 -> :sswitch_5
        0x8fc -> :sswitch_5
        0x960 -> :sswitch_5
        0x9c4 -> :sswitch_5
        0xa28 -> :sswitch_5
        0xa29 -> :sswitch_5
        0xa2a -> :sswitch_5
        0x26ac -> :sswitch_5
        0x26ad -> :sswitch_5
        0x26ae -> :sswitch_5
        0x26af -> :sswitch_5
        0x26b0 -> :sswitch_5
        0x26b1 -> :sswitch_5
    .end sparse-switch
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
    .line 622
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 623
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 624
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;->semanticType:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 627
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 628
    return-void
.end method
