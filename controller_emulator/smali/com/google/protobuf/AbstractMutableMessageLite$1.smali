.class final Lcom/google/protobuf/AbstractMutableMessageLite$1;
.super Lcom/google/protobuf/AbstractParser;
.source "AbstractMutableMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$defaultInstance:Lcom/google/protobuf/MutableMessageLite;


# direct methods
.method constructor <init>(Lcom/google/protobuf/MutableMessageLite;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/protobuf/AbstractMutableMessageLite$1;->val$defaultInstance:Lcom/google/protobuf/MutableMessageLite;

    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MutableMessageLite;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v1, p0, Lcom/google/protobuf/AbstractMutableMessageLite$1;->val$defaultInstance:Lcom/google/protobuf/MutableMessageLite;

    invoke-interface {v1}, Lcom/google/protobuf/MutableMessageLite;->newMessageForType()Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    .line 335
    .local v0, "message":Lcom/google/protobuf/MutableMessageLite;, "TT;"
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/MutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 338
    :cond_0
    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    return-object v0
.end method
