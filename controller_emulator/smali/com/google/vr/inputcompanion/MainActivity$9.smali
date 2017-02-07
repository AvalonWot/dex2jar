.class Lcom/google/vr/inputcompanion/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/MainActivity;->startCapturingTouchAndSensors(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private existingConnection:Lcom/google/vr/inputcompanion/ClientConnection;

.field final synthetic this$0:Lcom/google/vr/inputcompanion/MainActivity;

.field final synthetic val$appButton:Landroid/view/View;

.field final synthetic val$homeButton:Landroid/view/View;

.field final synthetic val$inputCompanionListener:Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;

.field final synthetic val$statusView:Landroid/widget/TextView;

.field final synthetic val$vibrateOnTouch:Z


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/MainActivity;Landroid/widget/TextView;ZLandroid/view/View;Landroid/view/View;Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/MainActivity;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    iput-object p2, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->val$statusView:Landroid/widget/TextView;

    iput-boolean p3, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->val$vibrateOnTouch:Z

    iput-object p4, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->val$appButton:Landroid/view/View;

    iput-object p5, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->val$homeButton:Landroid/view/View;

    iput-object p6, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->val$inputCompanionListener:Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/vr/inputcompanion/MainActivity$9;)Lcom/google/vr/inputcompanion/ClientConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/MainActivity$9;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->existingConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    return-object v0
.end method


# virtual methods
.method public onConnect(Lcom/google/vr/inputcompanion/ClientConnection;)V
    .locals 9
    .param p1, "clientConnection"    # Lcom/google/vr/inputcompanion/ClientConnection;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 290
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->existingConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->existingConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/ClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    # getter for: Lcom/google/vr/inputcompanion/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/vr/inputcompanion/MainActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot process 2nd client while 1st is still connected. Closing 2nd client."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p1}, Lcom/google/vr/inputcompanion/ClientConnection;->close()V

    .line 333
    :goto_0
    return-void

    .line 296
    :cond_0
    iput-object p1, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->existingConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    .line 297
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    # getter for: Lcom/google/vr/inputcompanion/MainActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/vr/inputcompanion/MainActivity;->access$600(Lcom/google/vr/inputcompanion/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/vr/inputcompanion/MainActivity$9$1;

    invoke-direct {v1, p0}, Lcom/google/vr/inputcompanion/MainActivity$9$1;-><init>(Lcom/google/vr/inputcompanion/MainActivity$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    # getter for: Lcom/google/vr/inputcompanion/MainActivity;->mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;
    invoke-static {v0}, Lcom/google/vr/inputcompanion/MainActivity;->access$700(Lcom/google/vr/inputcompanion/MainActivity;)Lcom/google/vr/inputcompanion/MainActivity$Mode;

    move-result-object v0

    sget-object v1, Lcom/google/vr/inputcompanion/MainActivity$Mode;->EMULATED_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    if-ne v0, v1, :cond_2

    .line 308
    const/4 v0, 0x5

    new-array v2, v0, [Lcom/google/vr/inputcompanion/components/InputComponent;

    new-instance v1, Lcom/google/vr/inputcompanion/components/SensorsComponent;

    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    const-string v3, "sensor"

    .line 310
    invoke-virtual {v0, v3}, Lcom/google/vr/inputcompanion/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-direct {v1, p1, v0}, Lcom/google/vr/inputcompanion/components/SensorsComponent;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/hardware/SensorManager;)V

    aput-object v1, v2, v8

    new-instance v0, Lcom/google/vr/inputcompanion/components/OrientationComponent;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    new-instance v3, Lcom/google/vr/inputcompanion/SensorFusionJni;

    sget-object v4, Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;->EKF_WITH_BIAS_ESTIMATOR:Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

    invoke-direct {v3, v4}, Lcom/google/vr/inputcompanion/SensorFusionJni;-><init>(Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/google/vr/inputcompanion/components/OrientationComponent;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/content/Context;Lcom/google/vr/inputcompanion/SensorFusionJni;)V

    aput-object v0, v2, v5

    const/4 v3, 0x2

    new-instance v4, Lcom/google/vr/inputcompanion/components/TouchComponent;

    iget-object v5, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    sget v1, Lcom/google/vr/inputcompanion/R$id;->touchpad_view:I

    .line 315
    invoke-virtual {v0, v1}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/vr/inputcompanion/TouchpadView;

    iget-boolean v1, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->val$vibrateOnTouch:Z

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    const-string v7, "vibrator"

    invoke-virtual {v1, v7}, Lcom/google/vr/inputcompanion/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 317
    :goto_1
    invoke-direct {v4, p1, v5, v0, v1}, Lcom/google/vr/inputcompanion/components/TouchComponent;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/content/Context;Lcom/google/vr/inputcompanion/TouchpadView;Landroid/os/Vibrator;)V

    aput-object v4, v2, v3

    const/4 v0, 0x3

    new-instance v1, Lcom/google/vr/inputcompanion/components/HoverComponent;

    invoke-direct {v1, p1}, Lcom/google/vr/inputcompanion/components/HoverComponent;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;)V

    aput-object v1, v2, v0

    const/4 v0, 0x4

    new-instance v1, Lcom/google/vr/inputcompanion/components/ButtonsComponent;

    iget-object v3, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    iget-object v4, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->val$appButton:Landroid/view/View;

    iget-object v5, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->val$homeButton:Landroid/view/View;

    invoke-direct {v1, p1, v3, v4, v5}, Lcom/google/vr/inputcompanion/components/ButtonsComponent;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;Lcom/google/vr/inputcompanion/KeyEventSource;Landroid/view/View;Landroid/view/View;)V

    aput-object v1, v2, v0

    .line 308
    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 332
    .local v6, "components":Ljava/util/List;, "Ljava/util/List<Lcom/google/vr/inputcompanion/components/InputComponent;>;"
    :goto_2
    new-instance v0, Lcom/google/vr/inputcompanion/InputCompanionServer;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->val$inputCompanionListener:Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;

    invoke-direct {v0, p1, v6, v1}, Lcom/google/vr/inputcompanion/InputCompanionServer;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;Ljava/util/List;Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;)V

    goto/16 :goto_0

    .line 317
    .end local v6    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/google/vr/inputcompanion/components/InputComponent;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    # getter for: Lcom/google/vr/inputcompanion/MainActivity;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;
    invoke-static {v0}, Lcom/google/vr/inputcompanion/MainActivity;->access$800(Lcom/google/vr/inputcompanion/MainActivity;)Lcom/google/vr/ndk/base/GvrLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->getGvrApi()Lcom/google/vr/ndk/base/GvrApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->initializeGl()V

    .line 326
    new-array v7, v5, [Lcom/google/vr/inputcompanion/components/InputComponent;

    new-instance v0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    .line 327
    invoke-virtual {v1}, Lcom/google/vr/inputcompanion/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    .line 328
    invoke-virtual {v1}, Lcom/google/vr/inputcompanion/MainActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    sget v4, Lcom/google/vr/inputcompanion/R$id;->gvr_controller_status:I

    .line 329
    invoke-virtual {v1, v4}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    sget v5, Lcom/google/vr/inputcompanion/R$id;->gvr_controller_state_graphic:I

    .line 330
    invoke-virtual {v1, v5}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    aput-object v0, v7, v8

    .line 326
    invoke-static {v7}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .restart local v6    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/google/vr/inputcompanion/components/InputComponent;>;"
    goto :goto_2
.end method

.method public onServerStopped()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->existingConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->existingConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/ClientConnection;->close()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$9;->existingConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    .line 341
    :cond_0
    return-void
.end method
