.class public Lcom/google/vr/inputcompanion/OnboardingActivity;
.super Lcom/google/vr/inputcompanion/BaseActivity;
.source "OnboardingActivity.java"


# static fields
.field private static final ONBOARDING_PAGES:[I


# instance fields
.field private currentOnboardingPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/vr/inputcompanion/R$id;->onboarding_page_1:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/google/vr/inputcompanion/R$id;->onboarding_page_2:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/vr/inputcompanion/OnboardingActivity;->ONBOARDING_PAGES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/inputcompanion/OnboardingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/OnboardingActivity;

    .prologue
    .line 10
    iget v0, p0, Lcom/google/vr/inputcompanion/OnboardingActivity;->currentOnboardingPage:I

    return v0
.end method

.method static synthetic access$004(Lcom/google/vr/inputcompanion/OnboardingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/OnboardingActivity;

    .prologue
    .line 10
    iget v0, p0, Lcom/google/vr/inputcompanion/OnboardingActivity;->currentOnboardingPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/inputcompanion/OnboardingActivity;->currentOnboardingPage:I

    return v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/google/vr/inputcompanion/OnboardingActivity;->ONBOARDING_PAGES:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/vr/inputcompanion/OnboardingActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/OnboardingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/google/vr/inputcompanion/OnboardingActivity;->showOnboardingPage(I)V

    return-void
.end method

.method private showOnboardingPage(I)V
    .locals 4
    .param p1, "pageNumber"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/google/vr/inputcompanion/OnboardingActivity;->currentOnboardingPage:I

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/google/vr/inputcompanion/OnboardingActivity;->ONBOARDING_PAGES:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 47
    sget-object v2, Lcom/google/vr/inputcompanion/OnboardingActivity;->ONBOARDING_PAGES:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/google/vr/inputcompanion/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne v0, p1, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    .line 49
    :cond_1
    sget-object v2, Lcom/google/vr/inputcompanion/OnboardingActivity;->ONBOARDING_PAGES:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_2

    sget v1, Lcom/google/vr/inputcompanion/R$string;->onboarding_next:I

    .line 51
    .local v1, "labelResId":I
    :goto_2
    sget v2, Lcom/google/vr/inputcompanion/R$id;->onboarding_advance_button:I

    invoke-virtual {p0, v2}, Lcom/google/vr/inputcompanion/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/google/vr/inputcompanion/OnboardingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void

    .line 50
    .end local v1    # "labelResId":I
    :cond_2
    sget v1, Lcom/google/vr/inputcompanion/R$string;->onboarding_finish:I

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/google/vr/inputcompanion/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v0, Lcom/google/vr/inputcompanion/R$layout;->activity_onboarding:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/OnboardingActivity;->setContentView(I)V

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/vr/inputcompanion/OnboardingActivity;->showOnboardingPage(I)V

    .line 25
    sget v0, Lcom/google/vr/inputcompanion/R$id;->onboarding_advance_button:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/vr/inputcompanion/OnboardingActivity$1;

    invoke-direct {v1, p0}, Lcom/google/vr/inputcompanion/OnboardingActivity$1;-><init>(Lcom/google/vr/inputcompanion/OnboardingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/vr/inputcompanion/BaseActivity;->onResume()V

    .line 41
    invoke-virtual {p0}, Lcom/google/vr/inputcompanion/OnboardingActivity;->setFullscreenMode()V

    .line 42
    return-void
.end method
