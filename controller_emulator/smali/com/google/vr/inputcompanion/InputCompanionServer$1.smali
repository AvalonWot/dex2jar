.class Lcom/google/vr/inputcompanion/InputCompanionServer$1;
.super Ljava/lang/Object;
.source "InputCompanionServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/InputCompanionServer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/inputcompanion/InputCompanionServer;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/InputCompanionServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/InputCompanionServer;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/vr/inputcompanion/InputCompanionServer$1;->this$0:Lcom/google/vr/inputcompanion/InputCompanionServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/vr/inputcompanion/InputCompanionServer$1;->this$0:Lcom/google/vr/inputcompanion/InputCompanionServer;

    # getter for: Lcom/google/vr/inputcompanion/InputCompanionServer;->listener:Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;
    invoke-static {v0}, Lcom/google/vr/inputcompanion/InputCompanionServer;->access$000(Lcom/google/vr/inputcompanion/InputCompanionServer;)Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;->onInputCompanionServerFinished()V

    .line 84
    return-void
.end method
