.class final Lcom/google/protobuf/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MessageInfo$Builder;
    }
.end annotation


# instance fields
.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final messageSetWireFormat:Z

.field private final syntax:Lcom/google/protobuf/ProtoSyntax;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/ProtoSyntax;ZLjava/util/List;)V
    .locals 0
    .param p1, "syntax"    # Lcom/google/protobuf/ProtoSyntax;
    .param p2, "messageSetWireFormat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ProtoSyntax;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/FieldInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/protobuf/MessageInfo;->syntax:Lcom/google/protobuf/ProtoSyntax;

    .line 26
    iput-boolean p2, p0, Lcom/google/protobuf/MessageInfo;->messageSetWireFormat:Z

    .line 27
    iput-object p3, p0, Lcom/google/protobuf/MessageInfo;->fields:Ljava/util/List;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ProtoSyntax;ZLjava/util/List;Lcom/google/protobuf/MessageInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/ProtoSyntax;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lcom/google/protobuf/MessageInfo$1;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageInfo;-><init>(Lcom/google/protobuf/ProtoSyntax;ZLjava/util/List;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/MessageInfo$Builder;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/google/protobuf/MessageInfo$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/MessageInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static newBuilder(I)Lcom/google/protobuf/MessageInfo$Builder;
    .locals 1
    .param p0, "numFields"    # I

    .prologue
    .line 93
    new-instance v0, Lcom/google/protobuf/MessageInfo$Builder;

    invoke-direct {v0, p0}, Lcom/google/protobuf/MessageInfo$Builder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/protobuf/MessageInfo;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/ProtoSyntax;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/protobuf/MessageInfo;->syntax:Lcom/google/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/protobuf/MessageInfo;->messageSetWireFormat:Z

    return v0
.end method

.method public mapFieldDefaultEntryMap()Lcom/google/protobuf/Int2ObjectHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct {v0}, Lcom/google/protobuf/Int2ObjectHashMap;-><init>()V

    .line 76
    .local v0, "defaultEntryMap":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MessageInfo;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 77
    iget-object v4, p0, Lcom/google/protobuf/MessageInfo;->fields:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldInfo;

    .line 78
    .local v1, "fd":Lcom/google/protobuf/FieldInfo;
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v2

    .line 79
    .local v2, "fieldNumber":I
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    if-ne v4, v5, :cond_0

    .line 80
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/protobuf/Int2ObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "fd":Lcom/google/protobuf/FieldInfo;
    .end local v2    # "fieldNumber":I
    :cond_1
    return-object v0
.end method

.method public messageFieldClassMap()Lcom/google/protobuf/Int2ObjectHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct {v0}, Lcom/google/protobuf/Int2ObjectHashMap;-><init>()V

    .line 51
    .local v0, "classMap":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Class<*>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MessageInfo;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 52
    iget-object v4, p0, Lcom/google/protobuf/MessageInfo;->fields:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldInfo;

    .line 53
    .local v1, "fd":Lcom/google/protobuf/FieldInfo;
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v2

    .line 56
    .local v2, "fieldNumber":I
    sget-object v4, Lcom/google/protobuf/MessageInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/FieldType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 51
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 59
    :goto_2
    invoke-virtual {v0, v2, v4}, Lcom/google/protobuf/Int2ObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getOneofStoredType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_2

    .line 65
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getListElementType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/protobuf/Int2ObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 71
    .end local v1    # "fd":Lcom/google/protobuf/FieldInfo;
    .end local v2    # "fieldNumber":I
    :cond_1
    return-object v0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
