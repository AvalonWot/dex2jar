.class Lcom/google/vr/inputcompanion/components/ButtonsComponent$1;
.super Ljava/lang/Object;
.source "ButtonsComponent.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/components/ButtonsComponent;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;Lcom/google/vr/inputcompanion/KeyEventSource;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/inputcompanion/components/ButtonsComponent;

.field final synthetic val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/components/ButtonsComponent;Lcom/google/vr/inputcompanion/ClientConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/components/ButtonsComponent;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent$1;->this$0:Lcom/google/vr/inputcompanion/components/ButtonsComponent;

    iput-object p2, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent$1;->val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent$1;->this$0:Lcom/google/vr/inputcompanion/components/ButtonsComponent;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent$1;->val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    const/16 v2, 0x52

    # invokes: Lcom/google/vr/inputcompanion/components/ButtonsComponent;->handleTouch(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/view/MotionEvent;I)Z
    invoke-static {v0, v1, p2, v2}, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->access$000(Lcom/google/vr/inputcompanion/components/ButtonsComponent;Lcom/google/vr/inputcompanion/ClientConnection;Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method
