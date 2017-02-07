.class Lcom/google/vr/inputcompanion/BluetoothSocketServer$1;
.super Ljava/lang/Object;
.source "BluetoothSocketServer.java"

# interfaces
.implements Lcom/google/vr/inputcompanion/BluetoothSocketServer$ThreadSleepMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/BluetoothSocketServer;-><init>(Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;Landroid/bluetooth/BluetoothAdapter;Lcom/google/vr/inputcompanion/BluetoothSocketServer$ThreadSleepMethod;Lcom/google/vr/inputcompanion/BluetoothSocketServer$ClientConnectionFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/BluetoothSocketServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/BluetoothSocketServer;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sleep(J)V
    .locals 1
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 77
    return-void
.end method
