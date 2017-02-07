.class Lcom/google/vr/inputcompanion/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/MainActivity;->showRealControllerConfirmationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/inputcompanion/MainActivity;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/MainActivity;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/google/vr/inputcompanion/MainActivity$10;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 463
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 464
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$10;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    sget-object v1, Lcom/google/vr/inputcompanion/MainActivity$Mode;->REAL_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    # invokes: Lcom/google/vr/inputcompanion/MainActivity;->setMode(Lcom/google/vr/inputcompanion/MainActivity$Mode;)V
    invoke-static {v0, v1}, Lcom/google/vr/inputcompanion/MainActivity;->access$300(Lcom/google/vr/inputcompanion/MainActivity;Lcom/google/vr/inputcompanion/MainActivity$Mode;)V

    .line 465
    return-void
.end method
