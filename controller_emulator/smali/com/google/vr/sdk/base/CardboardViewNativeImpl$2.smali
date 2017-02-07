.class Lcom/google/vr/sdk/base/CardboardViewNativeImpl$2;
.super Ljava/lang/Object;
.source "CardboardViewNativeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->setDistortionCorrectionEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$2;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    iput-boolean p2, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$2;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$2;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    iget-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$2;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    # getter for: Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeCardboardView:J
    invoke-static {v1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->access$100(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)J

    move-result-wide v2

    iget-boolean v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$2;->val$enabled:Z

    # invokes: Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeSetDistortionCorrectionEnabled(JZ)V
    invoke-static {v0, v2, v3, v1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->access$400(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;JZ)V

    .line 312
    return-void
.end method
