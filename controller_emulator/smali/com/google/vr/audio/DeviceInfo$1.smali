.class Lcom/google/vr/audio/DeviceInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/audio/DeviceInfo;-><init>(JLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/audio/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/google/vr/audio/DeviceInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/audio/DeviceInfo;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 51
    iget-object v1, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    iget-object v2, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    # getter for: Lcom/google/vr/audio/DeviceInfo;->nativeObject:J
    invoke-static {v2}, Lcom/google/vr/audio/DeviceInfo;->access$000(Lcom/google/vr/audio/DeviceInfo;)J

    move-result-wide v2

    const/4 v4, 0x0

    # invokes: Lcom/google/vr/audio/DeviceInfo;->nativeUpdateHeadphoneStateChange(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/vr/audio/DeviceInfo;->access$100(Lcom/google/vr/audio/DeviceInfo;JI)V

    .line 54
    .end local v0    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 45
    .restart local v0    # "state":I
    :pswitch_0
    iget-object v1, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    iget-object v2, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    # getter for: Lcom/google/vr/audio/DeviceInfo;->nativeObject:J
    invoke-static {v2}, Lcom/google/vr/audio/DeviceInfo;->access$000(Lcom/google/vr/audio/DeviceInfo;)J

    move-result-wide v2

    const/4 v4, 0x2

    # invokes: Lcom/google/vr/audio/DeviceInfo;->nativeUpdateHeadphoneStateChange(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/vr/audio/DeviceInfo;->access$100(Lcom/google/vr/audio/DeviceInfo;JI)V

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v1, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    iget-object v2, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    # getter for: Lcom/google/vr/audio/DeviceInfo;->nativeObject:J
    invoke-static {v2}, Lcom/google/vr/audio/DeviceInfo;->access$000(Lcom/google/vr/audio/DeviceInfo;)J

    move-result-wide v2

    const/4 v4, 0x1

    # invokes: Lcom/google/vr/audio/DeviceInfo;->nativeUpdateHeadphoneStateChange(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/vr/audio/DeviceInfo;->access$100(Lcom/google/vr/audio/DeviceInfo;JI)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
