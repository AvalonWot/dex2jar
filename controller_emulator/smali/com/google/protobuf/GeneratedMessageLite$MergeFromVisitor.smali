.class public Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MergeFromVisitor"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2177
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    invoke-direct {v0}, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;-><init>()V

    sput-object v0, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBoolean(ZZZZ)Z
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Z
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # Z

    .prologue
    .line 2184
    if-eqz p3, :cond_0

    .end local p4    # "other":Z
    :goto_0
    return p4

    .restart local p4    # "other":Z
    :cond_0
    move p4, p2

    goto :goto_0
.end method

.method public visitBooleanList(Lcom/google/protobuf/Internal$BooleanList;Lcom/google/protobuf/Internal$BooleanList;)Lcom/google/protobuf/Internal$BooleanList;
    .locals 3
    .param p1, "mine"    # Lcom/google/protobuf/Internal$BooleanList;
    .param p2, "other"    # Lcom/google/protobuf/Internal$BooleanList;

    .prologue
    .line 2312
    invoke-interface {p1}, Lcom/google/protobuf/Internal$BooleanList;->size()I

    move-result v1

    .line 2313
    .local v1, "size":I
    invoke-interface {p2}, Lcom/google/protobuf/Internal$BooleanList;->size()I

    move-result v0

    .line 2314
    .local v0, "otherSize":I
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 2315
    invoke-interface {p1}, Lcom/google/protobuf/Internal$BooleanList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2316
    add-int v2, v1, v0

    invoke-interface {p1, v2}, Lcom/google/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$BooleanList;

    move-result-object p1

    .line 2318
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$BooleanList;->addAll(Ljava/util/Collection;)Z

    .line 2321
    :cond_1
    if-lez v1, :cond_2

    .end local p1    # "mine":Lcom/google/protobuf/Internal$BooleanList;
    :goto_0
    return-object p1

    .restart local p1    # "mine":Lcom/google/protobuf/Internal$BooleanList;
    :cond_2
    move-object p1, p2

    goto :goto_0
.end method

.method public visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Lcom/google/protobuf/ByteString;
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2217
    if-eqz p3, :cond_0

    .end local p4    # "other":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object p4

    .restart local p4    # "other":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object p4, p2

    goto :goto_0
.end method

.method public visitDouble(ZDZD)D
    .locals 1
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # D
    .param p4, "otherPresent"    # Z
    .param p5, "other"    # D

    .prologue
    .line 2195
    if-eqz p4, :cond_0

    .end local p5    # "other":D
    :goto_0
    return-wide p5

    .restart local p5    # "other":D
    :cond_0
    move-wide p5, p2

    goto :goto_0
.end method

.method public visitDoubleList(Lcom/google/protobuf/Internal$DoubleList;Lcom/google/protobuf/Internal$DoubleList;)Lcom/google/protobuf/Internal$DoubleList;
    .locals 3
    .param p1, "mine"    # Lcom/google/protobuf/Internal$DoubleList;
    .param p2, "other"    # Lcom/google/protobuf/Internal$DoubleList;

    .prologue
    .line 2340
    invoke-interface {p1}, Lcom/google/protobuf/Internal$DoubleList;->size()I

    move-result v1

    .line 2341
    .local v1, "size":I
    invoke-interface {p2}, Lcom/google/protobuf/Internal$DoubleList;->size()I

    move-result v0

    .line 2342
    .local v0, "otherSize":I
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 2343
    invoke-interface {p1}, Lcom/google/protobuf/Internal$DoubleList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2344
    add-int v2, v1, v0

    invoke-interface {p1, v2}, Lcom/google/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$DoubleList;

    move-result-object p1

    .line 2346
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$DoubleList;->addAll(Ljava/util/Collection;)Z

    .line 2349
    :cond_1
    if-lez v1, :cond_2

    .end local p1    # "mine":Lcom/google/protobuf/Internal$DoubleList;
    :goto_0
    return-object p1

    .restart local p1    # "mine":Lcom/google/protobuf/Internal$DoubleList;
    :cond_2
    move-object p1, p2

    goto :goto_0
.end method

.method public visitExtensions(Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/FieldSet;)Lcom/google/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2384
    .local p1, "mine":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    .local p2, "other":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2385
    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->clone()Lcom/google/protobuf/FieldSet;

    move-result-object p1

    .line 2387
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    .line 2388
    return-object p1
.end method

.method public visitFloat(ZFZF)F
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # F
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # F

    .prologue
    .line 2200
    if-eqz p3, :cond_0

    .end local p4    # "other":F
    :goto_0
    return p4

    .restart local p4    # "other":F
    :cond_0
    move p4, p2

    goto :goto_0
.end method

.method public visitFloatList(Lcom/google/protobuf/Internal$FloatList;Lcom/google/protobuf/Internal$FloatList;)Lcom/google/protobuf/Internal$FloatList;
    .locals 3
    .param p1, "mine"    # Lcom/google/protobuf/Internal$FloatList;
    .param p2, "other"    # Lcom/google/protobuf/Internal$FloatList;

    .prologue
    .line 2354
    invoke-interface {p1}, Lcom/google/protobuf/Internal$FloatList;->size()I

    move-result v1

    .line 2355
    .local v1, "size":I
    invoke-interface {p2}, Lcom/google/protobuf/Internal$FloatList;->size()I

    move-result v0

    .line 2356
    .local v0, "otherSize":I
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 2357
    invoke-interface {p1}, Lcom/google/protobuf/Internal$FloatList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2358
    add-int v2, v1, v0

    invoke-interface {p1, v2}, Lcom/google/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$FloatList;

    move-result-object p1

    .line 2360
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$FloatList;->addAll(Ljava/util/Collection;)Z

    .line 2363
    :cond_1
    if-lez v1, :cond_2

    .end local p1    # "mine":Lcom/google/protobuf/Internal$FloatList;
    :goto_0
    return-object p1

    .restart local p1    # "mine":Lcom/google/protobuf/Internal$FloatList;
    :cond_2
    move-object p1, p2

    goto :goto_0
.end method

.method public visitInt(ZIZI)I
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # I
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # I

    .prologue
    .line 2189
    if-eqz p3, :cond_0

    .end local p4    # "other":I
    :goto_0
    return p4

    .restart local p4    # "other":I
    :cond_0
    move p4, p2

    goto :goto_0
.end method

.method public visitIntList(Lcom/google/protobuf/Internal$IntList;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 3
    .param p1, "mine"    # Lcom/google/protobuf/Internal$IntList;
    .param p2, "other"    # Lcom/google/protobuf/Internal$IntList;

    .prologue
    .line 2326
    invoke-interface {p1}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v1

    .line 2327
    .local v1, "size":I
    invoke-interface {p2}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    .line 2328
    .local v0, "otherSize":I
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 2329
    invoke-interface {p1}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2330
    add-int v2, v1, v0

    invoke-interface {p1, v2}, Lcom/google/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$IntList;

    move-result-object p1

    .line 2332
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$IntList;->addAll(Ljava/util/Collection;)Z

    .line 2335
    :cond_1
    if-lez v1, :cond_2

    .end local p1    # "mine":Lcom/google/protobuf/Internal$IntList;
    :goto_0
    return-object p1

    .restart local p1    # "mine":Lcom/google/protobuf/Internal$IntList;
    :cond_2
    move-object p1, p2

    goto :goto_0
.end method

.method public visitLazyMessage(Lcom/google/protobuf/LazyFieldLite;Lcom/google/protobuf/LazyFieldLite;)Lcom/google/protobuf/LazyFieldLite;
    .locals 0
    .param p1, "mine"    # Lcom/google/protobuf/LazyFieldLite;
    .param p2, "other"    # Lcom/google/protobuf/LazyFieldLite;

    .prologue
    .line 2287
    if-eqz p2, :cond_1

    .line 2288
    if-nez p1, :cond_0

    .line 2289
    new-instance p1, Lcom/google/protobuf/LazyFieldLite;

    .end local p1    # "mine":Lcom/google/protobuf/LazyFieldLite;
    invoke-direct {p1}, Lcom/google/protobuf/LazyFieldLite;-><init>()V

    .line 2291
    .restart local p1    # "mine":Lcom/google/protobuf/LazyFieldLite;
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/protobuf/LazyFieldLite;->merge(Lcom/google/protobuf/LazyFieldLite;)V

    .line 2293
    :cond_1
    return-object p1
.end method

.method public visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Internal$ProtobufList",
            "<TT;>;",
            "Lcom/google/protobuf/Internal$ProtobufList",
            "<TT;>;)",
            "Lcom/google/protobuf/Internal$ProtobufList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2298
    .local p1, "mine":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<TT;>;"
    .local p2, "other":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<TT;>;"
    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    .line 2299
    .local v1, "size":I
    invoke-interface {p2}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 2300
    .local v0, "otherSize":I
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 2301
    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2302
    add-int v2, v1, v0

    invoke-interface {p1, v2}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    .line 2304
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->addAll(Ljava/util/Collection;)Z

    .line 2307
    :cond_1
    if-lez v1, :cond_2

    .end local p1    # "mine":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<TT;>;"
    :goto_0
    return-object p1

    .restart local p1    # "mine":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<TT;>;"
    :cond_2
    move-object p1, p2

    goto :goto_0
.end method

.method public visitLong(ZJZJ)J
    .locals 1
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # J
    .param p4, "otherPresent"    # Z
    .param p5, "other"    # J

    .prologue
    .line 2205
    if-eqz p4, :cond_0

    .end local p5    # "other":J
    :goto_0
    return-wide p5

    .restart local p5    # "other":J
    :cond_0
    move-wide p5, p2

    goto :goto_0
.end method

.method public visitLongList(Lcom/google/protobuf/Internal$LongList;Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;
    .locals 3
    .param p1, "mine"    # Lcom/google/protobuf/Internal$LongList;
    .param p2, "other"    # Lcom/google/protobuf/Internal$LongList;

    .prologue
    .line 2368
    invoke-interface {p1}, Lcom/google/protobuf/Internal$LongList;->size()I

    move-result v1

    .line 2369
    .local v1, "size":I
    invoke-interface {p2}, Lcom/google/protobuf/Internal$LongList;->size()I

    move-result v0

    .line 2370
    .local v0, "otherSize":I
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 2371
    invoke-interface {p1}, Lcom/google/protobuf/Internal$LongList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2372
    add-int v2, v1, v0

    invoke-interface {p1, v2}, Lcom/google/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$LongList;

    move-result-object p1

    .line 2374
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$LongList;->addAll(Ljava/util/Collection;)Z

    .line 2377
    :cond_1
    if-lez v1, :cond_2

    .end local p1    # "mine":Lcom/google/protobuf/Internal$LongList;
    :goto_0
    return-object p1

    .restart local p1    # "mine":Lcom/google/protobuf/Internal$LongList;
    :cond_2
    move-object p1, p2

    goto :goto_0
.end method

.method public visitMap(Lcom/google/protobuf/MapFieldLite;Lcom/google/protobuf/MapFieldLite;)Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/MapFieldLite",
            "<TK;TV;>;",
            "Lcom/google/protobuf/MapFieldLite",
            "<TK;TV;>;)",
            "Lcom/google/protobuf/MapFieldLite",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2401
    .local p1, "mine":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p2, "other":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p2}, Lcom/google/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2402
    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2403
    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object p1

    .line 2405
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/protobuf/MapFieldLite;->mergeFrom(Lcom/google/protobuf/MapFieldLite;)V

    .line 2407
    :cond_1
    return-object p1
.end method

.method public visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 2278
    .local p1, "mine":Lcom/google/protobuf/MessageLite;, "TT;"
    .local p2, "other":Lcom/google/protobuf/MessageLite;, "TT;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2279
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p1

    .line 2282
    .end local p1    # "mine":Lcom/google/protobuf/MessageLite;, "TT;"
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "mine":Lcom/google/protobuf/MessageLite;, "TT;"
    :cond_1
    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0
.end method

.method public visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .prologue
    .line 2222
    return-object p3
.end method

.method public visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .prologue
    .line 2252
    return-object p3
.end method

.method public visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .prologue
    .line 2232
    return-object p3
.end method

.method public visitOneofFloat(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .prologue
    .line 2237
    return-object p3
.end method

.method public visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .prologue
    .line 2227
    return-object p3
.end method

.method public visitOneofLazyMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .prologue
    .line 2257
    if-eqz p1, :cond_0

    check-cast p2, Lcom/google/protobuf/LazyFieldLite;

    .end local p2    # "mine":Ljava/lang/Object;
    move-object v0, p2

    .line 2258
    .local v0, "lazy":Lcom/google/protobuf/LazyFieldLite;
    :goto_0
    check-cast p3, Lcom/google/protobuf/LazyFieldLite;

    .end local p3    # "other":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Lcom/google/protobuf/LazyFieldLite;->merge(Lcom/google/protobuf/LazyFieldLite;)V

    .line 2259
    return-object v0

    .line 2257
    .end local v0    # "lazy":Lcom/google/protobuf/LazyFieldLite;
    .restart local p2    # "mine":Ljava/lang/Object;
    .restart local p3    # "other":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/google/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/google/protobuf/LazyFieldLite;-><init>()V

    goto :goto_0
.end method

.method public visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .prologue
    .line 2242
    return-object p3
.end method

.method public visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .prologue
    .line 2264
    if-eqz p1, :cond_0

    .line 2265
    check-cast p2, Lcom/google/protobuf/MessageLite;

    .end local p2    # "mine":Ljava/lang/Object;
    check-cast p3, Lcom/google/protobuf/MessageLite;

    .end local p3    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p3

    .line 2267
    :cond_0
    return-object p3
.end method

.method public visitOneofNotSet(Z)V
    .locals 0
    .param p1, "minePresent"    # Z

    .prologue
    .line 2272
    return-void
.end method

.method public visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .prologue
    .line 2247
    return-object p3
.end method

.method public visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/String;
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # Ljava/lang/String;

    .prologue
    .line 2211
    if-eqz p3, :cond_0

    .end local p4    # "other":Ljava/lang/String;
    :goto_0
    return-object p4

    .restart local p4    # "other":Ljava/lang/String;
    :cond_0
    move-object p4, p2

    goto :goto_0
.end method

.method public visitUnknownFields(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 1
    .param p1, "mine"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "other"    # Lcom/google/protobuf/UnknownFieldSetLite;

    .prologue
    .line 2395
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .end local p1    # "mine":Lcom/google/protobuf/UnknownFieldSetLite;
    :goto_0
    return-object p1

    .line 2396
    .restart local p1    # "mine":Lcom/google/protobuf/UnknownFieldSetLite;
    :cond_0
    invoke-static {p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object p1

    goto :goto_0
.end method
