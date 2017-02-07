.class public final Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions$TokenUnit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;


# instance fields
.field public clientInitialTokens:Ljava/lang/Long;

.field public clientLogging:Ljava/lang/Integer;

.field public deadline:Ljava/lang/Double;

.field public deprecated:Ljava/lang/Boolean;

.field public endUserCredsRequested:Ljava/lang/Boolean;

.field public failFast:Ljava/lang/Boolean;

.field public logLevel:I

.field public securityLabel:Ljava/lang/String;

.field public securityLevel:I

.field public serverInitialTokens:Ljava/lang/Long;

.field public serverLogging:Ljava/lang/Integer;

.field public tokenUnit:I

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 4741
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4742
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:Ljava/lang/Long;

    .line 4743
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:Ljava/lang/Long;

    .line 4744
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    .line 4745
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    .line 4746
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    .line 4747
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:Ljava/lang/Integer;

    .line 4748
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:Ljava/lang/Integer;

    .line 4749
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:Ljava/lang/Double;

    .line 4750
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Ljava/lang/Boolean;

    .line 4751
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Ljava/lang/Boolean;

    .line 4752
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    .line 4753
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Ljava/lang/Boolean;

    .line 4754
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 4755
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->cachedSize:I

    .line 4756
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
    .locals 2

    .prologue
    .line 4689
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    if-nez v0, :cond_1

    .line 4690
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4692
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    if-nez v0, :cond_0

    .line 4693
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    .line 4695
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4697
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    return-object v0

    .line 4695
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4989
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4983
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    return-object v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 7

    .prologue
    const/high16 v6, -0x80000000

    .line 4810
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 4811
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 4812
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:Ljava/lang/Long;

    .line 4813
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4815
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 4816
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:Ljava/lang/Long;

    .line 4817
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4819
    :cond_1
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    if-eq v3, v6, :cond_2

    .line 4820
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    .line 4821
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4823
    :cond_2
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    if-eq v3, v6, :cond_3

    .line 4824
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    .line 4825
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4827
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 4828
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    .line 4829
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4831
    :cond_4
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    .line 4832
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:Ljava/lang/Integer;

    .line 4833
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4835
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    .line 4836
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:Ljava/lang/Integer;

    .line 4837
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4839
    :cond_6
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:Ljava/lang/Double;

    if-eqz v3, :cond_7

    .line 4840
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:Ljava/lang/Double;

    .line 4841
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 4843
    :cond_7
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Ljava/lang/Boolean;

    if-eqz v3, :cond_8

    .line 4844
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Ljava/lang/Boolean;

    .line 4845
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4847
    :cond_8
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Ljava/lang/Boolean;

    if-eqz v3, :cond_9

    .line 4848
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Ljava/lang/Boolean;

    .line 4849
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4851
    :cond_9
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    if-eq v3, v6, :cond_a

    .line 4852
    const/16 v3, 0xb

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    .line 4853
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4855
    :cond_a
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Ljava/lang/Boolean;

    if-eqz v3, :cond_b

    .line 4856
    const/16 v3, 0x21

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Ljava/lang/Boolean;

    .line 4857
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4859
    :cond_b
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-lez v3, :cond_d

    .line 4860
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-ge v1, v3, :cond_d

    .line 4861
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v3, v1

    .line 4862
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_c

    .line 4863
    const/16 v3, 0x3e7

    .line 4864
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4860
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4868
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_d
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4876
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 4877
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 4881
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4882
    :sswitch_0
    return-object p0

    .line 4887
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:Ljava/lang/Long;

    goto :goto_0

    .line 4891
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:Ljava/lang/Long;

    goto :goto_0

    .line 4895
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 4896
    .local v4, "value":I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 4899
    :pswitch_0
    iput v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    goto :goto_0

    .line 4905
    .end local v4    # "value":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 4906
    .restart local v4    # "value":I
    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 4911
    :pswitch_1
    iput v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    goto :goto_0

    .line 4917
    .end local v4    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    goto :goto_0

    .line 4921
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:Ljava/lang/Integer;

    goto :goto_0

    .line 4925
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:Ljava/lang/Integer;

    goto :goto_0

    .line 4929
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:Ljava/lang/Double;

    goto :goto_0

    .line 4933
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Ljava/lang/Boolean;

    goto :goto_0

    .line 4937
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Ljava/lang/Boolean;

    goto :goto_0

    .line 4941
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 4942
    .restart local v4    # "value":I
    packed-switch v4, :pswitch_data_2

    goto :goto_0

    .line 4948
    :pswitch_2
    iput v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    goto/16 :goto_0

    .line 4954
    .end local v4    # "value":I
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4958
    :sswitch_d
    const/16 v6, 0x1f3a

    .line 4959
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4960
    .local v0, "arrayLength":I
    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v6, :cond_2

    move v1, v5

    .line 4961
    .local v1, "i":I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 4963
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v1, :cond_1

    .line 4964
    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4966
    :cond_1
    :goto_2
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    .line 4967
    new-instance v6, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v6}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v6, v2, v1

    .line 4968
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4969
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4966
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4960
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_2
    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v6

    goto :goto_1

    .line 4972
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_3
    new-instance v6, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v6}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v6, v2, v1

    .line 4973
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4974
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto/16 :goto_0

    .line 4877
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x41 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x108 -> :sswitch_c
        0x1f3a -> :sswitch_d
    .end sparse-switch

    .line 4896
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 4906
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 4942
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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
    .line 4677
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v6, -0x80000000

    .line 4761
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 4762
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4764
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 4765
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4767
    :cond_1
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    if-eq v2, v6, :cond_2

    .line 4768
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4770
    :cond_2
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    if-eq v2, v6, :cond_3

    .line 4771
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4773
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 4774
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4776
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 4777
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4779
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 4780
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4782
    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:Ljava/lang/Double;

    if-eqz v2, :cond_7

    .line 4783
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 4785
    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    .line 4786
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4788
    :cond_8
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    .line 4789
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4791
    :cond_9
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    if-eq v2, v6, :cond_a

    .line 4792
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4794
    :cond_a
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    .line 4795
    const/16 v2, 0x21

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4797
    :cond_b
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-lez v2, :cond_d

    .line 4798
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 4799
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v2, v1

    .line 4800
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_c

    .line 4801
    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4798
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4805
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4806
    return-void
.end method
