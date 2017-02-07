.class Lcom/google/vr/inputcompanion/ClientConnection$2;
.super Ljava/lang/Object;
.source "ClientConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/ClientConnection;->sendMessage(Lcom/google/protobuf/nano/MessageNano;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/inputcompanion/ClientConnection;

.field final synthetic val$message:Lcom/google/protobuf/nano/MessageNano;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/ClientConnection;Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/ClientConnection;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/vr/inputcompanion/ClientConnection$2;->this$0:Lcom/google/vr/inputcompanion/ClientConnection;

    iput-object p2, p0, Lcom/google/vr/inputcompanion/ClientConnection$2;->val$message:Lcom/google/protobuf/nano/MessageNano;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/vr/inputcompanion/ClientConnection$2;->this$0:Lcom/google/vr/inputcompanion/ClientConnection;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/ClientConnection$2;->val$message:Lcom/google/protobuf/nano/MessageNano;

    # invokes: Lcom/google/vr/inputcompanion/ClientConnection;->sendMessageOnWriteThread(Lcom/google/protobuf/nano/MessageNano;)Z
    invoke-static {v0, v1}, Lcom/google/vr/inputcompanion/ClientConnection;->access$000(Lcom/google/vr/inputcompanion/ClientConnection;Lcom/google/protobuf/nano/MessageNano;)Z

    .line 198
    return-void
.end method
