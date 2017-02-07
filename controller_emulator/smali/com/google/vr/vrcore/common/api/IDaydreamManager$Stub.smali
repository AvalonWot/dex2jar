.class public abstract Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;
.super Landroid/os/Binder;
.source "IDaydreamManager.java"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/IDaydreamManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/IDaydreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.common.api.IDaydreamManager"

.field static final TRANSACTION_deprecatedLaunchInVr:I = 0x4

.field static final TRANSACTION_exitFromVr:I = 0xa

.field static final TRANSACTION_handleInsertionIntoHeadset:I = 0xb

.field static final TRANSACTION_handleRemovalFromHeadset:I = 0xc

.field static final TRANSACTION_launchInVr:I = 0x7

.field static final TRANSACTION_launchVrHome:I = 0x8

.field static final TRANSACTION_launchVrTransition:I = 0x9

.field static final TRANSACTION_prepareVr:I = 0x3

.field static final TRANSACTION_registerDaydreamIntent:I = 0x5

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_unregisterDaydreamIntent:I = 0x6

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-string v1, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 48
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

    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 56
    :sswitch_0
    const-string v3, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :sswitch_1
    const-string v5, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 70
    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/IDaydreamListener;

    move-result-object v1

    .line 71
    .local v1, "_arg1":Lcom/google/vr/vrcore/common/api/IDaydreamListener;
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->registerListener(Landroid/content/ComponentName;Lcom/google/vr/vrcore/common/api/IDaydreamListener;)Z

    move-result v2

    .line 72
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Lcom/google/vr/vrcore/common/api/IDaydreamListener;
    .end local v2    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .line 78
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2
    const-string v5, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 86
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->unregisterListener(Landroid/content/ComponentName;)Z

    move-result v2

    .line 87
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 93
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string v5, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 96
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 102
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_3
    new-instance v1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    invoke-direct {v1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;-><init>()V

    .line 103
    .local v1, "_arg1":Lcom/google/vr/vrcore/common/api/HeadTrackingState;
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->prepareVr(Landroid/content/ComponentName;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I

    move-result v2

    .line 104
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    if-eqz v1, :cond_5

    .line 107
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {v1, p3, v4}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 99
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Lcom/google/vr/vrcore/common/api/HeadTrackingState;
    .end local v2    # "_result":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .line 111
    .restart local v1    # "_arg1":Lcom/google/vr/vrcore/common/api/HeadTrackingState;
    .restart local v2    # "_result":I
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Lcom/google/vr/vrcore/common/api/HeadTrackingState;
    .end local v2    # "_result":I
    :sswitch_4
    const-string v5, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 120
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 125
    .local v0, "_arg0":Landroid/app/PendingIntent;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->deprecatedLaunchInVr(Landroid/app/PendingIntent;)Z

    move-result v2

    .line 126
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v2, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_result":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_4

    .line 132
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_5
    const-string v3, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 135
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 140
    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->registerDaydreamIntent(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 138
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_5

    .line 145
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_6
    const-string v3, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->unregisterDaydreamIntent()V

    goto/16 :goto_0

    .line 151
    :sswitch_7
    const-string v5, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 154
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 160
    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 161
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 166
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->launchInVr(Landroid/app/PendingIntent;Landroid/content/ComponentName;)Z

    move-result v2

    .line 167
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v2, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_result":Z
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_6

    .line 164
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_7

    .line 173
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_8
    const-string v5, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->launchVrHome()Z

    move-result v2

    .line 175
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v2, :cond_c

    move v3, v4

    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v2    # "_result":Z
    :sswitch_9
    const-string v5, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;

    move-result-object v0

    .line 184
    .local v0, "_arg0":Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->launchVrTransition(Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;)Z

    move-result v2

    .line 185
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v2, :cond_d

    move v3, v4

    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 191
    .end local v0    # "_arg0":Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;
    .end local v2    # "_result":Z
    :sswitch_a
    const-string v5, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    .line 194
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 199
    .local v0, "_arg0":Landroid/app/PendingIntent;
    :goto_8
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->exitFromVr(Landroid/app/PendingIntent;)Z

    move-result v2

    .line 200
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v2, :cond_e

    move v3, v4

    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 197
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_result":Z
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_8

    .line 206
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_b
    const-string v3, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 209
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->handleInsertionIntoHeadset([B)V

    goto/16 :goto_0

    .line 214
    .end local v0    # "_arg0":[B
    :sswitch_c
    const-string v3, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->handleRemovalFromHeadset()V

    goto/16 :goto_0

    .line 52
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
