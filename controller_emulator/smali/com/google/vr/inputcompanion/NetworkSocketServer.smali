.class public Lcom/google/vr/inputcompanion/NetworkSocketServer;
.super Lcom/google/vr/inputcompanion/BaseSocketServer;
.source "NetworkSocketServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final clientConnectionCallback:Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;

.field private final listenThread:Ljava/lang/Thread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final serverSocket:Ljava/nio/channels/ServerSocketChannel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/vr/inputcompanion/NetworkSocketServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/inputcompanion/NetworkSocketServer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;)V
    .locals 4
    .param p1, "port"    # I
    .param p2, "clientConnectionCallback"    # Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/BaseSocketServer;-><init>()V

    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "tmpSocket":Ljava/nio/channels/ServerSocketChannel;
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v2

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    iput-object v1, p0, Lcom/google/vr/inputcompanion/NetworkSocketServer;->serverSocket:Ljava/nio/channels/ServerSocketChannel;

    .line 41
    iput-object p2, p0, Lcom/google/vr/inputcompanion/NetworkSocketServer;->clientConnectionCallback:Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;

    .line 42
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "Socket Server"

    invoke-direct {v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/vr/inputcompanion/NetworkSocketServer;->listenThread:Ljava/lang/Thread;

    .line 43
    iget-object v2, p0, Lcom/google/vr/inputcompanion/NetworkSocketServer;->listenThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 44
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 48
    sget-object v3, Lcom/google/vr/inputcompanion/NetworkSocketServer;->TAG:Ljava/lang/String;

    const-string v4, "Running socket listener thread."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    iget-object v3, p0, Lcom/google/vr/inputcompanion/NetworkSocketServer;->serverSocket:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/vr/inputcompanion/NetworkSocketServer;->serverSocket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 54
    .local v0, "clientSocket":Ljava/nio/channels/SocketChannel;
    :try_start_0
    sget-object v3, Lcom/google/vr/inputcompanion/NetworkSocketServer;->TAG:Ljava/lang/String;

    const-string v4, "Listening"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v3, p0, Lcom/google/vr/inputcompanion/NetworkSocketServer;->serverSocket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 56
    sget-object v3, Lcom/google/vr/inputcompanion/NetworkSocketServer;->TAG:Ljava/lang/String;

    const-string v4, "ServerSocket.accept() received socket."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {v0}, Lcom/google/vr/inputcompanion/ClientConnection;->createFromNetworkSocket(Ljava/nio/channels/SocketChannel;)Lcom/google/vr/inputcompanion/ClientConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    .local v1, "connection":Lcom/google/vr/inputcompanion/ClientConnection;
    iget-object v3, p0, Lcom/google/vr/inputcompanion/NetworkSocketServer;->clientConnectionCallback:Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;

    invoke-interface {v3, v1}, Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;->onConnect(Lcom/google/vr/inputcompanion/ClientConnection;)V

    goto :goto_0

    .line 58
    .end local v1    # "connection":Lcom/google/vr/inputcompanion/ClientConnection;
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/google/vr/inputcompanion/NetworkSocketServer;->TAG:Ljava/lang/String;

    const-string v4, "Failed to accept socket or create client connection."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v0    # "clientSocket":Ljava/nio/channels/SocketChannel;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    sget-object v3, Lcom/google/vr/inputcompanion/NetworkSocketServer;->TAG:Ljava/lang/String;

    const-string v4, "Stopping socket listener thread."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/google/vr/inputcompanion/NetworkSocketServer;->serverSocket:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/inputcompanion/NetworkSocketServer;->serverSocket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/inputcompanion/NetworkSocketServer;->listenThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    .line 84
    :try_start_1
    iget-object v1, p0, Lcom/google/vr/inputcompanion/NetworkSocketServer;->listenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/vr/inputcompanion/NetworkSocketServer;->clientConnectionCallback:Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;

    invoke-interface {v1}, Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;->onServerStopped()V

    .line 91
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
