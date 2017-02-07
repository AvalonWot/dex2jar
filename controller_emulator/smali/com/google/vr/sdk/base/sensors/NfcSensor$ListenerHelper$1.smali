.class Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper$1;
.super Ljava/lang/Object;
.source "NfcSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->onInsertedIntoGvrViewer(Lcom/google/vr/sdk/base/GvrViewerParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;

.field final synthetic val$viewerParams:Lcom/google/vr/sdk/base/GvrViewerParams;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;Lcom/google/vr/sdk/base/GvrViewerParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper$1;->this$0:Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;

    iput-object p2, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper$1;->val$viewerParams:Lcom/google/vr/sdk/base/GvrViewerParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper$1;->this$0:Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;

    # getter for: Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->listener:Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;
    invoke-static {v0}, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->access$500(Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;)Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper$1;->val$viewerParams:Lcom/google/vr/sdk/base/GvrViewerParams;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;->onInsertedIntoGvrViewer(Lcom/google/vr/sdk/base/GvrViewerParams;)V

    .line 576
    return-void
.end method
