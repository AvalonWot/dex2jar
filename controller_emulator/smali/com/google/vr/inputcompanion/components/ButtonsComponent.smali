.class public Lcom/google/vr/inputcompanion/components/ButtonsComponent;
.super Ljava/lang/Object;
.source "ButtonsComponent.java"

# interfaces
.implements Lcom/google/vr/inputcompanion/components/InputComponent;


# instance fields
.field private final appButton:Landroid/view/View;

.field private final appButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private final homeButton:Landroid/view/View;

.field private final homeButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private final keyEventSource:Lcom/google/vr/inputcompanion/KeyEventSource;

.field private final keyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Lcom/google/vr/inputcompanion/ClientConnection;Lcom/google/vr/inputcompanion/KeyEventSource;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "clientConnection"    # Lcom/google/vr/inputcompanion/ClientConnection;
    .param p2, "keyEventSource"    # Lcom/google/vr/inputcompanion/KeyEventSource;
    .param p3, "appButton"    # Landroid/view/View;
    .param p4, "homeButton"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->keyEventSource:Lcom/google/vr/inputcompanion/KeyEventSource;

    .line 34
    iput-object p3, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->appButton:Landroid/view/View;

    .line 35
    iput-object p4, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->homeButton:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/google/vr/inputcompanion/components/ButtonsComponent$1;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/inputcompanion/components/ButtonsComponent$1;-><init>(Lcom/google/vr/inputcompanion/components/ButtonsComponent;Lcom/google/vr/inputcompanion/ClientConnection;)V

    iput-object v0, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->appButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 44
    new-instance v0, Lcom/google/vr/inputcompanion/components/ButtonsComponent$2;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/inputcompanion/components/ButtonsComponent$2;-><init>(Lcom/google/vr/inputcompanion/components/ButtonsComponent;Lcom/google/vr/inputcompanion/ClientConnection;)V

    iput-object v0, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->homeButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 51
    new-instance v0, Lcom/google/vr/inputcompanion/components/ButtonsComponent$3;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/inputcompanion/components/ButtonsComponent$3;-><init>(Lcom/google/vr/inputcompanion/components/ButtonsComponent;Lcom/google/vr/inputcompanion/ClientConnection;)V

    iput-object v0, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->keyListener:Landroid/view/View$OnKeyListener;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/inputcompanion/components/ButtonsComponent;Lcom/google/vr/inputcompanion/ClientConnection;Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/components/ButtonsComponent;
    .param p1, "x1"    # Lcom/google/vr/inputcompanion/ClientConnection;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->handleTouch(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/vr/inputcompanion/components/ButtonsComponent;Lcom/google/vr/inputcompanion/ClientConnection;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/components/ButtonsComponent;
    .param p1, "x1"    # Lcom/google/vr/inputcompanion/ClientConnection;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->sendKeyEvent(Lcom/google/vr/inputcompanion/ClientConnection;IZ)V

    return-void
.end method

.method private handleTouch(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/view/MotionEvent;I)Z
    .locals 3
    .param p1, "clientConnection"    # Lcom/google/vr/inputcompanion/ClientConnection;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "keyCodeToSend"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 72
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 73
    invoke-direct {p0, p1, p3, v1}, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->sendKeyEvent(Lcom/google/vr/inputcompanion/ClientConnection;IZ)V

    .line 78
    :cond_0
    :goto_0
    return v2

    .line 74
    :cond_1
    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 75
    :cond_2
    invoke-direct {p0, p1, p3, v2}, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->sendKeyEvent(Lcom/google/vr/inputcompanion/ClientConnection;IZ)V

    goto :goto_0
.end method

.method private sendKeyEvent(Lcom/google/vr/inputcompanion/ClientConnection;IZ)V
    .locals 1
    .param p1, "connection"    # Lcom/google/vr/inputcompanion/ClientConnection;
    .param p2, "keyCode"    # I
    .param p3, "down"    # Z

    .prologue
    .line 82
    invoke-static {p2, p3}, Lcom/google/vr/inputcompanion/ProtoUtils;->keyToProto(IZ)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/vr/inputcompanion/ClientConnection;->sendMessage(Lcom/google/protobuf/nano/MessageNano;)Z

    .line 83
    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->appButton:Landroid/view/View;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->appButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->homeButton:Landroid/view/View;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->homeButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->keyEventSource:Lcom/google/vr/inputcompanion/KeyEventSource;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->keyListener:Landroid/view/View$OnKeyListener;

    invoke-interface {v0, v1}, Lcom/google/vr/inputcompanion/KeyEventSource;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 90
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->appButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->homeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/ButtonsComponent;->keyEventSource:Lcom/google/vr/inputcompanion/KeyEventSource;

    invoke-interface {v0, v1}, Lcom/google/vr/inputcompanion/KeyEventSource;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 97
    return-void
.end method
