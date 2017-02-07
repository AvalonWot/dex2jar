.class public final Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarthVr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;


# instance fields
.field public actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

.field public appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

.field public controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

.field public environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

.field public menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

.field public preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

.field public splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

.field public startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

.field public startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

.field public tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

.field public tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

.field public view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8326
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8327
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clear()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 8328
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    .locals 2

    .prologue
    .line 8277
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-nez v0, :cond_1

    .line 8278
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8280
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-nez v0, :cond_0

    .line 8281
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 8283
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8285
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    return-object v0

    .line 8283
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8658
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8652
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8331
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 8332
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 8333
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    .line 8334
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    .line 8335
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 8336
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 8337
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 8338
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    .line 8339
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    .line 8340
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    .line 8341
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    .line 8342
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    .line 8343
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8344
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->cachedSize:I

    .line 8345
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    .locals 5

    .prologue
    .line 8351
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8355
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-eqz v3, :cond_0

    .line 8356
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 8358
    :cond_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v3, :cond_1

    .line 8359
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 8361
    :cond_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 8362
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    .line 8363
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 8364
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    .line 8365
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    move-result-object v4

    aput-object v4, v3, v2

    .line 8363
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8352
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 8353
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 8369
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    :cond_3
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-eqz v3, :cond_4

    .line 8370
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    .line 8372
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-eqz v3, :cond_5

    .line 8373
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 8375
    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-eqz v3, :cond_6

    .line 8376
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 8378
    :cond_6
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v3, :cond_7

    .line 8379
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 8381
    :cond_7
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-eqz v3, :cond_8

    .line 8382
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    .line 8384
    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-eqz v3, :cond_9

    .line 8385
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    .line 8387
    :cond_9
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v3, v3

    if-lez v3, :cond_b

    .line 8388
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    .line 8389
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v3, v3

    if-ge v2, v3, :cond_b

    .line 8390
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    aget-object v3, v3, v2

    if-eqz v3, :cond_a

    .line 8391
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    move-result-object v4

    aput-object v4, v3, v2

    .line 8389
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8395
    .end local v2    # "i":I
    :cond_b
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-eqz v3, :cond_c

    .line 8396
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    .line 8398
    :cond_c
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-eqz v3, :cond_d

    .line 8399
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    .line 8401
    :cond_d
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 6765
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 6765
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 6765
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 8459
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 8460
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-eqz v3, :cond_0

    .line 8461
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 8462
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8464
    :cond_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v3, :cond_1

    .line 8465
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 8466
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8468
    :cond_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 8469
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 8470
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    aget-object v0, v3, v1

    .line 8471
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;
    if-eqz v0, :cond_2

    .line 8472
    const/4 v3, 0x3

    .line 8473
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8469
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8477
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-eqz v3, :cond_4

    .line 8478
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    .line 8479
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8481
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-eqz v3, :cond_5

    .line 8482
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 8483
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8485
    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-eqz v3, :cond_6

    .line 8486
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 8487
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8489
    :cond_6
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v3, :cond_7

    .line 8490
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 8491
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8493
    :cond_7
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-eqz v3, :cond_8

    .line 8494
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    .line 8495
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8497
    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-eqz v3, :cond_9

    .line 8498
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    .line 8499
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8501
    :cond_9
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v3, v3

    if-lez v3, :cond_b

    .line 8502
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v3, v3

    if-ge v1, v3, :cond_b

    .line 8503
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    aget-object v0, v3, v1

    .line 8504
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    if-eqz v0, :cond_a

    .line 8505
    const/16 v3, 0xa

    .line 8506
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8502
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8510
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    .end local v1    # "i":I
    :cond_b
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-eqz v3, :cond_c

    .line 8511
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    .line 8512
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8514
    :cond_c
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-eqz v3, :cond_d

    .line 8515
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    .line 8516
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8518
    :cond_d
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 8526
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 8527
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 8531
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8532
    :sswitch_0
    return-object p0

    .line 8537
    :sswitch_1
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-nez v5, :cond_1

    .line 8538
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;-><init>()V

    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 8540
    :cond_1
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8544
    :sswitch_2
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-nez v5, :cond_2

    .line 8545
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;-><init>()V

    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 8547
    :cond_2
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8551
    :sswitch_3
    const/16 v5, 0x1a

    .line 8552
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8553
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    if-nez v5, :cond_4

    move v1, v4

    .line 8554
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    .line 8556
    .local v2, "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;
    if-eqz v1, :cond_3

    .line 8557
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8559
    :cond_3
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 8560
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;-><init>()V

    aput-object v5, v2, v1

    .line 8561
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 8562
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 8559
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8553
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;
    :cond_4
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v1, v5

    goto :goto_1

    .line 8565
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;
    :cond_5
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;-><init>()V

    aput-object v5, v2, v1

    .line 8566
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 8567
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    goto :goto_0

    .line 8571
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;
    :sswitch_4
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-nez v5, :cond_6

    .line 8572
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;-><init>()V

    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    .line 8574
    :cond_6
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8578
    :sswitch_5
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-nez v5, :cond_7

    .line 8579
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;-><init>()V

    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 8581
    :cond_7
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 8585
    :sswitch_6
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-nez v5, :cond_8

    .line 8586
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;-><init>()V

    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 8588
    :cond_8
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 8592
    :sswitch_7
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-nez v5, :cond_9

    .line 8593
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;-><init>()V

    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 8595
    :cond_9
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 8599
    :sswitch_8
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-nez v5, :cond_a

    .line 8600
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;-><init>()V

    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    .line 8602
    :cond_a
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 8606
    :sswitch_9
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-nez v5, :cond_b

    .line 8607
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;-><init>()V

    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    .line 8609
    :cond_b
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 8613
    :sswitch_a
    const/16 v5, 0x52

    .line 8614
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8615
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-nez v5, :cond_d

    move v1, v4

    .line 8616
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    .line 8618
    .local v2, "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    if-eqz v1, :cond_c

    .line 8619
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8621
    :cond_c
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_e

    .line 8622
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;-><init>()V

    aput-object v5, v2, v1

    .line 8623
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 8624
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 8621
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 8615
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    :cond_d
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v1, v5

    goto :goto_3

    .line 8627
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    :cond_e
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;-><init>()V

    aput-object v5, v2, v1

    .line 8628
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 8629
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    goto/16 :goto_0

    .line 8633
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    :sswitch_b
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-nez v5, :cond_f

    .line 8634
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;-><init>()V

    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    .line 8636
    :cond_f
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 8640
    :sswitch_c
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-nez v5, :cond_10

    .line 8641
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;-><init>()V

    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    .line 8643
    :cond_10
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 8527
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6765
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8408
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-eqz v2, :cond_0

    .line 8409
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8411
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v2, :cond_1

    .line 8412
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8414
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 8415
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 8416
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    aget-object v0, v2, v1

    .line 8417
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;
    if-eqz v0, :cond_2

    .line 8418
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8415
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8422
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-eqz v2, :cond_4

    .line 8423
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8425
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-eqz v2, :cond_5

    .line 8426
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8428
    :cond_5
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-eqz v2, :cond_6

    .line 8429
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8431
    :cond_6
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v2, :cond_7

    .line 8432
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8434
    :cond_7
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-eqz v2, :cond_8

    .line 8435
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8437
    :cond_8
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-eqz v2, :cond_9

    .line 8438
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8440
    :cond_9
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v2, v2

    if-lez v2, :cond_b

    .line 8441
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 8442
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    aget-object v0, v2, v1

    .line 8443
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    if-eqz v0, :cond_a

    .line 8444
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8441
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8448
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    .end local v1    # "i":I
    :cond_b
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-eqz v2, :cond_c

    .line 8449
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8451
    :cond_c
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-eqz v2, :cond_d

    .line 8452
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8454
    :cond_d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8455
    return-void
.end method
