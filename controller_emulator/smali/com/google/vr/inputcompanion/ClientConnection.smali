.class public Lcom/google/vr/inputcompanion/ClientConnection;
.super Ljava/lang/Object;
.source "ClientConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/inputcompanion/ClientConnection$ChannelFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final closeLock:Ljava/lang/Object;

.field private volatile isClosed:Z

.field private final networkSocket:Ljava/nio/channels/SocketChannel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final readChannel:Ljava/nio/channels/ReadableByteChannel;

.field private final writeChannel:Ljava/nio/channels/WritableByteChannel;

.field private final writeHandler:Landroid/os/Handler;

.field private final writeThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/inputcompanion/ClientConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/nio/channels/SocketChannel;Landroid/bluetooth/BluetoothSocket;Ljava/lang/Thread;Landroid/os/Handler;Lcom/google/vr/inputcompanion/ClientConnection$ChannelFactory;)V
    .locals 5
    .param p1, "networkSocket"    # Ljava/nio/channels/SocketChannel;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "bluetoothSocket"    # Landroid/bluetooth/BluetoothSocket;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "writeThread"    # Ljava/lang/Thread;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "writeHandler"    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "channelFactory"    # Lcom/google/vr/inputcompanion/ClientConnection$ChannelFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/google/vr/inputcompanion/ClientConnection;->closeLock:Ljava/lang/Object;

    .line 103
    iput-object p1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->networkSocket:Ljava/nio/channels/SocketChannel;

    .line 104
    iput-object p2, p0, Lcom/google/vr/inputcompanion/ClientConnection;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 107
    if-nez p5, :cond_0

    .line 108
    new-instance p5, Lcom/google/vr/inputcompanion/ClientConnection$1;

    .end local p5    # "channelFactory":Lcom/google/vr/inputcompanion/ClientConnection$ChannelFactory;
    invoke-direct {p5, p0}, Lcom/google/vr/inputcompanion/ClientConnection$1;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;)V

    .line 124
    .restart local p5    # "channelFactory":Lcom/google/vr/inputcompanion/ClientConnection$ChannelFactory;
    :cond_0
    if-nez p1, :cond_2

    move v4, v1

    :goto_0
    if-nez p2, :cond_3

    move v3, v1

    :goto_1
    if-eq v4, v3, :cond_4

    :goto_2
    const-string v2, "Exactly one of networkSocket or bluetoothSocket must be non-null."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 126
    if-eqz p3, :cond_1

    .line 127
    const-string v1, "If writeThread is not null, writeHandler must also be not null."

    invoke-static {p4, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_1
    if-eqz p1, :cond_5

    .line 132
    iput-object p1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->readChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 133
    iput-object p1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->writeChannel:Ljava/nio/channels/WritableByteChannel;

    .line 139
    :goto_3
    if-nez p3, :cond_6

    .line 140
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Write thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    iput-object v0, p0, Lcom/google/vr/inputcompanion/ClientConnection;->writeThread:Ljava/lang/Thread;

    .line 142
    iget-object v1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 145
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->writeHandler:Landroid/os/Handler;

    .line 155
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :goto_4
    return-void

    :cond_2
    move v4, v2

    .line 124
    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 135
    :cond_5
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p5, v1}, Lcom/google/vr/inputcompanion/ClientConnection$ChannelFactory;->createReadableChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->readChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 136
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {p5, v1}, Lcom/google/vr/inputcompanion/ClientConnection$ChannelFactory;->createWritableChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->writeChannel:Ljava/nio/channels/WritableByteChannel;

    goto :goto_3

    .line 147
    :cond_6
    if-nez p4, :cond_7

    .line 148
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "If a writeThread is provided to ClientConnection, a writeHandler must also be provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_7
    iput-object p3, p0, Lcom/google/vr/inputcompanion/ClientConnection;->writeThread:Ljava/lang/Thread;

    .line 153
    iput-object p4, p0, Lcom/google/vr/inputcompanion/ClientConnection;->writeHandler:Landroid/os/Handler;

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/google/vr/inputcompanion/ClientConnection;Lcom/google/protobuf/nano/MessageNano;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/ClientConnection;
    .param p1, "x1"    # Lcom/google/protobuf/nano/MessageNano;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/vr/inputcompanion/ClientConnection;->sendMessageOnWriteThread(Lcom/google/protobuf/nano/MessageNano;)Z

    move-result v0

    return v0
.end method

.method public static createFromBluetoothSocket(Landroid/bluetooth/BluetoothSocket;)Lcom/google/vr/inputcompanion/ClientConnection;
    .locals 6
    .param p0, "bluetoothSocket"    # Landroid/bluetooth/BluetoothSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 92
    new-instance v0, Lcom/google/vr/inputcompanion/ClientConnection;

    move-object v2, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/inputcompanion/ClientConnection;-><init>(Ljava/nio/channels/SocketChannel;Landroid/bluetooth/BluetoothSocket;Ljava/lang/Thread;Landroid/os/Handler;Lcom/google/vr/inputcompanion/ClientConnection$ChannelFactory;)V

    return-object v0
.end method

.method public static createFromNetworkSocket(Ljava/nio/channels/SocketChannel;)Lcom/google/vr/inputcompanion/ClientConnection;
    .locals 6
    .param p0, "networkSocket"    # Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/google/vr/inputcompanion/ClientConnection;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/inputcompanion/ClientConnection;-><init>(Ljava/nio/channels/SocketChannel;Landroid/bluetooth/BluetoothSocket;Ljava/lang/Thread;Landroid/os/Handler;Lcom/google/vr/inputcompanion/ClientConnection$ChannelFactory;)V

    return-object v0
.end method

.method private sendMessageOnWriteThread(Lcom/google/protobuf/nano/MessageNano;)Z
    .locals 6
    .param p1, "message"    # Lcom/google/protobuf/nano/MessageNano;

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-boolean v2, p0, Lcom/google/vr/inputcompanion/ClientConnection;->isClosed:Z

    if-eqz v2, :cond_0

    .line 215
    :goto_0
    return v1

    .line 209
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/inputcompanion/ClientConnection;->writeChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-static {v2, p1}, Lcom/google/vr/inputcompanion/ProtoUtils;->writeToChannel(Ljava/nio/channels/WritableByteChannel;Lcom/google/protobuf/nano/MessageNano;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const/4 v1, 0x1

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/vr/inputcompanion/ClientConnection;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to write to socket: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/google/vr/inputcompanion/ClientConnection;->close()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 222
    iget-object v2, p0, Lcom/google/vr/inputcompanion/ClientConnection;->closeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 223
    :try_start_0
    iget-boolean v1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->isClosed:Z

    if-eqz v1, :cond_1

    .line 224
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->networkSocket:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->networkSocket:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_3

    .line 232
    iget-object v1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 234
    :cond_3
    iget-object v1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->writeChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 235
    iget-object v1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->readChannel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->writeHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 241
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->isClosed:Z

    .line 245
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/inputcompanion/ClientConnection;->writeThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_0

    .line 250
    :try_start_3
    iget-object v1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 236
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 245
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method getBluetoothSocket()Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/vr/inputcompanion/ClientConnection;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method getNetworkSocket()Ljava/nio/channels/SocketChannel;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/vr/inputcompanion/ClientConnection;->networkSocket:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public getWriteHandler()Landroid/os/Handler;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/google/vr/inputcompanion/ClientConnection;->isClosed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/inputcompanion/ClientConnection;->writeHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public isBluetooth()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/vr/inputcompanion/ClientConnection;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/google/vr/inputcompanion/ClientConnection;->isClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public receiveMessage()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/vr/inputcompanion/ClientConnection;->isClosed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/inputcompanion/ClientConnection;->readChannel:Ljava/nio/channels/ReadableByteChannel;

    invoke-static {v0}, Lcom/google/vr/inputcompanion/ProtoUtils;->readFromChannel(Ljava/nio/channels/ReadableByteChannel;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v0

    goto :goto_0
.end method

.method public sendMessage(Lcom/google/protobuf/nano/MessageNano;)Z
    .locals 2
    .param p1, "message"    # Lcom/google/protobuf/nano/MessageNano;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/google/vr/inputcompanion/ClientConnection;->isClosed:Z

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 201
    :goto_0
    return v0

    .line 191
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/inputcompanion/ClientConnection;->writeThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    .line 192
    invoke-direct {p0, p1}, Lcom/google/vr/inputcompanion/ClientConnection;->sendMessageOnWriteThread(Lcom/google/protobuf/nano/MessageNano;)Z

    move-result v0

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/google/vr/inputcompanion/ClientConnection;->writeHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/inputcompanion/ClientConnection$2;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/inputcompanion/ClientConnection$2;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    const/4 v0, 0x1

    goto :goto_0
.end method
