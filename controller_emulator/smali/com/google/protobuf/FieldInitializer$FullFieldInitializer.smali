.class final Lcom/google/protobuf/FieldInitializer$FullFieldInitializer;
.super Lcom/google/protobuf/FieldInitializer;
.source "FieldInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/FieldInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FullFieldInitializer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/FieldInitializer;-><init>(Lcom/google/protobuf/FieldInitializer$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/FieldInitializer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/FieldInitializer$1;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/protobuf/FieldInitializer$FullFieldInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/SchemaUtil;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
