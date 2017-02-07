.class interface abstract Lcom/google/vr/inputcompanion/BluetoothSocketServer$ClientConnectionFactory;
.super Ljava/lang/Object;
.source "BluetoothSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/inputcompanion/BluetoothSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ClientConnectionFactory"
.end annotation


# virtual methods
.method public abstract createFromBluetoothSocket(Landroid/bluetooth/BluetoothSocket;)Lcom/google/vr/inputcompanion/ClientConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
