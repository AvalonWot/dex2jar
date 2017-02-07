.class Lcom/google/vr/inputcompanion/InputCompanionServer;
.super Ljava/lang/Object;
.source "InputCompanionServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

.field private final components:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/vr/inputcompanion/components/InputComponent;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private final listener:Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/vr/inputcompanion/InputCompanionServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/inputcompanion/InputCompanionServer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/inputcompanion/ClientConnection;Ljava/util/List;Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;)V
    .locals 4
    .param p1, "clientConnection"    # Lcom/google/vr/inputcompanion/ClientConnection;
    .param p3, "listener"    # Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/inputcompanion/ClientConnection;",
            "Ljava/util/List",
            "<",
            "Lcom/google/vr/inputcompanion/components/InputComponent;",
            ">;",
            "Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "components":Ljava/util/List;, "Ljava/util/List<Lcom/google/vr/inputcompanion/components/InputComponent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/vr/inputcompanion/InputCompanionServer;->clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    .line 43
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/vr/inputcompanion/InputCompanionServer;->components:Lcom/google/common/collect/ImmutableList;

    .line 44
    iput-object p3, p0, Lcom/google/vr/inputcompanion/InputCompanionServer;->listener:Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;

    .line 45
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/vr/inputcompanion/InputCompanionServer;->handler:Landroid/os/Handler;

    .line 47
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/inputcompanion/components/InputComponent;

    .line 48
    .local v0, "component":Lcom/google/vr/inputcompanion/components/InputComponent;
    invoke-interface {v0}, Lcom/google/vr/inputcompanion/components/InputComponent;->start()V

    goto :goto_0

    .line 51
    .end local v0    # "component":Lcom/google/vr/inputcompanion/components/InputComponent;
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Read Thread"

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    .local v1, "readThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/inputcompanion/InputCompanionServer;)Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/InputCompanionServer;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/vr/inputcompanion/InputCompanionServer;->listener:Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 57
    sget-object v4, Lcom/google/vr/inputcompanion/InputCompanionServer;->TAG:Ljava/lang/String;

    const-string v5, "Read thread started"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/google/vr/inputcompanion/InputCompanionServer;->clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-virtual {v4}, Lcom/google/vr/inputcompanion/ClientConnection;->receiveMessage()Lcom/google/protobuf/nano/MessageNano;
    :try_end_0
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 63
    :catch_0
    move-exception v3

    .line 75
    :goto_1
    iget-object v4, p0, Lcom/google/vr/inputcompanion/InputCompanionServer;->components:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/inputcompanion/components/InputComponent;

    .line 76
    .local v0, "component":Lcom/google/vr/inputcompanion/components/InputComponent;
    invoke-interface {v0}, Lcom/google/vr/inputcompanion/components/InputComponent;->stop()V

    goto :goto_2

    .line 66
    .end local v0    # "component":Lcom/google/vr/inputcompanion/components/InputComponent;
    :catch_1
    move-exception v1

    .line 67
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 70
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v4, Lcom/google/vr/inputcompanion/InputCompanionServer;->TAG:Ljava/lang/String;

    const-string v5, "Unexpected error during read thread (stack trace follows)."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    iget-object v4, p0, Lcom/google/vr/inputcompanion/InputCompanionServer;->clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-virtual {v4}, Lcom/google/vr/inputcompanion/ClientConnection;->close()V

    .line 79
    iget-object v4, p0, Lcom/google/vr/inputcompanion/InputCompanionServer;->listener:Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;

    if-eqz v4, :cond_1

    .line 80
    iget-object v4, p0, Lcom/google/vr/inputcompanion/InputCompanionServer;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/google/vr/inputcompanion/InputCompanionServer$1;

    invoke-direct {v5, p0}, Lcom/google/vr/inputcompanion/InputCompanionServer$1;-><init>(Lcom/google/vr/inputcompanion/InputCompanionServer;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    :cond_1
    return-void
.end method
