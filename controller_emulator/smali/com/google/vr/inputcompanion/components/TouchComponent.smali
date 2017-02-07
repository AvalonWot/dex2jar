.class public Lcom/google/vr/inputcompanion/components/TouchComponent;
.super Ljava/lang/Object;
.source "TouchComponent.java"

# interfaces
.implements Lcom/google/vr/inputcompanion/components/InputComponent;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VIBRATE_DURATION_MS:I = 0x10


# instance fields
.field private clickButtonDown:Z

.field private final hoverListener:Landroid/view/View$OnHoverListener;

.field private lastTouchX:F

.field private lastTouchY:F

.field private final touchpadListener:Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;

.field private final view:Lcom/google/vr/inputcompanion/TouchpadView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/vr/inputcompanion/components/TouchComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/inputcompanion/components/TouchComponent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/content/Context;Lcom/google/vr/inputcompanion/TouchpadView;Landroid/os/Vibrator;)V
    .locals 3
    .param p1, "clientConnection"    # Lcom/google/vr/inputcompanion/ClientConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "view"    # Lcom/google/vr/inputcompanion/TouchpadView;
    .param p4, "vibrator"    # Landroid/os/Vibrator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p3, p0, Lcom/google/vr/inputcompanion/components/TouchComponent;->view:Lcom/google/vr/inputcompanion/TouchpadView;

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p3}, Lcom/google/vr/inputcompanion/TouchpadView;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Lcom/google/vr/inputcompanion/TouchpadView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 51
    .local v0, "screenSize":Landroid/graphics/Point;
    new-instance v1, Lcom/google/vr/inputcompanion/components/TouchComponent$1;

    invoke-direct {v1, p0, p4, v0, p1}, Lcom/google/vr/inputcompanion/components/TouchComponent$1;-><init>(Lcom/google/vr/inputcompanion/components/TouchComponent;Landroid/os/Vibrator;Landroid/graphics/Point;Lcom/google/vr/inputcompanion/ClientConnection;)V

    iput-object v1, p0, Lcom/google/vr/inputcompanion/components/TouchComponent;->touchpadListener:Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;

    .line 75
    new-instance v1, Lcom/google/vr/inputcompanion/components/TouchComponent$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/vr/inputcompanion/components/TouchComponent$2;-><init>(Lcom/google/vr/inputcompanion/components/TouchComponent;Landroid/graphics/Point;Lcom/google/vr/inputcompanion/ClientConnection;)V

    iput-object v1, p0, Lcom/google/vr/inputcompanion/components/TouchComponent;->hoverListener:Landroid/view/View$OnHoverListener;

    .line 83
    return-void
.end method

.method static synthetic access$002(Lcom/google/vr/inputcompanion/components/TouchComponent;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/components/TouchComponent;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lcom/google/vr/inputcompanion/components/TouchComponent;->lastTouchX:F

    return p1
.end method

.method static synthetic access$102(Lcom/google/vr/inputcompanion/components/TouchComponent;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/components/TouchComponent;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lcom/google/vr/inputcompanion/components/TouchComponent;->lastTouchY:F

    return p1
.end method

.method static synthetic access$202(Lcom/google/vr/inputcompanion/components/TouchComponent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/components/TouchComponent;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/google/vr/inputcompanion/components/TouchComponent;->clickButtonDown:Z

    return p1
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/TouchComponent;->view:Lcom/google/vr/inputcompanion/TouchpadView;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/TouchComponent;->touchpadListener:Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;

    invoke-virtual {v0, v1}, Lcom/google/vr/inputcompanion/TouchpadView;->setTouchpadListener(Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;)V

    .line 88
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/TouchComponent;->view:Lcom/google/vr/inputcompanion/TouchpadView;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/TouchComponent;->hoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Lcom/google/vr/inputcompanion/TouchpadView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 89
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/TouchComponent;->view:Lcom/google/vr/inputcompanion/TouchpadView;

    invoke-virtual {v0, v1}, Lcom/google/vr/inputcompanion/TouchpadView;->setTouchpadListener(Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;)V

    .line 94
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/TouchComponent;->view:Lcom/google/vr/inputcompanion/TouchpadView;

    invoke-virtual {v0, v1}, Lcom/google/vr/inputcompanion/TouchpadView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 95
    return-void
.end method
