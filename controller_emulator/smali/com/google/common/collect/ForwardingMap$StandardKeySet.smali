.class public Lcom/google/common/collect/ForwardingMap$StandardKeySet;
.super Lcom/google/common/collect/Maps$KeySet;
.source "ForwardingMap.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$KeySet",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/ForwardingMap;

    .prologue
    .line 207
    .local p0, "this":Lcom/google/common/collect/ForwardingMap$StandardKeySet;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>.StandardKeySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    .line 208
    return-void
.end method
