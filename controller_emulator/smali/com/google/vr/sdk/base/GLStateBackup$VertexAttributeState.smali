.class Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;
.super Ljava/lang/Object;
.source "GLStateBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/base/GLStateBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VertexAttributeState"
.end annotation


# instance fields
.field private attributeId:I

.field private enabled:Ljava/nio/IntBuffer;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/base/GLStateBackup;I)V
    .locals 1
    .param p2, "attributeId"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;->enabled:Ljava/nio/IntBuffer;

    .line 41
    iput p2, p0, Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;->attributeId:I

    .line 42
    return-void
.end method


# virtual methods
.method readFromGL()V
    .locals 3

    .prologue
    .line 45
    iget v0, p0, Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;->attributeId:I

    const v1, 0x8622

    iget-object v2, p0, Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;->enabled:Ljava/nio/IntBuffer;

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGetVertexAttribiv(IILjava/nio/IntBuffer;)V

    .line 48
    return-void
.end method

.method writeToGL()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;->enabled:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 52
    iget v0, p0, Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;->attributeId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;->attributeId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_0
.end method
