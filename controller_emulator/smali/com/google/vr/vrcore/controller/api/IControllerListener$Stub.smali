.class public abstract Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;
.super Landroid/os/Binder;
.source "IControllerListener.java"

# interfaces
.implements Lcom/google/vr/vrcore/controller/api/IControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/IControllerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.controller.api.IControllerListener"

.field static final TRANSACTION_deprecatedOnControllerAccelEvent:I = 0x7

.field static final TRANSACTION_deprecatedOnControllerButtonEvent:I = 0x6

.field static final TRANSACTION_deprecatedOnControllerButtonEventV1:I = 0x5

.field static final TRANSACTION_deprecatedOnControllerGyroEvent:I = 0x8

.field static final TRANSACTION_deprecatedOnControllerOrientationEvent:I = 0x4

.field static final TRANSACTION_deprecatedOnControllerTouchEvent:I = 0x3

.field static final TRANSACTION_getApiVersion:I = 0x1

.field static final TRANSACTION_getOptions:I = 0x9

.field static final TRANSACTION_onControllerEventPacket:I = 0xa

.field static final TRANSACTION_onControllerEventPacket2:I = 0xc

.field static final TRANSACTION_onControllerRecentered:I = 0xb

.field static final TRANSACTION_onControllerStateChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/controller/api/IControllerListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const-string v1, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/vr/vrcore/controller/api/IControllerListener;

    if-eqz v1, :cond_1

    .line 54
    check-cast v0, Lcom/google/vr/vrcore/controller/api/IControllerListener;

    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 60
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 64
    sparse-switch p1, :sswitch_data_0

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 68
    :sswitch_0
    const-string v3, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :sswitch_1
    const-string v3, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;->getApiVersion()I

    move-result v2

    .line 75
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v2    # "_result":I
    :sswitch_2
    const-string v3, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;->onControllerStateChanged(II)V

    goto :goto_0

    .line 91
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_3
    const-string v3, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    sget-object v3, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    .line 99
    .local v0, "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;->deprecatedOnControllerTouchEvent(Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;)V

    goto :goto_0

    .line 97
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;
    goto :goto_1

    .line 104
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;
    :sswitch_4
    const-string v3, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    sget-object v3, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    .line 112
    .local v0, "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;->deprecatedOnControllerOrientationEvent(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V

    goto :goto_0

    .line 110
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
    goto :goto_2

    .line 117
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
    :sswitch_5
    const-string v5, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 120
    sget-object v5, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    .line 125
    .local v0, "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;->deprecatedOnControllerButtonEventV1(Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;)Z

    move-result v2

    .line 126
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 123
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    .end local v2    # "_result":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    goto :goto_3

    .line 132
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    :sswitch_6
    const-string v3, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    sget-object v3, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    .line 140
    .restart local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;->deprecatedOnControllerButtonEvent(Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;)V

    goto/16 :goto_0

    .line 138
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    goto :goto_4

    .line 145
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    :sswitch_7
    const-string v3, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 148
    sget-object v3, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    .line 153
    .local v0, "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;->deprecatedOnControllerAccelEvent(Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;)V

    goto/16 :goto_0

    .line 151
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;
    goto :goto_5

    .line 158
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;
    :sswitch_8
    const-string v3, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 161
    sget-object v3, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    .line 166
    .local v0, "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;->deprecatedOnControllerGyroEvent(Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;)V

    goto/16 :goto_0

    .line 164
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;
    goto :goto_6

    .line 171
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;
    :sswitch_9
    const-string v5, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;->getOptions()Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    move-result-object v2

    .line 173
    .local v2, "_result":Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v2, :cond_7

    .line 175
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {v2, p3, v4}, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 179
    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v2    # "_result":Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;
    :sswitch_a
    const-string v3, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 188
    sget-object v3, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    .line 193
    .local v0, "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;->onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    goto/16 :goto_0

    .line 191
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;
    goto :goto_7

    .line 198
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;
    :sswitch_b
    const-string v3, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 201
    sget-object v3, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    .line 206
    .local v0, "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
    :goto_8
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;->onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V

    goto/16 :goto_0

    .line 204
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
    goto :goto_8

    .line 211
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
    :sswitch_c
    const-string v3, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 214
    sget-object v3, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;

    .line 219
    .local v0, "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;
    :goto_9
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;->onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V

    goto/16 :goto_0

    .line 217
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;
    goto :goto_9

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
