.class Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent$1;
.super Ljava/lang/Object;
.source "NativeGvrControllerComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent$1;->this$0:Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent$1;->this$0:Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;

    # invokes: Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->updateState()V
    invoke-static {v0}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->access$000(Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;)V

    .line 65
    return-void
.end method
