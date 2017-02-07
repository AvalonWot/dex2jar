.class Lcom/google/vr/sdk/base/CardboardViewNativeImpl$3;
.super Ljava/lang/Object;
.source "CardboardViewNativeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->undistortTexture(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

.field final synthetic val$inputTexture:I


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$3;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    iput p2, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$3;->val$inputTexture:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$3;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    iget-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$3;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    # getter for: Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeCardboardView:J
    invoke-static {v1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->access$100(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)J

    move-result-wide v2

    iget v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$3;->val$inputTexture:I

    # invokes: Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeUndistortTexture(JI)V
    invoke-static {v0, v2, v3, v1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->access$500(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;JI)V

    .line 328
    return-void
.end method
