.class final Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "$Gson$Types.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/$Gson$Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParameterizedTypeImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;

.field private final typeArguments:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 5
    .param p1, "ownerType"    # Ljava/lang/reflect/Type;
    .param p2, "rawType"    # Ljava/lang/reflect/Type;
    .param p3, "typeArguments"    # [Ljava/lang/reflect/Type;

    .prologue
    const/4 v3, 0x0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    instance-of v4, p2, Ljava/lang/Class;

    if-eqz v4, :cond_0

    move-object v1, p2

    .line 443
    check-cast v1, Ljava/lang/Class;

    .line 444
    .local v1, "rawTypeAsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 445
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 446
    .local v0, "isStaticOrTopLevelClass":Z
    :goto_0
    if-nez p1, :cond_3

    .end local v0    # "isStaticOrTopLevelClass":Z
    :goto_1
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 449
    .end local v1    # "rawTypeAsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-nez p1, :cond_4

    :goto_2
    iput-object v3, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 450
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    iput-object v3, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 451
    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Type;

    iput-object v3, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    .line 452
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_3
    iget-object v3, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 453
    iget-object v3, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v3, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/google/gson/internal/$Gson$Types;->-wrap1(Ljava/lang/reflect/Type;)V

    .line 455
    iget-object v3, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    iget-object v4, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    aput-object v4, v3, v2

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 444
    .end local v2    # "t":I
    .restart local v1    # "rawTypeAsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "isStaticOrTopLevelClass":Z
    goto :goto_0

    .line 445
    .end local v0    # "isStaticOrTopLevelClass":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isStaticOrTopLevelClass":Z
    goto :goto_0

    .line 446
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 449
    .end local v0    # "isStaticOrTopLevelClass":Z
    .end local v1    # "rawTypeAsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_2

    .line 440
    .restart local v2    # "t":I
    :cond_5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 472
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 473
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    .line 472
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 478
    iget-object v1, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 477
    xor-int/2addr v0, v1

    .line 479
    iget-object v1, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Types;->-wrap0(Ljava/lang/Object;)I

    move-result v1

    .line 477
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 484
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    iget-object v2, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 487
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 490
    :cond_0
    const-string/jumbo v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 492
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    :cond_1
    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
