.class Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;
.super Ljava/lang/Object;
.source "CardboardEmulator.java"

# interfaces
.implements Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/CardboardEmulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControllerCallbacks"
.end annotation


# instance fields
.field private final cardboardTriggerCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "cardboardTriggerCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;->cardboardTriggerCallback:Ljava/lang/Runnable;

    .line 90
    return-void
.end method


# virtual methods
.method public onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 3
    .param p1, "eventPacket"    # Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    .prologue
    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getButtonEventCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 113
    invoke-virtual {p1, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getButtonEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    move-result-object v0

    .line 114
    .local v0, "event":Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    iget-boolean v2, v0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    if-nez v2, :cond_0

    .line 112
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_0
    iget v2, v0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 123
    :pswitch_1
    iget-object v2, p0, Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;->cardboardTriggerCallback:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 131
    .end local v0    # "event":Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    :cond_1
    return-void

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
    .locals 0
    .param p1, "eventPacket"    # Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;->onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    .line 140
    return-void
.end method

.method public onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    .prologue
    .line 134
    return-void
.end method

.method public onControllerStateChanged(II)V
    .locals 0
    .param p1, "controllerId"    # I
    .param p2, "newState"    # I

    .prologue
    .line 108
    return-void
.end method

.method public onServiceConnected(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 93
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onServiceFailed()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onServiceInitFailed(I)V
    .locals 0
    .param p1, "initResult"    # I

    .prologue
    .line 105
    return-void
.end method

.method public onServiceUnavailable()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method
