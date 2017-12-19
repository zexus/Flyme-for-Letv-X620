.class public Lcom/letv/domain/DomainRequest;
.super Ljava/lang/Object;
.source "DomainRequest.java"


# instance fields
.field private services:Ljava/util/TreeSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServices()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 30
    iget-object v3, p0, Lcom/letv/domain/DomainRequest;->services:Ljava/util/TreeSet;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/letv/domain/DomainRequest;->services:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/letv/domain/DomainRequest;->services:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 33
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    .local v2, "next":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 38
    .end local v2    # "next":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 40
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    return-object v5
.end method

.method public varargs setServices([Lcom/letv/domain/Service;)V
    .locals 5
    .param p1, "services"    # [Lcom/letv/domain/Service;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 17
    .local v1, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 18
    .local v0, "service":Lcom/letv/domain/Service;
    invoke-virtual {v0}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 17
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    .end local v0    # "service":Lcom/letv/domain/Service;
    :cond_0
    iput-object v1, p0, Lcom/letv/domain/DomainRequest;->services:Ljava/util/TreeSet;

    .line 15
    return-void
.end method

.method public varargs setServices([Ljava/lang/String;)V
    .locals 1
    .param p1, "services"    # [Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 25
    .local v0, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 26
    iput-object v0, p0, Lcom/letv/domain/DomainRequest;->services:Ljava/util/TreeSet;

    .line 23
    return-void
.end method
