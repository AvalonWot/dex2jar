.class final Lcom/google/protobuf/Proto2Schema$LookupPositionStrategy;
.super Lcom/google/protobuf/Proto2Schema$PositionStrategy;
.source "Proto2Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Proto2Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LookupPositionStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/protobuf/Proto2Schema;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Proto2Schema;)V
    .locals 1

    .prologue
    .line 1828
    .local p0, "this":Lcom/google/protobuf/Proto2Schema$LookupPositionStrategy;, "Lcom/google/protobuf/Proto2Schema<TT;>.LookupPositionStrategy;"
    iput-object p1, p0, Lcom/google/protobuf/Proto2Schema$LookupPositionStrategy;->this$0:Lcom/google/protobuf/Proto2Schema;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/Proto2Schema$PositionStrategy;-><init>(Lcom/google/protobuf/Proto2Schema$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Proto2Schema;Lcom/google/protobuf/Proto2Schema$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/Proto2Schema;
    .param p2, "x1"    # Lcom/google/protobuf/Proto2Schema$1;

    .prologue
    .line 1828
    .local p0, "this":Lcom/google/protobuf/Proto2Schema$LookupPositionStrategy;, "Lcom/google/protobuf/Proto2Schema<TT;>.LookupPositionStrategy;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Proto2Schema$LookupPositionStrategy;-><init>(Lcom/google/protobuf/Proto2Schema;)V

    return-void
.end method


# virtual methods
.method positionForFieldNumber(I)J
    .locals 7
    .param p1, "fieldNumber"    # I

    .prologue
    .line 1831
    .local p0, "this":Lcom/google/protobuf/Proto2Schema$LookupPositionStrategy;, "Lcom/google/protobuf/Proto2Schema<TT;>.LookupPositionStrategy;"
    const/4 v5, 0x0

    .line 1832
    .local v5, "min":I
    iget-object v6, p0, Lcom/google/protobuf/Proto2Schema$LookupPositionStrategy;->this$0:Lcom/google/protobuf/Proto2Schema;

    # getter for: Lcom/google/protobuf/Proto2Schema;->numFields:I
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->access$600(Lcom/google/protobuf/Proto2Schema;)I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 1833
    .local v0, "max":I
    :goto_0
    if-gt v5, v0, :cond_2

    .line 1835
    add-int v6, v0, v5

    ushr-int/lit8 v1, v6, 0x1

    .line 1836
    .local v1, "mid":I
    iget-object v6, p0, Lcom/google/protobuf/Proto2Schema$LookupPositionStrategy;->this$0:Lcom/google/protobuf/Proto2Schema;

    # invokes: Lcom/google/protobuf/Proto2Schema;->indexToAddress(I)J
    invoke-static {v6, v1}, Lcom/google/protobuf/Proto2Schema;->access$500(Lcom/google/protobuf/Proto2Schema;I)J

    move-result-wide v2

    .line 1837
    .local v2, "midAddress":J
    # invokes: Lcom/google/protobuf/Proto2Schema;->numberAt(J)I
    invoke-static {v2, v3}, Lcom/google/protobuf/Proto2Schema;->access$700(J)I

    move-result v4

    .line 1838
    .local v4, "midFieldNumber":I
    if-ne p1, v4, :cond_0

    .line 1850
    .end local v1    # "mid":I
    .end local v2    # "midAddress":J
    .end local v4    # "midFieldNumber":I
    :goto_1
    return-wide v2

    .line 1842
    .restart local v1    # "mid":I
    .restart local v2    # "midAddress":J
    .restart local v4    # "midFieldNumber":I
    :cond_0
    if-ge p1, v4, :cond_1

    .line 1844
    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 1847
    :cond_1
    add-int/lit8 v5, v1, 0x1

    goto :goto_0

    .line 1850
    .end local v1    # "mid":I
    .end local v2    # "midAddress":J
    .end local v4    # "midFieldNumber":I
    :cond_2
    const-wide/16 v2, -0x1

    goto :goto_1
.end method
