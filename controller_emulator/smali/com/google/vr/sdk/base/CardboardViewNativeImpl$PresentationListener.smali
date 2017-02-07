.class Lcom/google/vr/sdk/base/CardboardViewNativeImpl$PresentationListener;
.super Ljava/lang/Object;
.source "CardboardViewNativeImpl.java"

# interfaces
.implements Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresentationListener"
.end annotation


# instance fields
.field originalParams:Lcom/google/vr/sdk/base/ScreenParams;

.field final synthetic this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$PresentationListener;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;Lcom/google/vr/sdk/base/CardboardViewNativeImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p2, "x1"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl$1;

    .prologue
    .line 510
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$PresentationListener;-><init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)V

    return-void
.end method


# virtual methods
.method public onPresentationStarted(Landroid/view/Display;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 515
    iget-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$PresentationListener;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    invoke-virtual {v1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->getScreenParams()Lcom/google/vr/sdk/base/ScreenParams;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$PresentationListener;->originalParams:Lcom/google/vr/sdk/base/ScreenParams;

    .line 516
    new-instance v0, Lcom/google/vr/sdk/base/ScreenParams;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/base/ScreenParams;-><init>(Landroid/view/Display;)V

    .line 519
    .local v0, "newParams":Lcom/google/vr/sdk/base/ScreenParams;
    iget-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$PresentationListener;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->updateScreenParams(Lcom/google/vr/sdk/base/ScreenParams;)V

    .line 524
    iget-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$PresentationListener;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    # invokes: Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->reconnectSensors()V
    invoke-static {v1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->access$1400(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)V

    .line 525
    return-void
.end method

.method public onPresentationStopped()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$PresentationListener;->originalParams:Lcom/google/vr/sdk/base/ScreenParams;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$PresentationListener;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    iget-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$PresentationListener;->originalParams:Lcom/google/vr/sdk/base/ScreenParams;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->updateScreenParams(Lcom/google/vr/sdk/base/ScreenParams;)V

    .line 532
    :cond_0
    return-void
.end method
