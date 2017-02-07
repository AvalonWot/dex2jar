.class Lcom/google/vr/inputcompanion/BluetoothSocketServer$2;
.super Ljava/lang/Object;
.source "BluetoothSocketServer.java"

# interfaces
.implements Lcom/google/vr/inputcompanion/BluetoothSocketServer$ClientConnectionFactory;


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
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromBluetoothSocket(Landroid/bluetooth/BluetoothSocket;)Lcom/google/vr/inputcompanion/ClientConnection;
    .locals 1
    .param p1, "socket"    # Landroid/bluetooth/BluetoothSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p1}, Lcom/google/vr/inputcompanion/ClientConnection;->createFromBluetoothSocket(Landroid/bluetooth/BluetoothSocket;)Lcom/google/vr/inputcompanion/ClientConnection;

    move-result-object v0

    return-object v0
.end method
