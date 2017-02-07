.class public final Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$AudioStats$RenderingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;


# instance fields
.field public cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public framesPerBuffer:Ljava/lang/Integer;

.field public numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public renderingMode:Ljava/lang/Integer;

.field public renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public sampleRate:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5016
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5017
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clear()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 5018
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    .locals 2

    .prologue
    .line 4982
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-nez v0, :cond_1

    .line 4983
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4985
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-nez v0, :cond_0

    .line 4986
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 4988
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4990
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    return-object v0

    .line 4988
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5303
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5297
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5021
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    .line 5022
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    .line 5023
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5024
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5025
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5026
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5027
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5028
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cachedSize:I

    .line 5029
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    .locals 5

    .prologue
    .line 5035
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5039
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 5040
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5041
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 5042
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 5043
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v2

    .line 5041
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5036
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 5037
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 5047
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    :cond_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 5048
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5049
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 5050
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    .line 5051
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v2

    .line 5049
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5055
    .end local v2    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 5056
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5057
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 5058
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v2

    if-eqz v3, :cond_4

    .line 5059
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v2

    .line 5057
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5063
    .end local v2    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 5064
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5065
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 5066
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v2

    if-eqz v3, :cond_6

    .line 5067
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v2

    .line 5065
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5071
    .end local v2    # "i":I
    :cond_7
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 4968
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

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
    .line 4968
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

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
    .line 4968
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 5124
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 5125
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 5126
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    .line 5127
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5129
    :cond_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 5130
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    .line 5131
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5133
    :cond_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 5134
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    .line 5135
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5137
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 5138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 5139
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v3, v1

    .line 5140
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v0, :cond_3

    .line 5141
    const/4 v3, 0x4

    .line 5142
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5138
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5146
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_6

    .line 5147
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 5148
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v3, v1

    .line 5149
    .restart local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v0, :cond_5

    .line 5150
    const/4 v3, 0x5

    .line 5151
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5147
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5155
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v1    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_8

    .line 5156
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v1, v3, :cond_8

    .line 5157
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v3, v1

    .line 5158
    .restart local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v0, :cond_7

    .line 5159
    const/4 v3, 0x6

    .line 5160
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5156
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5164
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v1    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_a

    .line 5165
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v1, v3, :cond_a

    .line 5166
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v3, v1

    .line 5167
    .restart local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v0, :cond_9

    .line 5168
    const/4 v3, 0x7

    .line 5169
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5165
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5173
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v1    # "i":I
    :cond_a
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 5181
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 5182
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 5186
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5187
    :sswitch_0
    return-object p0

    .line 5192
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 5193
    .local v4, "value":I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 5198
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    goto :goto_0

    .line 5204
    .end local v4    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    goto :goto_0

    .line 5208
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    goto :goto_0

    .line 5212
    :sswitch_4
    const/16 v6, 0x22

    .line 5213
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5214
    .local v0, "arrayLength":I
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v6, :cond_2

    move v1, v5

    .line 5215
    .local v1, "i":I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5217
    .local v2, "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_1

    .line 5218
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5220
    :cond_1
    :goto_2
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    .line 5221
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v6, v2, v1

    .line 5222
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5223
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5220
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5214
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_2
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v6

    goto :goto_1

    .line 5226
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_3
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v6, v2, v1

    .line 5227
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5228
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto :goto_0

    .line 5232
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :sswitch_5
    const/16 v6, 0x2a

    .line 5233
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5234
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v6, :cond_5

    move v1, v5

    .line 5235
    .restart local v1    # "i":I
    :goto_3
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5237
    .restart local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_4

    .line 5238
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5240
    :cond_4
    :goto_4
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_6

    .line 5241
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v6, v2, v1

    .line 5242
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5243
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5240
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 5234
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_5
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v6

    goto :goto_3

    .line 5246
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_6
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v6, v2, v1

    .line 5247
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5248
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 5252
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :sswitch_6
    const/16 v6, 0x32

    .line 5253
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5254
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v6, :cond_8

    move v1, v5

    .line 5255
    .restart local v1    # "i":I
    :goto_5
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5257
    .restart local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_7

    .line 5258
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5260
    :cond_7
    :goto_6
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_9

    .line 5261
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v6, v2, v1

    .line 5262
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5263
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5260
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 5254
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_8
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v6

    goto :goto_5

    .line 5266
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_9
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v6, v2, v1

    .line 5267
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5268
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 5272
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :sswitch_7
    const/16 v6, 0x3a

    .line 5273
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5274
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v6, :cond_b

    move v1, v5

    .line 5275
    .restart local v1    # "i":I
    :goto_7
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5277
    .restart local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_a

    .line 5278
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5280
    :cond_a
    :goto_8
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_c

    .line 5281
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v6, v2, v1

    .line 5282
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5283
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5280
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 5274
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_b
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v6

    goto :goto_7

    .line 5286
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_c
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v6, v2, v1

    .line 5287
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5288
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 5182
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch

    .line 5193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .line 4968
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    move-result-object v0

    return-object v0
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
    .line 5078
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 5079
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5081
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 5082
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5084
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 5085
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5087
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 5088
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 5089
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v2, v1

    .line 5090
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v0, :cond_3

    .line 5091
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5088
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5095
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 5096
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 5097
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v2, v1

    .line 5098
    .restart local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v0, :cond_5

    .line 5099
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5096
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5103
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v1    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 5104
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 5105
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v2, v1

    .line 5106
    .restart local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v0, :cond_7

    .line 5107
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5104
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5111
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v1    # "i":I
    :cond_8
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_a

    .line 5112
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 5113
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v2, v1

    .line 5114
    .restart local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v0, :cond_9

    .line 5115
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5112
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5119
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v1    # "i":I
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5120
    return-void
.end method
