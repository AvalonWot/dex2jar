.class final Lcom/google/protobuf/ManifestSchemaFactory;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Lcom/google/protobuf/SchemaFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ManifestSchemaFactory$Mode;
    }
.end annotation


# static fields
.field private static final UNSUPPORTED:Lcom/google/protobuf/MessageInfoFactory;


# instance fields
.field private final messageInfoFactory:Lcom/google/protobuf/MessageInfoFactory;

.field private final mode:Lcom/google/protobuf/ManifestSchemaFactory$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/protobuf/ManifestSchemaFactory$1;

    invoke-direct {v0}, Lcom/google/protobuf/ManifestSchemaFactory$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/ManifestSchemaFactory;->UNSUPPORTED:Lcom/google/protobuf/MessageInfoFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/google/protobuf/ManifestSchemaFactory;->getDefaultMessageInfoFactory()Lcom/google/protobuf/MessageInfoFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/ManifestSchemaFactory;-><init>(Lcom/google/protobuf/MessageInfoFactory;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/MessageInfoFactory;)V
    .locals 1
    .param p1, "messageInfoFactory"    # Lcom/google/protobuf/MessageInfoFactory;

    .prologue
    .line 53
    sget-object v0, Lcom/google/protobuf/ManifestSchemaFactory$Mode;->DYNAMIC:Lcom/google/protobuf/ManifestSchemaFactory$Mode;

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/ManifestSchemaFactory;-><init>(Lcom/google/protobuf/MessageInfoFactory;Lcom/google/protobuf/ManifestSchemaFactory$Mode;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/MessageInfoFactory;Lcom/google/protobuf/ManifestSchemaFactory$Mode;)V
    .locals 2
    .param p1, "messageInfoFactory"    # Lcom/google/protobuf/MessageInfoFactory;
    .param p2, "mode"    # Lcom/google/protobuf/ManifestSchemaFactory$Mode;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/protobuf/ManifestSchemaFactory;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Schema factory is unsupported on this platform"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    const-string v0, "messageDescriptorFactory"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageInfoFactory;

    iput-object v0, p0, Lcom/google/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/google/protobuf/MessageInfoFactory;

    .line 62
    const-string v0, "mode"

    invoke-static {p2, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ManifestSchemaFactory$Mode;

    iput-object v0, p0, Lcom/google/protobuf/ManifestSchemaFactory;->mode:Lcom/google/protobuf/ManifestSchemaFactory$Mode;

    .line 63
    return-void
.end method

.method private static getDefaultMessageInfoFactory()Lcom/google/protobuf/MessageInfoFactory;
    .locals 2

    .prologue
    .line 153
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/ManifestSchemaFactory;->getDescriptorMessageInfoFactory()Lcom/google/protobuf/MessageInfoFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 155
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 154
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 155
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/google/protobuf/ManifestSchemaFactory;->UNSUPPORTED:Lcom/google/protobuf/MessageInfoFactory;

    goto :goto_0
.end method

.method private static getDescriptorMessageInfoFactory()Lcom/google/protobuf/MessageInfoFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 162
    const-string v1, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 163
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getInstance"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageInfoFactory;

    return-object v1
.end method

.method private static isProto2(Lcom/google/protobuf/MessageInfo;)Z
    .locals 2
    .param p0, "messageInfo"    # Lcom/google/protobuf/MessageInfo;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/protobuf/MessageInfo;->getSyntax()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;
    .locals 6
    .param p1, "messageInfo"    # Lcom/google/protobuf/MessageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            ")",
            "Lcom/google/protobuf/Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-static {p1}, Lcom/google/protobuf/ManifestSchemaFactory;->isProto2(Lcom/google/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/google/protobuf/FieldInitializer;->lite()Lcom/google/protobuf/FieldInitializer;

    move-result-object v2

    .line 129
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v3

    .line 130
    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->lite()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v4

    .line 131
    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->lite()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 125
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/Proto2Schema;->newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto2Schema;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-static {}, Lcom/google/protobuf/FieldInitializer;->lite()Lcom/google/protobuf/FieldInitializer;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->lite()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v1

    .line 132
    invoke-static {p0, p1, v0, v1}, Lcom/google/protobuf/Proto3Schema;->newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto3Schema;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/ManifestSchemaFactory;->isProto2(Lcom/google/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-static {}, Lcom/google/protobuf/FieldInitializer;->full()Lcom/google/protobuf/FieldInitializer;

    move-result-object v2

    .line 140
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v3

    .line 141
    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->full()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v4

    .line 142
    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->full()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 136
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/Proto2Schema;->newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto2Schema;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_2
    invoke-static {}, Lcom/google/protobuf/FieldInitializer;->full()Lcom/google/protobuf/FieldInitializer;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->full()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v1

    .line 143
    invoke-static {p0, p1, v0, v1}, Lcom/google/protobuf/Proto3Schema;->newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto3Schema;

    move-result-object v0

    goto :goto_0
.end method

.method private static newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;
    .locals 6
    .param p1, "messageInfo"    # Lcom/google/protobuf/MessageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            ")",
            "Lcom/google/protobuf/Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-static {p1}, Lcom/google/protobuf/ManifestSchemaFactory;->isProto2(Lcom/google/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/google/protobuf/FieldInitializer;->lite()Lcom/google/protobuf/FieldInitializer;

    move-result-object v2

    .line 104
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v3

    .line 105
    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->lite()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v4

    .line 106
    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->lite()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 100
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/Proto2Schema;->newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto2Schema;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-static {}, Lcom/google/protobuf/FieldInitializer;->lite()Lcom/google/protobuf/FieldInitializer;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->lite()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v1

    .line 107
    invoke-static {p0, p1, v0, v1}, Lcom/google/protobuf/Proto3Schema;->newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto3Schema;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/ManifestSchemaFactory;->isProto2(Lcom/google/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-static {}, Lcom/google/protobuf/FieldInitializer;->full()Lcom/google/protobuf/FieldInitializer;

    move-result-object v2

    .line 115
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v3

    .line 116
    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->full()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v4

    .line 117
    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->full()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 111
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/Proto2Schema;->newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto2Schema;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_2
    invoke-static {}, Lcom/google/protobuf/FieldInitializer;->full()Lcom/google/protobuf/FieldInitializer;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->full()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v1

    .line 118
    invoke-static {p0, p1, v0, v1}, Lcom/google/protobuf/Proto3Schema;->newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto3Schema;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public createSchema(Ljava/lang/Class;)Lcom/google/protobuf/Schema;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/protobuf/Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->requireGeneratedMessage(Ljava/lang/Class;)V

    .line 73
    iget-object v1, p0, Lcom/google/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/google/protobuf/MessageInfoFactory;

    invoke-interface {v1, p1}, Lcom/google/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Lcom/google/protobuf/MessageInfo;

    move-result-object v0

    .line 76
    .local v0, "messageInfo":Lcom/google/protobuf/MessageInfo;
    invoke-virtual {v0}, Lcom/google/protobuf/MessageInfo;->isMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    const-class v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v1

    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->lite()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v2

    .line 78
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/MessageSetSchema;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;)Lcom/google/protobuf/MessageSetSchema;

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 82
    :cond_0
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v1

    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->full()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v2

    .line 81
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/MessageSetSchema;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;)Lcom/google/protobuf/MessageSetSchema;

    move-result-object v1

    goto :goto_0

    .line 85
    :cond_1
    sget-object v1, Lcom/google/protobuf/ManifestSchemaFactory$2;->$SwitchMap$com$google$protobuf$ManifestSchemaFactory$Mode:[I

    iget-object v2, p0, Lcom/google/protobuf/ManifestSchemaFactory;->mode:Lcom/google/protobuf/ManifestSchemaFactory$Mode;

    invoke-virtual {v2}, Lcom/google/protobuf/ManifestSchemaFactory$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 91
    invoke-virtual {v0}, Lcom/google/protobuf/MessageInfo;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/SchemaUtil;->shouldUseTableSwitch(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    invoke-static {p1, v0}, Lcom/google/protobuf/ManifestSchemaFactory;->newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;

    move-result-object v1

    goto :goto_0

    .line 87
    :pswitch_0
    invoke-static {p1, v0}, Lcom/google/protobuf/ManifestSchemaFactory;->newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;

    move-result-object v1

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-static {p1, v0}, Lcom/google/protobuf/ManifestSchemaFactory;->newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_2
    invoke-static {p1, v0}, Lcom/google/protobuf/ManifestSchemaFactory;->newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;

    move-result-object v1

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
