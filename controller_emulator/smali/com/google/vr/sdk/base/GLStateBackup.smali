.class Lcom/google/vr/sdk/base/GLStateBackup;
.super Ljava/lang/Object;
.source "GLStateBackup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;
    }
.end annotation


# instance fields
.field private arrayBufferBinding:Ljava/nio/IntBuffer;

.field private clearColor:Ljava/nio/FloatBuffer;

.field private cullFaceEnabled:Z

.field private depthTestEnabled:Z

.field private elementArrayBufferBinding:Ljava/nio/IntBuffer;

.field private scissorBox:Ljava/nio/IntBuffer;

.field private scissorTestEnabled:Z

.field private shaderProgram:Ljava/nio/IntBuffer;

.field private texture2dId:Ljava/nio/IntBuffer;

.field private textureUnit:Ljava/nio/IntBuffer;

.field private vertexAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;",
            ">;"
        }
    .end annotation
.end field

.field private viewport:Ljava/nio/IntBuffer;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/GLStateBackup;->viewport:Ljava/nio/IntBuffer;

    .line 20
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/GLStateBackup;->texture2dId:Ljava/nio/IntBuffer;

    .line 21
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/GLStateBackup;->textureUnit:Ljava/nio/IntBuffer;

    .line 22
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/GLStateBackup;->scissorBox:Ljava/nio/IntBuffer;

    .line 23
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/GLStateBackup;->shaderProgram:Ljava/nio/IntBuffer;

    .line 24
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/GLStateBackup;->arrayBufferBinding:Ljava/nio/IntBuffer;

    .line 25
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/GLStateBackup;->elementArrayBufferBinding:Ljava/nio/IntBuffer;

    .line 26
    invoke-static {v2}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/GLStateBackup;->clearColor:Ljava/nio/FloatBuffer;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/GLStateBackup;->vertexAttributes:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method addTrackedVertexAttribute(I)V
    .locals 2
    .param p1, "attributeId"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/base/GLStateBackup;->vertexAttributes:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;-><init>(Lcom/google/vr/sdk/base/GLStateBackup;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method clearTrackedVertexAttributes()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/vr/sdk/base/GLStateBackup;->vertexAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    return-void
.end method

.method readFromGL()V
    .locals 3

    .prologue
    .line 72
    const/16 v1, 0xba2

    iget-object v2, p0, Lcom/google/vr/sdk/base/GLStateBackup;->viewport:Ljava/nio/IntBuffer;

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 75
    const/16 v1, 0xb44

    invoke-static {v1}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/vr/sdk/base/GLStateBackup;->cullFaceEnabled:Z

    .line 76
    const/16 v1, 0xc11

    invoke-static {v1}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/vr/sdk/base/GLStateBackup;->scissorTestEnabled:Z

    .line 77
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/vr/sdk/base/GLStateBackup;->depthTestEnabled:Z

    .line 80
    const/16 v1, 0xc22

    iget-object v2, p0, Lcom/google/vr/sdk/base/GLStateBackup;->clearColor:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 83
    const v1, 0x8b8d

    iget-object v2, p0, Lcom/google/vr/sdk/base/GLStateBackup;->shaderProgram:Ljava/nio/IntBuffer;

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 86
    const/16 v1, 0xc10

    iget-object v2, p0, Lcom/google/vr/sdk/base/GLStateBackup;->scissorBox:Ljava/nio/IntBuffer;

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 89
    const v1, 0x84e0

    iget-object v2, p0, Lcom/google/vr/sdk/base/GLStateBackup;->textureUnit:Ljava/nio/IntBuffer;

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 90
    const v1, 0x8069

    iget-object v2, p0, Lcom/google/vr/sdk/base/GLStateBackup;->texture2dId:Ljava/nio/IntBuffer;

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 93
    const v1, 0x8894

    iget-object v2, p0, Lcom/google/vr/sdk/base/GLStateBackup;->arrayBufferBinding:Ljava/nio/IntBuffer;

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 94
    const v1, 0x8895

    iget-object v2, p0, Lcom/google/vr/sdk/base/GLStateBackup;->elementArrayBufferBinding:Ljava/nio/IntBuffer;

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 98
    iget-object v1, p0, Lcom/google/vr/sdk/base/GLStateBackup;->vertexAttributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;

    .line 99
    .local v0, "vas":Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;
    invoke-virtual {v0}, Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;->readFromGL()V

    goto :goto_0

    .line 101
    .end local v0    # "vas":Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;
    :cond_0
    return-void
.end method

.method writeToGL()V
    .locals 10

    .prologue
    const/16 v9, 0xb44

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 108
    iget-object v1, p0, Lcom/google/vr/sdk/base/GLStateBackup;->vertexAttributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;

    .line 109
    .local v0, "vas":Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;
    invoke-virtual {v0}, Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;->writeToGL()V

    goto :goto_0

    .line 113
    .end local v0    # "vas":Lcom/google/vr/sdk/base/GLStateBackup$VertexAttributeState;
    :cond_0
    const v1, 0x8892

    iget-object v2, p0, Lcom/google/vr/sdk/base/GLStateBackup;->arrayBufferBinding:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v2

    aget v2, v2, v5

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 114
    const v1, 0x8893

    iget-object v2, p0, Lcom/google/vr/sdk/base/GLStateBackup;->elementArrayBufferBinding:Ljava/nio/IntBuffer;

    .line 115
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v2

    aget v2, v2, v5

    .line 114
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 118
    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/google/vr/sdk/base/GLStateBackup;->texture2dId:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v2

    aget v2, v2, v5

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 119
    iget-object v1, p0, Lcom/google/vr/sdk/base/GLStateBackup;->textureUnit:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    aget v1, v1, v5

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 122
    iget-object v1, p0, Lcom/google/vr/sdk/base/GLStateBackup;->scissorBox:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    aget v1, v1, v5

    iget-object v2, p0, Lcom/google/vr/sdk/base/GLStateBackup;->scissorBox:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v2

    aget v2, v2, v6

    iget-object v3, p0, Lcom/google/vr/sdk/base/GLStateBackup;->scissorBox:Ljava/nio/IntBuffer;

    .line 123
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v3

    aget v3, v3, v7

    iget-object v4, p0, Lcom/google/vr/sdk/base/GLStateBackup;->scissorBox:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v4

    aget v4, v4, v8

    .line 122
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 126
    iget-object v1, p0, Lcom/google/vr/sdk/base/GLStateBackup;->shaderProgram:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    aget v1, v1, v5

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 129
    iget-object v1, p0, Lcom/google/vr/sdk/base/GLStateBackup;->clearColor:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v1

    aget v1, v1, v5

    iget-object v2, p0, Lcom/google/vr/sdk/base/GLStateBackup;->clearColor:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v2

    aget v2, v2, v6

    iget-object v3, p0, Lcom/google/vr/sdk/base/GLStateBackup;->clearColor:Ljava/nio/FloatBuffer;

    .line 130
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v3

    aget v3, v3, v7

    iget-object v4, p0, Lcom/google/vr/sdk/base/GLStateBackup;->clearColor:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v4

    aget v4, v4, v8

    .line 129
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 133
    iget-boolean v1, p0, Lcom/google/vr/sdk/base/GLStateBackup;->cullFaceEnabled:Z

    if-eqz v1, :cond_1

    .line 134
    invoke-static {v9}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 138
    :goto_1
    iget-boolean v1, p0, Lcom/google/vr/sdk/base/GLStateBackup;->scissorTestEnabled:Z

    if-eqz v1, :cond_2

    .line 139
    const/16 v1, 0xc11

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 143
    :goto_2
    iget-boolean v1, p0, Lcom/google/vr/sdk/base/GLStateBackup;->depthTestEnabled:Z

    if-eqz v1, :cond_3

    .line 144
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 150
    :goto_3
    iget-object v1, p0, Lcom/google/vr/sdk/base/GLStateBackup;->viewport:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    aget v1, v1, v5

    iget-object v2, p0, Lcom/google/vr/sdk/base/GLStateBackup;->viewport:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v2

    aget v2, v2, v6

    iget-object v3, p0, Lcom/google/vr/sdk/base/GLStateBackup;->viewport:Ljava/nio/IntBuffer;

    .line 151
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v3

    aget v3, v3, v7

    iget-object v4, p0, Lcom/google/vr/sdk/base/GLStateBackup;->viewport:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v4

    aget v4, v4, v8

    .line 150
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 152
    return-void

    .line 136
    :cond_1
    invoke-static {v9}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_1

    .line 141
    :cond_2
    const/16 v1, 0xc11

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_2

    .line 146
    :cond_3
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_3
.end method
