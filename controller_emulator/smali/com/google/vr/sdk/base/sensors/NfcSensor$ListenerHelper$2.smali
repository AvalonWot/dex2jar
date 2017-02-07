.class Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper$2;
.super Ljava/lang/Object;
.source "NfcSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->onRemovedFromGvrViewer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper$2;->this$0:Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper$2;->this$0:Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;

    # getter for: Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->listener:Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;
    invoke-static {v0}, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->access$500(Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;)Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;->onRemovedFromGvrViewer()V

    .line 586
    return-void
.end method
