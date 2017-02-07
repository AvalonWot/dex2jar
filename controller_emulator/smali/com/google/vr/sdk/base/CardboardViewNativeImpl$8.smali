.class Lcom/google/vr/sdk/base/CardboardViewNativeImpl$8;
.super Ljava/lang/Object;
.source "CardboardViewNativeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->setGvrViewerParams(Lcom/google/vr/sdk/base/GvrViewerParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

.field final synthetic val$newParams:Lcom/google/vr/sdk/base/GvrViewerParams;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;Lcom/google/vr/sdk/base/GvrViewerParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$8;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    iput-object p2, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$8;->val$newParams:Lcom/google/vr/sdk/base/GvrViewerParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$8;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    iget-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$8;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    # getter for: Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeCardboardView:J
    invoke-static {v1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->access$100(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$8;->val$newParams:Lcom/google/vr/sdk/base/GvrViewerParams;

    invoke-virtual {v1}, Lcom/google/vr/sdk/base/GvrViewerParams;->toByteArray()[B

    move-result-object v1

    # invokes: Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeSetGvrViewerParams(J[B)V
    invoke-static {v0, v2, v3, v1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->access$1000(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;J[B)V

    .line 473
    return-void
.end method
