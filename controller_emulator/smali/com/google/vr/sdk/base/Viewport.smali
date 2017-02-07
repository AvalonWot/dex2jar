.class public Lcom/google/vr/sdk/base/Viewport;
.super Ljava/lang/Object;
.source "Viewport.java"


# annotations
.annotation build Lcom/google/vr/cardboard/UsedByNative;
.end annotation


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    if-ne p1, p0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    instance-of v3, p1, Lcom/google/vr/sdk/base/Viewport;

    if-nez v3, :cond_2

    move v1, v2

    .line 100
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 102
    check-cast v0, Lcom/google/vr/sdk/base/Viewport;

    .line 103
    .local v0, "other":Lcom/google/vr/sdk/base/Viewport;
    iget v3, p0, Lcom/google/vr/sdk/base/Viewport;->x:I

    iget v4, v0, Lcom/google/vr/sdk/base/Viewport;->x:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/vr/sdk/base/Viewport;->y:I

    iget v4, v0, Lcom/google/vr/sdk/base/Viewport;->y:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/vr/sdk/base/Viewport;->width:I

    iget v4, v0, Lcom/google/vr/sdk/base/Viewport;->width:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/vr/sdk/base/Viewport;->height:I

    iget v4, v0, Lcom/google/vr/sdk/base/Viewport;->height:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAsArray([II)V
    .locals 2
    .param p1, "array"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 67
    add-int/lit8 v0, p2, 0x4

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough space to write the result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/base/Viewport;->x:I

    aput v0, p1, p2

    .line 72
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/google/vr/sdk/base/Viewport;->y:I

    aput v1, p1, v0

    .line 73
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Lcom/google/vr/sdk/base/Viewport;->width:I

    aput v1, p1, v0

    .line 74
    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Lcom/google/vr/sdk/base/Viewport;->height:I

    aput v1, p1, v0

    .line 75
    return-void
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/google/vr/sdk/base/Viewport;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/base/Viewport;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/google/vr/sdk/base/Viewport;->width:I

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/google/vr/sdk/base/Viewport;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 108
    return v0
.end method

.method public setGLScissor()V
    .locals 4

    .prologue
    .line 55
    iget v0, p0, Lcom/google/vr/sdk/base/Viewport;->x:I

    iget v1, p0, Lcom/google/vr/sdk/base/Viewport;->y:I

    iget v2, p0, Lcom/google/vr/sdk/base/Viewport;->width:I

    iget v3, p0, Lcom/google/vr/sdk/base/Viewport;->height:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 56
    return-void
.end method

.method public setGLViewport()V
    .locals 4

    .prologue
    .line 50
    iget v0, p0, Lcom/google/vr/sdk/base/Viewport;->x:I

    iget v1, p0, Lcom/google/vr/sdk/base/Viewport;->y:I

    iget v2, p0, Lcom/google/vr/sdk/base/Viewport;->width:I

    iget v3, p0, Lcom/google/vr/sdk/base/Viewport;->height:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 51
    return-void
.end method

.method public setViewport(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation build Lcom/google/vr/cardboard/UsedByNative;
    .end annotation

    .prologue
    .line 42
    iput p1, p0, Lcom/google/vr/sdk/base/Viewport;->x:I

    .line 43
    iput p2, p0, Lcom/google/vr/sdk/base/Viewport;->y:I

    .line 44
    iput p3, p0, Lcom/google/vr/sdk/base/Viewport;->width:I

    .line 45
    iput p4, p0, Lcom/google/vr/sdk/base/Viewport;->height:I

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x12

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\n"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/base/Viewport;->x:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "  x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/base/Viewport;->y:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "  y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/base/Viewport;->width:I

    const/16 v2, 0x16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  width: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/base/Viewport;->height:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  height: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    return-object v0
.end method
