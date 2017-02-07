.class public interface abstract Lclearcut/nano/EventCodeEnumProto;
.super Ljava/lang/Object;
.source "EventCodeEnumProto.java"


# static fields
.field public static final isActiveEvent:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final veTypeId:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    const/16 v0, 0x8

    const-class v1, Ljava/lang/Boolean;

    const-wide/32 v2, 0x21f6f278

    .line 15
    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lclearcut/nano/EventCodeEnumProto;->isActiveEvent:Lcom/google/protobuf/nano/Extension;

    .line 24
    const/4 v0, 0x5

    const-class v1, Ljava/lang/Integer;

    const-wide/32 v2, 0x2b0154c8

    .line 25
    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lclearcut/nano/EventCodeEnumProto;->veTypeId:Lcom/google/protobuf/nano/Extension;

    .line 24
    return-void
.end method
