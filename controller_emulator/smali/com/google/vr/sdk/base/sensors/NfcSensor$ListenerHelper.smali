.class Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;
.super Ljava/lang/Object;
.source "NfcSensor.java"

# interfaces
.implements Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/base/sensors/NfcSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerHelper"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private listener:Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->listener:Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;

    .line 563
    iput-object p2, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->handler:Landroid/os/Handler;

    .line 564
    return-void
.end method

.method static synthetic access$500(Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;)Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->listener:Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->listener:Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;

    return-object v0
.end method

.method public onInsertedIntoGvrViewer(Lcom/google/vr/sdk/base/GvrViewerParams;)V
    .locals 2
    .param p1, "viewerParams"    # Lcom/google/vr/sdk/base/GvrViewerParams;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper$1;-><init>(Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;Lcom/google/vr/sdk/base/GvrViewerParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 578
    return-void
.end method

.method public onRemovedFromGvrViewer()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper$2;

    invoke-direct {v1, p0}, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper$2;-><init>(Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    return-void
.end method
