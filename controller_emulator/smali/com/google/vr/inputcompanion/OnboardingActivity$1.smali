.class Lcom/google/vr/inputcompanion/OnboardingActivity$1;
.super Ljava/lang/Object;
.source "OnboardingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/OnboardingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/inputcompanion/OnboardingActivity;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/OnboardingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/OnboardingActivity;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/vr/inputcompanion/OnboardingActivity$1;->this$0:Lcom/google/vr/inputcompanion/OnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/vr/inputcompanion/OnboardingActivity$1;->this$0:Lcom/google/vr/inputcompanion/OnboardingActivity;

    # ++operator for: Lcom/google/vr/inputcompanion/OnboardingActivity;->currentOnboardingPage:I
    invoke-static {v0}, Lcom/google/vr/inputcompanion/OnboardingActivity;->access$004(Lcom/google/vr/inputcompanion/OnboardingActivity;)I

    .line 29
    iget-object v0, p0, Lcom/google/vr/inputcompanion/OnboardingActivity$1;->this$0:Lcom/google/vr/inputcompanion/OnboardingActivity;

    # getter for: Lcom/google/vr/inputcompanion/OnboardingActivity;->currentOnboardingPage:I
    invoke-static {v0}, Lcom/google/vr/inputcompanion/OnboardingActivity;->access$000(Lcom/google/vr/inputcompanion/OnboardingActivity;)I

    move-result v0

    # getter for: Lcom/google/vr/inputcompanion/OnboardingActivity;->ONBOARDING_PAGES:[I
    invoke-static {}, Lcom/google/vr/inputcompanion/OnboardingActivity;->access$100()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/google/vr/inputcompanion/OnboardingActivity$1;->this$0:Lcom/google/vr/inputcompanion/OnboardingActivity;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/OnboardingActivity$1;->this$0:Lcom/google/vr/inputcompanion/OnboardingActivity;

    # getter for: Lcom/google/vr/inputcompanion/OnboardingActivity;->currentOnboardingPage:I
    invoke-static {v1}, Lcom/google/vr/inputcompanion/OnboardingActivity;->access$000(Lcom/google/vr/inputcompanion/OnboardingActivity;)I

    move-result v1

    # invokes: Lcom/google/vr/inputcompanion/OnboardingActivity;->showOnboardingPage(I)V
    invoke-static {v0, v1}, Lcom/google/vr/inputcompanion/OnboardingActivity;->access$200(Lcom/google/vr/inputcompanion/OnboardingActivity;I)V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/vr/inputcompanion/OnboardingActivity$1;->this$0:Lcom/google/vr/inputcompanion/OnboardingActivity;

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/OnboardingActivity;->finish()V

    goto :goto_0
.end method
