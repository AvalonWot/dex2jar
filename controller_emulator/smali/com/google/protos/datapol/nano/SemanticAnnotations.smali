.class public interface abstract Lcom/google/protos/datapol/nano/SemanticAnnotations;
.super Ljava/lang/Object;
.source "SemanticAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;,
        Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;,
        Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;,
        Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;,
        Lcom/google/protos/datapol/nano/SemanticAnnotations$DataFormat;,
        Lcom/google/protos/datapol/nano/SemanticAnnotations$SemanticType;
    }
.end annotation


# static fields
.field public static final dataFormat:Lcom/google/protobuf/nano/Extension;
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

.field public static final fieldDetails:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;",
            "Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final fileVettedForDatapolAnnotations:Lcom/google/protobuf/nano/Extension;
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

.field public static final fileVettingStatus:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final locationQualifier:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;",
            "Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;",
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
            "Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final msgLocationQualifier:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;",
            "Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final msgQualifier:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;",
            "Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final msgRetention:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;",
            "[",
            "Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;",
            ">;"
        }
    .end annotation
.end field

.field public static final msgSemanticType:Lcom/google/protobuf/nano/Extension;
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

.field public static final qualifier:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;",
            "Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final retention:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;",
            "[",
            "Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;",
            ">;"
        }
    .end annotation
.end field

.field public static final semanticType:Lcom/google/protobuf/nano/Extension;
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


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x2135d38a

    const/16 v4, 0xe

    const/16 v1, 0xb

    .line 14
    const-class v0, Ljava/lang/Integer;

    const-wide/32 v2, 0x131c1020

    .line 15
    invoke-static {v4, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations;->semanticType:Lcom/google/protobuf/nano/Extension;

    .line 24
    const-class v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    const-wide/32 v2, 0x1333e482

    .line 25
    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createMessageTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations;->qualifier:Lcom/google/protobuf/nano/Extension;

    .line 34
    const-class v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    .line 35
    invoke-static {v1, v0, v6, v7}, Lcom/google/protobuf/nano/Extension;->createMessageTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations;->locationQualifier:Lcom/google/protobuf/nano/Extension;

    .line 44
    const-class v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$FieldDetails;

    const-wide/32 v2, 0x131e3c22

    .line 45
    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createMessageTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations;->fieldDetails:Lcom/google/protobuf/nano/Extension;

    .line 54
    const-class v0, Ljava/lang/Integer;

    const-wide/32 v2, 0x132ddbd8

    .line 55
    invoke-static {v4, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations;->dataFormat:Lcom/google/protobuf/nano/Extension;

    .line 64
    const-class v0, [Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    const-wide/32 v2, 0x132e2422

    .line 65
    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createRepeatedMessageTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations;->retention:Lcom/google/protobuf/nano/Extension;

    .line 74
    const-class v0, Ljava/lang/Integer;

    const-wide/32 v2, 0x139f1e50

    .line 75
    invoke-static {v4, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations;->msgSemanticType:Lcom/google/protobuf/nano/Extension;

    .line 84
    const-class v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    const-wide/32 v2, 0x13d02afa

    .line 85
    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createMessageTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations;->msgQualifier:Lcom/google/protobuf/nano/Extension;

    .line 94
    const-class v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    .line 95
    invoke-static {v1, v0, v6, v7}, Lcom/google/protobuf/nano/Extension;->createMessageTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations;->msgLocationQualifier:Lcom/google/protobuf/nano/Extension;

    .line 104
    const-class v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;

    const-wide/32 v2, 0x13e7bffa

    .line 105
    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createMessageTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations;->msgDetails:Lcom/google/protobuf/nano/Extension;

    .line 114
    const-class v0, [Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    const-wide/32 v2, 0x13fbf71a

    .line 115
    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createRepeatedMessageTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations;->msgRetention:Lcom/google/protobuf/nano/Extension;

    .line 124
    const/16 v0, 0x8

    const-class v1, Ljava/lang/Boolean;

    const-wide/32 v2, 0x14ca6840

    .line 125
    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations;->fileVettedForDatapolAnnotations:Lcom/google/protobuf/nano/Extension;

    .line 134
    const/16 v0, 0x9

    const-class v1, Ljava/lang/String;

    const-wide/32 v2, 0x220037d2

    .line 135
    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations;->fileVettingStatus:Lcom/google/protobuf/nano/Extension;

    .line 134
    return-void
.end method
