.class public interface abstract Llogs_proto/nano/LogsAnnotations;
.super Ljava/lang/Object;
.source "LogsAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llogs_proto/nano/LogsAnnotations$MessageDetails;,
        Llogs_proto/nano/LogsAnnotations$IdentifierType;
    }
.end annotation


# static fields
.field public static final fieldEncryptionKeyName:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final fileNotUsedForLoggingExceptEnums:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final fileVettedForLogsAnnotations:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final idType:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final isEncrypted:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final isPrivateLog:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final maxRecursionDepth:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final msgDetails:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;",
            "Llogs_proto/nano/LogsAnnotations$MessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final msgIdType:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final msgNotLoggedInSawmill:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final msgTempLogsOnly:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final notLoggedInSawmill:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final sawmillFilterOverrideApprovedByLogsAccess:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final tempLogsOnly:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/32 v10, 0xa4f95a8

    const/16 v8, 0xe

    const/16 v5, 0x9

    const-wide/32 v6, 0xa4c4500    # 8.53599983E-316

    const/16 v4, 0x8

    .line 14
    const-class v0, Ljava/lang/Integer;

    const-wide/32 v2, 0xa5a9960

    .line 15
    invoke-static {v8, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Llogs_proto/nano/LogsAnnotations;->idType:Lcom/google/protobuf/nano/Extension;

    .line 24
    const-class v0, Ljava/lang/Boolean;

    .line 25
    invoke-static {v4, v0, v10, v11}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Llogs_proto/nano/LogsAnnotations;->tempLogsOnly:Lcom/google/protobuf/nano/Extension;

    .line 34
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v2, 0xb2fb970

    .line 35
    invoke-static {v4, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Llogs_proto/nano/LogsAnnotations;->isPrivateLog:Lcom/google/protobuf/nano/Extension;

    .line 44
    const-class v0, Ljava/lang/Boolean;

    .line 45
    invoke-static {v4, v0, v6, v7}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Llogs_proto/nano/LogsAnnotations;->notLoggedInSawmill:Lcom/google/protobuf/nano/Extension;

    .line 54
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v2, 0xcb58590

    .line 55
    invoke-static {v4, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Llogs_proto/nano/LogsAnnotations;->isEncrypted:Lcom/google/protobuf/nano/Extension;

    .line 64
    const/4 v0, 0x5

    const-class v1, Ljava/lang/Integer;

    const-wide/32 v2, 0x199aeab8

    .line 65
    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Llogs_proto/nano/LogsAnnotations;->maxRecursionDepth:Lcom/google/protobuf/nano/Extension;

    .line 74
    const-class v0, Ljava/lang/String;

    const-wide/32 v2, 0x1b1e527a

    .line 75
    invoke-static {v5, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Llogs_proto/nano/LogsAnnotations;->sawmillFilterOverrideApprovedByLogsAccess:Lcom/google/protobuf/nano/Extension;

    .line 84
    const-class v0, Ljava/lang/Integer;

    const-wide/32 v2, 0xa5a9960

    .line 85
    invoke-static {v8, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Llogs_proto/nano/LogsAnnotations;->msgIdType:Lcom/google/protobuf/nano/Extension;

    .line 94
    const-class v0, Ljava/lang/Boolean;

    .line 95
    invoke-static {v4, v0, v10, v11}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Llogs_proto/nano/LogsAnnotations;->msgTempLogsOnly:Lcom/google/protobuf/nano/Extension;

    .line 104
    const-class v0, Ljava/lang/Boolean;

    .line 105
    invoke-static {v4, v0, v6, v7}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Llogs_proto/nano/LogsAnnotations;->msgNotLoggedInSawmill:Lcom/google/protobuf/nano/Extension;

    .line 114
    const/16 v0, 0xb

    const-class v1, Llogs_proto/nano/LogsAnnotations$MessageDetails;

    const-wide/32 v2, 0xa3c7d42

    .line 115
    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/nano/Extension;->createMessageTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Llogs_proto/nano/LogsAnnotations;->msgDetails:Lcom/google/protobuf/nano/Extension;

    .line 124
    const-class v0, Ljava/lang/String;

    const-wide/32 v2, 0xcb58592

    .line 125
    invoke-static {v5, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Llogs_proto/nano/LogsAnnotations;->fieldEncryptionKeyName:Lcom/google/protobuf/nano/Extension;

    .line 134
    const-class v0, Ljava/lang/Boolean;

    .line 135
    invoke-static {v4, v0, v6, v7}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Llogs_proto/nano/LogsAnnotations;->fileNotUsedForLoggingExceptEnums:Lcom/google/protobuf/nano/Extension;

    .line 144
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v2, 0xdd34698

    .line 145
    invoke-static {v4, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Llogs_proto/nano/LogsAnnotations;->fileVettedForLogsAnnotations:Lcom/google/protobuf/nano/Extension;

    .line 144
    return-void
.end method
