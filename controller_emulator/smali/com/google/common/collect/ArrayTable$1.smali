.class Lcom/google/common/collect/ArrayTable$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable;->cellIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/ArrayTable;
    .param p2, "size"    # I

    .prologue
    .line 548
    .local p0, "this":Lcom/google/common/collect/ArrayTable$1;, "Lcom/google/common/collect/ArrayTable$1;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$1;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected get(I)Lcom/google/common/collect/Table$Cell;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "this":Lcom/google/common/collect/ArrayTable$1;, "Lcom/google/common/collect/ArrayTable$1;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$1;->this$0:Lcom/google/common/collect/ArrayTable;

    # invokes: Lcom/google/common/collect/ArrayTable;->getCell(I)Lcom/google/common/collect/Table$Cell;
    invoke-static {v0, p1}, Lcom/google/common/collect/ArrayTable;->access$000(Lcom/google/common/collect/ArrayTable;I)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 548
    .local p0, "this":Lcom/google/common/collect/ArrayTable$1;, "Lcom/google/common/collect/ArrayTable$1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$1;->get(I)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method
