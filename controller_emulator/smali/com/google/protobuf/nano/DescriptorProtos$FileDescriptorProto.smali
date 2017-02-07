.class public final Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;


# instance fields
.field public dependency:[Ljava/lang/String;

.field public enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

.field public extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

.field public messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

.field public name:Ljava/lang/String;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

.field public package_:Ljava/lang/String;

.field public publicDependency:[I

.field public service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

.field public sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

.field public syntax:Ljava/lang/String;

.field public weakDependency:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 173
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    .line 174
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    .line 175
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    .line 176
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    .line 177
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    .line 178
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    .line 179
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    .line 180
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    .line 181
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    .line 182
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->cachedSize:I

    .line 184
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    if-nez v0, :cond_1

    .line 124
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    .line 129
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 577
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 259
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 260
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 261
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    .line 262
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 264
    :cond_0
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 265
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    .line 266
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 268
    :cond_1
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 271
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 272
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 273
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 274
    add-int/lit8 v0, v0, 0x1

    .line 276
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 271
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    .end local v2    # "element":Ljava/lang/String;
    :cond_3
    add-int/2addr v4, v1

    .line 280
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 282
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v5, v5

    if-lez v5, :cond_6

    .line 283
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v5, v5

    if-ge v3, v5, :cond_6

    .line 284
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    aget-object v2, v5, v3

    .line 285
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    if-eqz v2, :cond_5

    .line 286
    const/4 v5, 0x4

    .line 287
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 283
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 291
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .end local v3    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v5, v5

    if-lez v5, :cond_8

    .line 292
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v5, v5

    if-ge v3, v5, :cond_8

    .line 293
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    aget-object v2, v5, v3

    .line 294
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    if-eqz v2, :cond_7

    .line 295
    const/4 v5, 0x5

    .line 296
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 292
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 300
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .end local v3    # "i":I
    :cond_8
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v5, v5

    if-lez v5, :cond_a

    .line 301
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v5, v5

    if-ge v3, v5, :cond_a

    .line 302
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    aget-object v2, v5, v3

    .line 303
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    if-eqz v2, :cond_9

    .line 304
    const/4 v5, 0x6

    .line 305
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 301
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 309
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .end local v3    # "i":I
    :cond_a
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v5, v5

    if-lez v5, :cond_c

    .line 310
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v5, v5

    if-ge v3, v5, :cond_c

    .line 311
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    aget-object v2, v5, v3

    .line 312
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    if-eqz v2, :cond_b

    .line 313
    const/4 v5, 0x7

    .line 314
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 310
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 318
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    .end local v3    # "i":I
    :cond_c
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-eqz v5, :cond_d

    .line 319
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    .line 320
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 322
    :cond_d
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    if-eqz v5, :cond_e

    .line 323
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    .line 324
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 326
    :cond_e
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v5, v5

    if-lez v5, :cond_10

    .line 327
    const/4 v1, 0x0

    .line 328
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v5, v5

    if-ge v3, v5, :cond_f

    .line 329
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    aget v2, v5, v3

    .line 331
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 328
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 333
    .end local v2    # "element":I
    :cond_f
    add-int/2addr v4, v1

    .line 334
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 336
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_10
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v5, v5

    if-lez v5, :cond_12

    .line 337
    const/4 v1, 0x0

    .line 338
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v5, v5

    if-ge v3, v5, :cond_11

    .line 339
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    aget v2, v5, v3

    .line 341
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 338
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 343
    .end local v2    # "element":I
    :cond_11
    add-int/2addr v4, v1

    .line 344
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 346
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_12
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    if-eqz v5, :cond_13

    .line 347
    const/16 v5, 0xc

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    .line 348
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 350
    :cond_13
    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 358
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 359
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 363
    invoke-super {p0, p1, v6}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 364
    :sswitch_0
    return-object p0

    .line 369
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    .line 373
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    goto :goto_0

    .line 377
    :sswitch_3
    const/16 v8, 0x1a

    .line 378
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 379
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    if-nez v8, :cond_2

    move v1, v7

    .line 380
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [Ljava/lang/String;

    .line 381
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 382
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 385
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 386
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 379
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v1, v8

    goto :goto_1

    .line 389
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 390
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    goto :goto_0

    .line 394
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_4
    const/16 v8, 0x22

    .line 395
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 396
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-nez v8, :cond_5

    move v1, v7

    .line 397
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    .line 399
    .local v4, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    if-eqz v1, :cond_4

    .line 400
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    :cond_4
    :goto_4
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_6

    .line 403
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 404
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 405
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 396
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    :cond_5
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v1, v8

    goto :goto_3

    .line 408
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    :cond_6
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 409
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 410
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    goto/16 :goto_0

    .line 414
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    :sswitch_5
    const/16 v8, 0x2a

    .line 415
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 416
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-nez v8, :cond_8

    move v1, v7

    .line 417
    .restart local v1    # "i":I
    :goto_5
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    .line 419
    .local v4, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    if-eqz v1, :cond_7

    .line 420
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    :cond_7
    :goto_6
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_9

    .line 423
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 424
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 425
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 416
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    :cond_8
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v1, v8

    goto :goto_5

    .line 428
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    :cond_9
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 429
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 430
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    goto/16 :goto_0

    .line 434
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    :sswitch_6
    const/16 v8, 0x32

    .line 435
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 436
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-nez v8, :cond_b

    move v1, v7

    .line 437
    .restart local v1    # "i":I
    :goto_7
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    .line 439
    .local v4, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    if-eqz v1, :cond_a

    .line 440
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    :cond_a
    :goto_8
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_c

    .line 443
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 444
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 445
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 436
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    :cond_b
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v1, v8

    goto :goto_7

    .line 448
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    :cond_c
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 449
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 450
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    goto/16 :goto_0

    .line 454
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    :sswitch_7
    const/16 v8, 0x3a

    .line 455
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 456
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-nez v8, :cond_e

    move v1, v7

    .line 457
    .restart local v1    # "i":I
    :goto_9
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    .line 459
    .local v4, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    if-eqz v1, :cond_d

    .line 460
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    :cond_d
    :goto_a
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_f

    .line 463
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 464
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 465
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 456
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    :cond_e
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v1, v8

    goto :goto_9

    .line 468
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    :cond_f
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 469
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 470
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    goto/16 :goto_0

    .line 474
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    :sswitch_8
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-nez v8, :cond_10

    .line 475
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;-><init>()V

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    .line 477
    :cond_10
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 481
    :sswitch_9
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    if-nez v8, :cond_11

    .line 482
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;-><init>()V

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    .line 484
    :cond_11
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 488
    :sswitch_a
    const/16 v8, 0x50

    .line 489
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 490
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-nez v8, :cond_13

    move v1, v7

    .line 491
    .restart local v1    # "i":I
    :goto_b
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 492
    .local v4, "newArray":[I
    if-eqz v1, :cond_12

    .line 493
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    :cond_12
    :goto_c
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_14

    .line 496
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 497
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 490
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_13
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v1, v8

    goto :goto_b

    .line 500
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 501
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    goto/16 :goto_0

    .line 505
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 506
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 508
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 509
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 510
    .local v5, "startPos":I
    :goto_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_15

    .line 511
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 514
    :cond_15
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 515
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-nez v8, :cond_17

    move v1, v7

    .line 516
    .restart local v1    # "i":I
    :goto_e
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 517
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_16

    .line 518
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    :cond_16
    :goto_f
    array-length v8, v4

    if-ge v1, v8, :cond_18

    .line 521
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 515
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_17
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v1, v8

    goto :goto_e

    .line 523
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_18
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    .line 524
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 528
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_c
    const/16 v8, 0x58

    .line 529
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 530
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-nez v8, :cond_1a

    move v1, v7

    .line 531
    .restart local v1    # "i":I
    :goto_10
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 532
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_19

    .line 533
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    :cond_19
    :goto_11
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_1b

    .line 536
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 537
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 530
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_1a
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v1, v8

    goto :goto_10

    .line 540
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 541
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    goto/16 :goto_0

    .line 545
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 546
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 548
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 549
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 550
    .restart local v5    # "startPos":I
    :goto_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_1c

    .line 551
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 554
    :cond_1c
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 555
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-nez v8, :cond_1e

    move v1, v7

    .line 556
    .restart local v1    # "i":I
    :goto_13
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 557
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_1d

    .line 558
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 560
    :cond_1d
    :goto_14
    array-length v8, v4

    if-ge v1, v8, :cond_1f

    .line 561
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 555
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_1e
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v1, v8

    goto :goto_13

    .line 563
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_1f
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    .line 564
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 568
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    goto/16 :goto_0

    .line 359
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x52 -> :sswitch_b
        0x58 -> :sswitch_c
        0x5a -> :sswitch_d
        0x62 -> :sswitch_e
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
    .line 117
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

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
    .line 189
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 190
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 193
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 196
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 197
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 198
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 199
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 196
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 204
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 205
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    aget-object v0, v2, v1

    .line 206
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    if-eqz v0, :cond_4

    .line 207
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 204
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 212
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 213
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    aget-object v0, v2, v1

    .line 214
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    if-eqz v0, :cond_6

    .line 215
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 212
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 219
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 220
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 221
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    aget-object v0, v2, v1

    .line 222
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    if-eqz v0, :cond_8

    .line 223
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 220
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 227
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .end local v1    # "i":I
    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_b

    .line 228
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 229
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    aget-object v0, v2, v1

    .line 230
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    if-eqz v0, :cond_a

    .line 231
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 228
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 235
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    .end local v1    # "i":I
    :cond_b
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-eqz v2, :cond_c

    .line 236
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 238
    :cond_c
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    if-eqz v2, :cond_d

    .line 239
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 241
    :cond_d
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v2, v2

    if-lez v2, :cond_e

    .line 242
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 243
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 246
    .end local v1    # "i":I
    :cond_e
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v2, v2

    if-lez v2, :cond_f

    .line 247
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v2, v2

    if-ge v1, v2, :cond_f

    .line 248
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 251
    .end local v1    # "i":I
    :cond_f
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 252
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 254
    :cond_10
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 255
    return-void
.end method
