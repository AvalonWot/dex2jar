.class interface abstract Lcom/google/vr/inputcompanion/BluetoothSocketServer$ThreadSleepMethod;
.super Ljava/lang/Object;
.source "BluetoothSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/inputcompanion/BluetoothSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ThreadSleepMethod"
.end annotation


# virtual methods
.method public abstract sleep(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
