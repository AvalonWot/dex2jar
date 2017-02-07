.class final Lcom/google/protobuf/LongArrayList;
.super Lcom/google/protobuf/AbstractProtobufList;
.source "LongArrayList.java"

# interfaces
.implements Lcom/google/protobuf/Internal$LongList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractProtobufList",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/google/protobuf/Internal$LongList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/google/protobuf/LongArrayList;


# instance fields
.field private array:[J

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/LongArrayList;-><init>()V

    sput-object v0, Lcom/google/protobuf/LongArrayList;->EMPTY_LIST:Lcom/google/protobuf/LongArrayList;

    .line 23
    sget-object v0, Lcom/google/protobuf/LongArrayList;->EMPTY_LIST:Lcom/google/protobuf/LongArrayList;

    invoke-virtual {v0}, Lcom/google/protobuf/LongArrayList;->makeImmutable()V

    .line 24
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 45
    const/16 v0, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/LongArrayList;-><init>([JI)V

    .line 46
    return-void
.end method

.method private constructor <init>([JI)V
    .locals 0
    .param p1, "other"    # [J
    .param p2, "size"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/AbstractProtobufList;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    .line 54
    iput p2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    .line 55
    return-void
.end method

.method private addLong(IJ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "element"    # J

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    .line 145
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-le p1, v2, :cond_1

    .line 146
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/protobuf/LongArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_1
    iget v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    iget-object v3, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 151
    iget-object v2, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    iget-object v3, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Lcom/google/protobuf/LongArrayList;->size:I

    sub-int/2addr v5, p1

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aput-wide p2, v2, p1

    .line 166
    iget v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    .line 167
    iget v2, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    .line 168
    return-void

    .line 154
    :cond_2
    iget v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x1

    .line 155
    .local v0, "length":I
    new-array v1, v0, [J

    .line 158
    .local v1, "newArray":[J
    iget-object v2, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    invoke-static {v2, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v2, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/protobuf/LongArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iput-object v1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    goto :goto_0
.end method

.method public static emptyList()Lcom/google/protobuf/LongArrayList;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/protobuf/LongArrayList;->EMPTY_LIST:Lcom/google/protobuf/LongArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 237
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-lt p1, v0, :cond_1

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/protobuf/LongArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    return-void
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 243
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    const/16 v1, 0x23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Index:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Long;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Long;

    .prologue
    .line 129
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/protobuf/LongArrayList;->addLong(IJ)V

    .line 130
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LongArrayList;->add(ILjava/lang/Long;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    .line 174
    if-nez p1, :cond_0

    .line 175
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 179
    :cond_0
    instance-of v4, p1, Lcom/google/protobuf/LongArrayList;

    if-nez v4, :cond_2

    .line 180
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 202
    :cond_1
    :goto_0
    return v3

    :cond_2
    move-object v0, p1

    .line 183
    check-cast v0, Lcom/google/protobuf/LongArrayList;

    .line 184
    .local v0, "list":Lcom/google/protobuf/LongArrayList;
    iget v4, v0, Lcom/google/protobuf/LongArrayList;->size:I

    if-eqz v4, :cond_1

    .line 188
    const v4, 0x7fffffff

    iget v5, p0, Lcom/google/protobuf/LongArrayList;->size:I

    sub-int v2, v4, v5

    .line 189
    .local v2, "overflow":I
    iget v4, v0, Lcom/google/protobuf/LongArrayList;->size:I

    if-ge v2, v4, :cond_3

    .line 191
    new-instance v3, Ljava/lang/OutOfMemoryError;

    invoke-direct {v3}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v3

    .line 194
    :cond_3
    iget v4, p0, Lcom/google/protobuf/LongArrayList;->size:I

    iget v5, v0, Lcom/google/protobuf/LongArrayList;->size:I

    add-int v1, v4, v5

    .line 195
    .local v1, "newSize":I
    iget-object v4, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    array-length v4, v4

    if-le v1, v4, :cond_4

    .line 196
    iget-object v4, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    .line 199
    :cond_4
    iget-object v4, v0, Lcom/google/protobuf/LongArrayList;->array:[J

    iget-object v5, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    iget v6, p0, Lcom/google/protobuf/LongArrayList;->size:I

    iget v7, v0, Lcom/google/protobuf/LongArrayList;->size:I

    invoke-static {v4, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iput v1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    .line 201
    iget v3, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    .line 202
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public addLong(J)V
    .locals 1
    .param p1, "element"    # J

    .prologue
    .line 137
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/LongArrayList;->addLong(IJ)V

    .line 138
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v3

    .line 62
    :cond_1
    instance-of v5, p1, Lcom/google/protobuf/LongArrayList;

    if-nez v5, :cond_2

    .line 63
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 65
    check-cast v2, Lcom/google/protobuf/LongArrayList;

    .line 66
    .local v2, "other":Lcom/google/protobuf/LongArrayList;
    iget v5, p0, Lcom/google/protobuf/LongArrayList;->size:I

    iget v6, v2, Lcom/google/protobuf/LongArrayList;->size:I

    if-eq v5, v6, :cond_3

    move v3, v4

    .line 67
    goto :goto_0

    .line 70
    :cond_3
    iget-object v0, v2, Lcom/google/protobuf/LongArrayList;->array:[J

    .line 71
    .local v0, "arr":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-ge v1, v5, :cond_0

    .line 72
    iget-object v5, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v6, v5, v1

    aget-wide v8, v0, v1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    move v3, v4

    .line 73
    goto :goto_0

    .line 71
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Long;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LongArrayList;->get(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/google/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 105
    iget-object v0, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 82
    const/4 v1, 0x1

    .line 83
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-ge v0, v2, :cond_0

    .line 84
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v4, v3, v0

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int v1, v2, v3

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return v1
.end method

.method public mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$LongList;
    .locals 3
    .param p1, "capacity"    # I

    .prologue
    .line 91
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-ge p1, v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 94
    :cond_0
    new-instance v0, Lcom/google/protobuf/LongArrayList;

    iget-object v1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;-><init>([JI)V

    return-object v0
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LongArrayList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Long;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    .line 222
    invoke-direct {p0, p1}, Lcom/google/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 223
    iget-object v2, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v0, v2, p1

    .line 224
    .local v0, "value":J
    iget-object v2, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    iget v5, p0, Lcom/google/protobuf/LongArrayList;->size:I

    sub-int/2addr v5, p1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    .line 226
    iget v2, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    .line 227
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LongArrayList;->remove(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-ge v0, v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v2, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    iget v4, p0, Lcom/google/protobuf/LongArrayList;->size:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iget v1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    .line 212
    iget v1, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    .line 213
    const/4 v1, 0x1

    .line 216
    :goto_1
    return v1

    .line 208
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public set(ILjava/lang/Long;)Ljava/lang/Long;
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Long;

    .prologue
    .line 115
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/LongArrayList;->setLong(IJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LongArrayList;->set(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public setLong(IJ)J
    .locals 4
    .param p1, "index"    # I
    .param p2, "element"    # J

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    .line 121
    invoke-direct {p0, p1}, Lcom/google/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 122
    iget-object v2, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v0, v2, p1

    .line 123
    .local v0, "previousValue":J
    iget-object v2, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aput-wide p2, v2, p1

    .line 124
    return-wide v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    return v0
.end method
