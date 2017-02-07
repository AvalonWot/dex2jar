.class Lcom/google/vr/inputcompanion/components/ButtonsComponent$3;
.super Ljava/lang/Object;
.source "ButtonsComponent.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 51
    iput-object p1, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent$3;->this$0:Lcom/google/vr/inputcompanion/components/ButtonsComponent;

    iput-object p2, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent$3;->val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 55
    .local v0, "action":I
    if-nez v0, :cond_0

    move v1, v2

    .line 57
    .local v1, "down":Z
    :goto_0
    packed-switch p2, :pswitch_data_0

    move v2, v3

    .line 63
    :goto_1
    return v2

    .end local v1    # "down":Z
    :cond_0
    move v1, v3

    .line 55
    goto :goto_0

    .line 60
    .restart local v1    # "down":Z
    :pswitch_0
    iget-object v3, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent$3;->this$0:Lcom/google/vr/inputcompanion/components/ButtonsComponent;

    iget-object v4, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent$3;->val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    # invokes: Lcom/google/vr/inputcompanion/components/ButtonsComponent;->sendKeyEvent(Lcom/google/vr/inputcompanion/ClientConnection;IZ)V
    invoke-static {v3, v4, p2, v1}, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->access$100(Lcom/google/vr/inputcompanion/components/ButtonsComponent;Lcom/google/vr/inputcompanion/ClientConnection;IZ)V

    goto :goto_1

    .line 57
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
