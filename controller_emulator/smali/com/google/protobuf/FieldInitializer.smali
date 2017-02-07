.class abstract Lcom/google/protobuf/FieldInitializer;
.super Ljava/lang/Object;
.source "FieldInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/FieldInitializer$LiteFieldInitializer;,
        Lcom/google/protobuf/FieldInitializer$FullFieldInitializer;
    }
.end annotation


# static fields
.field private static final FULL_INSTANCE:Lcom/google/protobuf/FieldInitializer;

.field private static final LITE_INSTANCE:Lcom/google/protobuf/FieldInitializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    new-instance v0, Lcom/google/protobuf/FieldInitializer$FullFieldInitializer;

    invoke-direct {v0, v1}, Lcom/google/protobuf/FieldInitializer$FullFieldInitializer;-><init>(Lcom/google/protobuf/FieldInitializer$1;)V

    sput-object v0, Lcom/google/protobuf/FieldInitializer;->FULL_INSTANCE:Lcom/google/protobuf/FieldInitializer;

    .line 14
    new-instance v0, Lcom/google/protobuf/FieldInitializer$LiteFieldInitializer;

    invoke-direct {v0, v1}, Lcom/google/protobuf/FieldInitializer$LiteFieldInitializer;-><init>(Lcom/google/protobuf/FieldInitializer$1;)V

    sput-object v0, Lcom/google/protobuf/FieldInitializer;->LITE_INSTANCE:Lcom/google/protobuf/FieldInitializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/FieldInitializer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/FieldInitializer$1;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/FieldInitializer;-><init>()V

    return-void
.end method

.method static full()Lcom/google/protobuf/FieldInitializer;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/protobuf/FieldInitializer;->FULL_INSTANCE:Lcom/google/protobuf/FieldInitializer;

    return-object v0
.end method

.method static lite()Lcom/google/protobuf/FieldInitializer;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/protobuf/FieldInitializer;->LITE_INSTANCE:Lcom/google/protobuf/FieldInitializer;

    return-object v0
.end method


# virtual methods
.method abstract mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
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
.end method
