.class Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;
.super Ljava/lang/Object;
.source "CardboardViewNativeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;->getCurrentEyeParams(Lcom/google/vr/sdk/base/HeadTransform;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

.field final synthetic val$finished:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$head:Lcom/google/vr/sdk/base/HeadTransform;

.field final synthetic val$leftEye:Lcom/google/vr/sdk/base/Eye;

.field final synthetic val$leftEyeNoDistortionCorrection:Lcom/google/vr/sdk/base/Eye;

.field final synthetic val$monocular:Lcom/google/vr/sdk/base/Eye;

.field final synthetic val$rightEye:Lcom/google/vr/sdk/base/Eye;

.field final synthetic val$rightEyeNoDistortionCorrection:Lcom/google/vr/sdk/base/Eye;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;Lcom/google/vr/sdk/base/HeadTransform;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->this$1:Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

    iput-object p2, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->val$head:Lcom/google/vr/sdk/base/HeadTransform;

    iput-object p3, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->val$leftEye:Lcom/google/vr/sdk/base/Eye;

    iput-object p4, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->val$rightEye:Lcom/google/vr/sdk/base/Eye;

    iput-object p5, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->val$monocular:Lcom/google/vr/sdk/base/Eye;

    iput-object p6, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->val$leftEyeNoDistortionCorrection:Lcom/google/vr/sdk/base/Eye;

    iput-object p7, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->val$rightEyeNoDistortionCorrection:Lcom/google/vr/sdk/base/Eye;

    iput-object p8, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->val$finished:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->this$1:Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

    iget-object v1, v0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->this$1:Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

    iget-object v0, v0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    # getter for: Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeCardboardView:J
    invoke-static {v0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->access$100(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->val$head:Lcom/google/vr/sdk/base/HeadTransform;

    iget-object v5, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->val$leftEye:Lcom/google/vr/sdk/base/Eye;

    iget-object v6, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->val$rightEye:Lcom/google/vr/sdk/base/Eye;

    iget-object v7, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->val$monocular:Lcom/google/vr/sdk/base/Eye;

    iget-object v8, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->val$leftEyeNoDistortionCorrection:Lcom/google/vr/sdk/base/Eye;

    iget-object v9, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->val$rightEyeNoDistortionCorrection:Lcom/google/vr/sdk/base/Eye;

    # invokes: Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeGetCurrentEyeParams(JLcom/google/vr/sdk/base/HeadTransform;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;)V
    invoke-static/range {v1 .. v9}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->access$2900(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;JLcom/google/vr/sdk/base/HeadTransform;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;)V

    .line 635
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper$3;->val$finished:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 636
    return-void
.end method
