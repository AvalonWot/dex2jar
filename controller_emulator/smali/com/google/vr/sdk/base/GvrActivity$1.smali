.class Lcom/google/vr/sdk/base/GvrActivity$1;
.super Ljava/lang/Object;
.source "GvrActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/base/GvrActivity;->setGvrView(Lcom/google/vr/sdk/base/GvrView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/base/GvrActivity;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/base/GvrActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/sdk/base/GvrActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/vr/sdk/base/GvrActivity$1;->this$0:Lcom/google/vr/sdk/base/GvrActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity$1;->this$0:Lcom/google/vr/sdk/base/GvrActivity;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/GvrActivity;->onCardboardTrigger()V

    .line 110
    return-void
.end method
