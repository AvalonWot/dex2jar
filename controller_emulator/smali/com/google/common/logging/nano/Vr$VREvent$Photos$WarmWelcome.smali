.class public final Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$Photos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WarmWelcome"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;


# instance fields
.field public exitProgress:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1969
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1970
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    .line 1971
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;
    .locals 2

    .prologue
    .line 1953
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    if-nez v0, :cond_1

    .line 1954
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1956
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    if-nez v0, :cond_0

    .line 1957
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    .line 1959
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1961
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    return-object v0

    .line 1959
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2041
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2035
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1974
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->exitProgress:Ljava/lang/Float;

    .line 1975
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1976
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->cachedSize:I

    .line 1977
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;
    .locals 3

    .prologue
    .line 1983
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1987
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;
    return-object v0

    .line 1984
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;
    :catch_0
    move-exception v1

    .line 1985
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
    .line 1947
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

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
    .line 1947
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

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
    .line 1947
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 2002
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2003
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->exitProgress:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 2004
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->exitProgress:Ljava/lang/Float;

    .line 2005
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2007
    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2015
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2016
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2020
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2021
    :sswitch_0
    return-object p0

    .line 2026
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->exitProgress:Ljava/lang/Float;

    goto :goto_0

    .line 2016
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
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
    .line 1947
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

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
    .line 1994
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->exitProgress:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 1995
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->exitProgress:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1997
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1998
    return-void
.end method