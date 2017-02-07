.class public Lcom/google/vr/inputcompanion/BluetoothSocketServer;
.super Lcom/google/vr/inputcompanion/BaseSocketServer;
.source "BluetoothSocketServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/inputcompanion/BluetoothSocketServer$ClientConnectionFactory;,
        Lcom/google/vr/inputcompanion/BluetoothSocketServer$ThreadSleepMethod;
    }
.end annotation


# static fields
.field private static final RETRY_INTERVAL_MILLIS:J = 0x1388L

.field static final SERVICE_NAME:Ljava/lang/String; = "Controller Emulator"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SERVICE_UUID:Ljava/lang/String; = "ab001ac1-d740-4abb-a8e6-1cb5a49628fa"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final callback:Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;

.field private final clientConnectionFactory:Lcom/google/vr/inputcompanion/BluetoothSocketServer$ClientConnectionFactory;

.field private final listenThread:Ljava/lang/Thread;

.field private final lock:Ljava/lang/Object;

.field private shouldStop:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final sleepMethod:Lcom/google/vr/inputcompanion/BluetoothSocketServer$ThreadSleepMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/google/vr/inputcompanion/BluetoothSocketServer;-><init>(Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;Landroid/bluetooth/BluetoothAdapter;Lcom/google/vr/inputcompanion/BluetoothSocketServer$ThreadSleepMethod;Lcom/google/vr/inputcompanion/BluetoothSocketServer$ClientConnectionFactory;)V

    .line 63
    return-void
.end method

.method constructor <init>(Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;Landroid/bluetooth/BluetoothAdapter;Lcom/google/vr/inputcompanion/BluetoothSocketServer$ThreadSleepMethod;Lcom/google/vr/inputcompanion/BluetoothSocketServer$ClientConnectionFactory;)V
    .locals 2
    .param p1, "callback"    # Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "sleepMethod"    # Lcom/google/vr/inputcompanion/BluetoothSocketServer$ThreadSleepMethod;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "clientConnectionFactory"    # Lcom/google/vr/inputcompanion/BluetoothSocketServer$ClientConnectionFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/BaseSocketServer;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->lock:Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->shouldStop:Z

    .line 71
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;

    iput-object v0, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->callback:Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;

    .line 72
    if-eqz p2, :cond_0

    .end local p2    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    iput-object p2, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 73
    if-eqz p3, :cond_1

    .end local p3    # "sleepMethod":Lcom/google/vr/inputcompanion/BluetoothSocketServer$ThreadSleepMethod;
    :goto_1
    iput-object p3, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->sleepMethod:Lcom/google/vr/inputcompanion/BluetoothSocketServer$ThreadSleepMethod;

    .line 79
    if-eqz p4, :cond_2

    .line 80
    .end local p4    # "clientConnectionFactory":Lcom/google/vr/inputcompanion/BluetoothSocketServer$ClientConnectionFactory;
    :goto_2
    iput-object p4, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->clientConnectionFactory:Lcom/google/vr/inputcompanion/BluetoothSocketServer$ClientConnectionFactory;

    .line 87
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "BluetoothSocketServer Listen Thread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->listenThread:Ljava/lang/Thread;

    .line 90
    iget-object v0, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_3

    .line 91
    sget-object v0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->TAG:Ljava/lang/String;

    const-string v1, "No bluetooth adapter!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_3
    return-void

    .line 72
    .restart local p2    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local p3    # "sleepMethod":Lcom/google/vr/inputcompanion/BluetoothSocketServer$ThreadSleepMethod;
    .restart local p4    # "clientConnectionFactory":Lcom/google/vr/inputcompanion/BluetoothSocketServer$ClientConnectionFactory;
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    goto :goto_0

    .line 73
    .end local p2    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    new-instance p3, Lcom/google/vr/inputcompanion/BluetoothSocketServer$1;

    .end local p3    # "sleepMethod":Lcom/google/vr/inputcompanion/BluetoothSocketServer$ThreadSleepMethod;
    invoke-direct {p3, p0}, Lcom/google/vr/inputcompanion/BluetoothSocketServer$1;-><init>(Lcom/google/vr/inputcompanion/BluetoothSocketServer;)V

    goto :goto_1

    .line 80
    :cond_2
    new-instance p4, Lcom/google/vr/inputcompanion/BluetoothSocketServer$2;

    .end local p4    # "clientConnectionFactory":Lcom/google/vr/inputcompanion/BluetoothSocketServer$ClientConnectionFactory;
    invoke-direct {p4, p0}, Lcom/google/vr/inputcompanion/BluetoothSocketServer$2;-><init>(Lcom/google/vr/inputcompanion/BluetoothSocketServer;)V

    goto :goto_2

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->listenThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_3
.end method

.method private closeServerSocket()V
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->bluetoothServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->bluetoothServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {p0, v0}, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->closeSilently(Landroid/bluetooth/BluetoothServerSocket;)V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->bluetoothServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 140
    :cond_0
    monitor-exit v1

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private closeSilently(Landroid/bluetooth/BluetoothServerSocket;)V
    .locals 1
    .param p1, "socket"    # Landroid/bluetooth/BluetoothServerSocket;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 224
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doOneConnectionAttempt()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v2, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v3, "Controller Emulator"

    const-string v4, "ab001ac1-d740-4abb-a8e6-1cb5a49628fa"

    .line 183
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    .line 182
    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    .line 185
    .local v1, "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    if-nez v1, :cond_0

    .line 187
    sget-object v2, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create bluetooth server socket."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->setServerSocket(Landroid/bluetooth/BluetoothServerSocket;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    invoke-direct {p0, v1}, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->closeSilently(Landroid/bluetooth/BluetoothServerSocket;)V

    goto :goto_0

    .line 197
    :cond_1
    sget-object v2, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->TAG:Ljava/lang/String;

    const-string v3, "Awaiting bluetooth connection."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 202
    .local v0, "bluetoothSocket":Landroid/bluetooth/BluetoothSocket;
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->closeServerSocket()V

    .line 204
    if-nez v0, :cond_2

    .line 205
    sget-object v2, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->TAG:Ljava/lang/String;

    const-string v3, "Failed to accept bluetooth socket."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_2
    sget-object v2, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->TAG:Ljava/lang/String;

    const-string v3, "Connected to bluetooth socket."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->callback:Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;

    iget-object v3, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->clientConnectionFactory:Lcom/google/vr/inputcompanion/BluetoothSocketServer$ClientConnectionFactory;

    invoke-interface {v3, v0}, Lcom/google/vr/inputcompanion/BluetoothSocketServer$ClientConnectionFactory;->createFromBluetoothSocket(Landroid/bluetooth/BluetoothSocket;)Lcom/google/vr/inputcompanion/ClientConnection;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;->onConnect(Lcom/google/vr/inputcompanion/ClientConnection;)V

    goto :goto_0
.end method

.method private setServerSocket(Landroid/bluetooth/BluetoothServerSocket;)Z
    .locals 2
    .param p1, "bluetoothServerSocket"    # Landroid/bluetooth/BluetoothServerSocket;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->shouldStop:Z

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    monitor-exit v1

    .line 130
    :goto_0
    return v0

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->bluetoothServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 130
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private shouldStop()Z
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->shouldStop:Z

    monitor-exit v1

    return v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sleep(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->sleepMethod:Lcom/google/vr/inputcompanion/BluetoothSocketServer$ThreadSleepMethod;

    invoke-interface {v1, p1, p2}, Lcom/google/vr/inputcompanion/BluetoothSocketServer$ThreadSleepMethod;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "retryMessagePrinted":Z
    :goto_0
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->shouldStop()Z

    move-result v2

    if-nez v2, :cond_3

    .line 154
    iget-object v2, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    if-nez v1, :cond_0

    .line 157
    sget-object v2, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->TAG:Ljava/lang/String;

    const-string v3, "Bluetooth not enabled. Will keep trying."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v1, 0x1

    .line 160
    :cond_0
    const-wide/16 v2, 0x1388

    invoke-direct {p0, v2, v3}, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->sleep(J)V

    goto :goto_0

    .line 163
    :cond_1
    const/4 v1, 0x0

    .line 165
    :try_start_0
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->doOneConnectionAttempt()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->closeServerSocket()V

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 169
    .local v0, "ex":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->shouldStop()Z

    move-result v2

    if-nez v2, :cond_2

    .line 170
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 176
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_3
    sget-object v2, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->TAG:Ljava/lang/String;

    const-string v3, "Bluetooth server socket stopped."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 100
    sget-object v1, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->TAG:Ljava/lang/String;

    const-string v2, "Stopping bluetooth socket server."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v2, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->shouldStop:Z

    .line 103
    iget-object v1, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->bluetoothServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 105
    :try_start_1
    iget-object v1, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->bluetoothServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->listenThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    .line 114
    :try_start_3
    iget-object v1, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->listenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 120
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->callback:Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;

    invoke-interface {v1}, Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;->onServerStopped()V

    .line 121
    sget-object v1, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->TAG:Ljava/lang/String;

    const-string v2, "Stopped bluetooth socket server."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 110
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 106
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
