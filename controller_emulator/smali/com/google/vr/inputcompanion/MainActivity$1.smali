.class Lcom/google/vr/inputcompanion/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private overflowMenu:Landroid/widget/PopupMenu;

.field final synthetic this$0:Lcom/google/vr/inputcompanion/MainActivity;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/MainActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/vr/inputcompanion/MainActivity$1;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$1;->overflowMenu:Landroid/widget/PopupMenu;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity$1;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$1;->overflowMenu:Landroid/widget/PopupMenu;

    .line 101
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$1;->overflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/google/vr/inputcompanion/R$menu;->menu_main:I

    iget-object v2, p0, Lcom/google/vr/inputcompanion/MainActivity$1;->overflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$1;->overflowMenu:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity$1;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$1;->overflowMenu:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity$1;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$1;->overflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 106
    return-void
.end method
