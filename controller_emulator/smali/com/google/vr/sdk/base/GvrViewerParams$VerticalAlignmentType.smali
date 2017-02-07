.class public final enum Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;
.super Ljava/lang/Enum;
.source "GvrViewerParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/base/GvrViewerParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerticalAlignmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

.field public static final enum BOTTOM:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

.field public static final enum CENTER:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

.field public static final enum TOP:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;


# instance fields
.field private final protoValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 403
    new-instance v0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->BOTTOM:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    .line 405
    new-instance v0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->CENTER:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    .line 407
    new-instance v0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->TOP:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    .line 401
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    sget-object v1, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->BOTTOM:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->CENTER:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->TOP:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->$VALUES:[Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "protoValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 411
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 412
    iput p3, p0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->protoValue:I

    .line 413
    return-void
.end method

.method static fromProtoValue(I)Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;
    .locals 6
    .param p0, "protoValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 420
    invoke-static {}, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->values()[Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 421
    .local v0, "type":Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;
    iget v5, v0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->protoValue:I

    if-ne v5, p0, :cond_0

    .line 427
    .end local v0    # "type":Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;
    :goto_1
    return-object v0

    .line 420
    .restart local v0    # "type":Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "type":Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;
    :cond_1
    const-string v1, "GvrViewerParams"

    const-string v3, "Unknown alignment type from proto: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget-object v0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->BOTTOM:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 401
    const-class v0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    return-object v0
.end method

.method public static values()[Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->$VALUES:[Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    invoke-virtual {v0}, [Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    return-object v0
.end method


# virtual methods
.method toProtoValue()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->protoValue:I

    return v0
.end method
