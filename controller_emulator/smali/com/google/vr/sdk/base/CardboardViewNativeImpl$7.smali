.class Lcom/google/vr/sdk/base/CardboardViewNativeImpl$7;
.super Ljava/lang/Object;
.source "CardboardViewNativeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->enableCardboardTriggerEmulation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$7;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$7;->this$0:Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    # invokes: Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->onCardboardTrigger()V
    invoke-static {v0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->access$900(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)V

    .line 421
    return-void
.end method
