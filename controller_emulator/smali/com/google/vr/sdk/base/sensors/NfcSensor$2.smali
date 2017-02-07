.class Lcom/google/vr/sdk/base/sensors/NfcSensor$2;
.super Ljava/util/TimerTask;
.source "NfcSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/base/sensors/NfcSensor;->onNewNfcTag(Landroid/nfc/Tag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/base/sensors/NfcSensor;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/base/sensors/NfcSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/sdk/base/sensors/NfcSensor;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$2;->this$0:Lcom/google/vr/sdk/base/sensors/NfcSensor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$2;->this$0:Lcom/google/vr/sdk/base/sensors/NfcSensor;

    # getter for: Lcom/google/vr/sdk/base/sensors/NfcSensor;->tagLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->access$000(Lcom/google/vr/sdk/base/sensors/NfcSensor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$2;->this$0:Lcom/google/vr/sdk/base/sensors/NfcSensor;

    # getter for: Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;
    invoke-static {v0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->access$100(Lcom/google/vr/sdk/base/sensors/NfcSensor;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$2;->this$0:Lcom/google/vr/sdk/base/sensors/NfcSensor;

    # ++operator for: Lcom/google/vr/sdk/base/sensors/NfcSensor;->tagConnectionFailures:I
    invoke-static {v0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->access$204(Lcom/google/vr/sdk/base/sensors/NfcSensor;)I

    .line 488
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$2;->this$0:Lcom/google/vr/sdk/base/sensors/NfcSensor;

    # getter for: Lcom/google/vr/sdk/base/sensors/NfcSensor;->tagConnectionFailures:I
    invoke-static {v0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->access$200(Lcom/google/vr/sdk/base/sensors/NfcSensor;)I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 489
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$2;->this$0:Lcom/google/vr/sdk/base/sensors/NfcSensor;

    # invokes: Lcom/google/vr/sdk/base/sensors/NfcSensor;->closeCurrentNfcTag()V
    invoke-static {v0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->access$300(Lcom/google/vr/sdk/base/sensors/NfcSensor;)V

    .line 490
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor$2;->this$0:Lcom/google/vr/sdk/base/sensors/NfcSensor;

    # invokes: Lcom/google/vr/sdk/base/sensors/NfcSensor;->sendDisconnectionEvent()V
    invoke-static {v0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->access$400(Lcom/google/vr/sdk/base/sensors/NfcSensor;)V

    .line 493
    :cond_0
    monitor-exit v1

    .line 494
    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
