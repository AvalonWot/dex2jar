.class public final Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyboardEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;


# instance fields
.field public clientTimestamp:Ljava/lang/Long;

.field public enabledLanguages:[Ljava/lang/String;

.field public eventType:Ljava/lang/Integer;

.field public inputType:Ljava/lang/Integer;

.field public keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field public language:Ljava/lang/String;

.field public layout:Ljava/lang/String;

.field public suggestionCount:Ljava/lang/Integer;

.field public systemLanguages:[Ljava/lang/String;

.field public textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9014
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9015
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    .line 9016
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    .locals 2

    .prologue
    .line 8971
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-nez v0, :cond_1

    .line 8972
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8974
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-nez v0, :cond_0

    .line 8975
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    .line 8977
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8979
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    return-object v0

    .line 8977
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9291
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9285
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9019
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    .line 9020
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    .line 9021
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 9022
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    .line 9023
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    .line 9024
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    .line 9025
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    .line 9026
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    .line 9027
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9028
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->cachedSize:I

    .line 9029
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    .locals 3

    .prologue
    .line 9035
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9039
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    if-eqz v2, :cond_0

    .line 9040
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    .line 9042
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v2, :cond_1

    .line 9043
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 9045
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 9046
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    .line 9048
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 9049
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    .line 9051
    :cond_3
    return-object v0

    .line 9036
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    :catch_0
    move-exception v1

    .line 9037
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
    .line 8965
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

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
    .line 8965
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

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
    .line 8965
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .prologue
    .line 9103
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 9104
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    if-eqz v5, :cond_0

    .line 9105
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    .line 9106
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 9108
    :cond_0
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->eventType:Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 9109
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->eventType:Ljava/lang/Integer;

    .line 9110
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 9112
    :cond_1
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    if-eqz v5, :cond_2

    .line 9113
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    .line 9114
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 9116
    :cond_2
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v5, :cond_3

    .line 9117
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 9118
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 9120
    :cond_3
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_6

    .line 9121
    const/4 v0, 0x0

    .line 9122
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 9123
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 9124
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 9125
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 9126
    add-int/lit8 v0, v0, 0x1

    .line 9128
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 9123
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9131
    .end local v2    # "element":Ljava/lang/String;
    :cond_5
    add-int/2addr v4, v1

    .line 9132
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 9134
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_9

    .line 9135
    const/4 v0, 0x0

    .line 9136
    .restart local v0    # "dataCount":I
    const/4 v1, 0x0

    .line 9137
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_8

    .line 9138
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 9139
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 9140
    add-int/lit8 v0, v0, 0x1

    .line 9142
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 9137
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9145
    .end local v2    # "element":Ljava/lang/String;
    :cond_8
    add-int/2addr v4, v1

    .line 9146
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 9148
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_9
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 9149
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    .line 9150
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 9152
    :cond_a
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->inputType:Ljava/lang/Integer;

    if-eqz v5, :cond_b

    .line 9153
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->inputType:Ljava/lang/Integer;

    .line 9154
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 9156
    :cond_b
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    if-eqz v5, :cond_c

    .line 9157
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    .line 9158
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 9160
    :cond_c
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    if-eqz v5, :cond_d

    .line 9161
    const/16 v5, 0xa

    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    .line 9162
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 9164
    :cond_d
    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 9172
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 9173
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 9177
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 9178
    :sswitch_0
    return-object p0

    .line 9183
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    goto :goto_0

    .line 9187
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 9188
    .local v4, "value":I
    sparse-switch v4, :sswitch_data_1

    goto :goto_0

    .line 9204
    :sswitch_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->eventType:Ljava/lang/Integer;

    goto :goto_0

    .line 9210
    .end local v4    # "value":I
    :sswitch_4
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    if-nez v6, :cond_1

    .line 9211
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    .line 9213
    :cond_1
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9217
    :sswitch_5
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v6, :cond_2

    .line 9218
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 9220
    :cond_2
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9224
    :sswitch_6
    const/16 v6, 0x2a

    .line 9225
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9226
    .local v0, "arrayLength":I
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    if-nez v6, :cond_4

    move v1, v5

    .line 9227
    .local v1, "i":I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 9228
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 9229
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9231
    :cond_3
    :goto_2
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_5

    .line 9232
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    .line 9233
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 9231
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9226
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    array-length v1, v6

    goto :goto_1

    .line 9236
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    .line 9237
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    goto :goto_0

    .line 9241
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_7
    const/16 v6, 0x32

    .line 9242
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9243
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    if-nez v6, :cond_7

    move v1, v5

    .line 9244
    .restart local v1    # "i":I
    :goto_3
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 9245
    .restart local v2    # "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 9246
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9248
    :cond_6
    :goto_4
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_8

    .line 9249
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    .line 9250
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 9248
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 9243
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    array-length v1, v6

    goto :goto_3

    .line 9253
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    .line 9254
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    goto/16 :goto_0

    .line 9258
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    goto/16 :goto_0

    .line 9262
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 9263
    .restart local v4    # "value":I
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 9266
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->inputType:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 9272
    .end local v4    # "value":I
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    goto/16 :goto_0

    .line 9276
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 9173
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_7
        0x3a -> :sswitch_8
        0x40 -> :sswitch_9
        0x4a -> :sswitch_a
        0x50 -> :sswitch_b
    .end sparse-switch

    .line 9188
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_3
        0x7d0 -> :sswitch_3
        0xbb8 -> :sswitch_3
        0xbb9 -> :sswitch_3
        0xbba -> :sswitch_3
    .end sparse-switch

    .line 9263
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 8965
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

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
    .line 9058
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 9059
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 9061
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->eventType:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 9062
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->eventType:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9064
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    if-eqz v2, :cond_2

    .line 9065
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9067
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v2, :cond_3

    .line 9068
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9070
    :cond_3
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 9071
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 9072
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 9073
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 9074
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9071
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9078
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 9079
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 9080
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 9081
    .restart local v0    # "element":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 9082
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9079
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9086
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 9087
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9089
    :cond_8
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->inputType:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    .line 9090
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->inputType:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9092
    :cond_9
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 9093
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9095
    :cond_a
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    .line 9096
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9098
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9099
    return-void
.end method
