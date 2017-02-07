.class public Lcom/google/vr/cardboard/FullscreenMode;
.super Ljava/lang/Object;
.source "FullscreenMode.java"


# static fields
.field private static final NAVIGATION_BAR_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private final window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 0
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/vr/cardboard/FullscreenMode;->window:Landroid/view/Window;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/cardboard/FullscreenMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/cardboard/FullscreenMode;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/vr/cardboard/FullscreenMode;->setFullscreenModeFlags()V

    return-void
.end method

.method private setFullscreenModeFlags()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/vr/cardboard/FullscreenMode;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 72
    return-void
.end method

.method private setImmersiveStickyModeCompat()V
    .locals 3

    .prologue
    .line 35
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 37
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/google/vr/cardboard/FullscreenMode;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/vr/cardboard/FullscreenMode$1;

    invoke-direct {v2, p0, v0}, Lcom/google/vr/cardboard/FullscreenMode$1;-><init>(Lcom/google/vr/cardboard/FullscreenMode;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 52
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method


# virtual methods
.method public goFullscreen()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/vr/cardboard/FullscreenMode;->setFullscreenModeFlags()V

    .line 27
    invoke-direct {p0}, Lcom/google/vr/cardboard/FullscreenMode;->setImmersiveStickyModeCompat()V

    .line 28
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/google/vr/cardboard/FullscreenMode;->setFullscreenModeFlags()V

    .line 62
    :cond_0
    return-void
.end method
