.class public final Lcom/google/gson/internal/$Gson$Types;
.super Ljava/lang/Object;
.source "$Gson$Types.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;,
        Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;,
        Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;
    }
.end annotation


# static fields
.field static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;


# direct methods
.method static synthetic -wrap0(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->hashCodeOrZero(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/reflect/Type;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    sput-object v0, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .locals 1
    .param p0, "componentType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 66
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 8
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 94
    instance-of v4, p0, Ljava/lang/Class;

    if-eqz v4, :cond_1

    move-object v0, p0

    .line 95
    check-cast v0, Ljava/lang/Class;

    .line 96
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    move-object v0, v4

    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v0

    .line 98
    :cond_1
    instance-of v4, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_2

    move-object v2, p0

    .line 99
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 100
    .local v2, "p":Ljava/lang/reflect/ParameterizedType;
    new-instance v4, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 101
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 100
    invoke-direct {v4, v5, v6, v7}, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v4

    .line 103
    .end local v2    # "p":Ljava/lang/reflect/ParameterizedType;
    :cond_2
    instance-of v4, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_3

    move-object v1, p0

    .line 104
    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .line 105
    .local v1, "g":Ljava/lang/reflect/GenericArrayType;
    new-instance v4, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v4

    .line 107
    .end local v1    # "g":Ljava/lang/reflect/GenericArrayType;
    :cond_3
    instance-of v4, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_4

    move-object v3, p0

    .line 108
    check-cast v3, Ljava/lang/reflect/WildcardType;

    .line 109
    .local v3, "w":Ljava/lang/reflect/WildcardType;
    new-instance v4, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v4

    .line 113
    .end local v3    # "w":Ljava/lang/reflect/WildcardType;
    :cond_4
    return-object p0
.end method

.method private static checkNotPrimitive(Ljava/lang/reflect/Type;)V
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v0, 0x1

    .line 432
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 431
    return-void
.end method

.method private static declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 426
    .local v0, "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 427
    check-cast v0, Ljava/lang/Class;

    .line 426
    .end local v0    # "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    :goto_0
    return-object v0

    .line 428
    .restart local v0    # "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 152
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 11
    .param p0, "a"    # Ljava/lang/reflect/Type;
    .param p1, "b"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v8, 0x0

    .line 159
    if-ne p0, p1, :cond_0

    .line 161
    const/4 v8, 0x1

    return v8

    .line 163
    :cond_0
    instance-of v9, p0, Ljava/lang/Class;

    if-eqz v9, :cond_1

    .line 165
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    return v8

    .line 167
    :cond_1
    instance-of v9, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_4

    .line 168
    instance-of v9, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v9, :cond_2

    .line 169
    return v8

    :cond_2
    move-object v2, p0

    .line 173
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .local v2, "pa":Ljava/lang/reflect/ParameterizedType;
    move-object v3, p1

    .line 174
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 175
    .local v3, "pb":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 176
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 175
    if-eqz v9, :cond_3

    .line 177
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v8

    .line 175
    :cond_3
    return v8

    .line 179
    .end local v2    # "pa":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "pb":Ljava/lang/reflect/ParameterizedType;
    :cond_4
    instance-of v9, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v9, :cond_6

    .line 180
    instance-of v9, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v9, :cond_5

    .line 181
    return v8

    :cond_5
    move-object v0, p0

    .line 184
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .local v0, "ga":Ljava/lang/reflect/GenericArrayType;
    move-object v1, p1

    .line 185
    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .line 186
    .local v1, "gb":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v8

    return v8

    .line 188
    .end local v0    # "ga":Ljava/lang/reflect/GenericArrayType;
    .end local v1    # "gb":Ljava/lang/reflect/GenericArrayType;
    :cond_6
    instance-of v9, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v9, :cond_9

    .line 189
    instance-of v9, p1, Ljava/lang/reflect/WildcardType;

    if-nez v9, :cond_7

    .line 190
    return v8

    :cond_7
    move-object v6, p0

    .line 193
    check-cast v6, Ljava/lang/reflect/WildcardType;

    .local v6, "wa":Ljava/lang/reflect/WildcardType;
    move-object v7, p1

    .line 194
    check-cast v7, Ljava/lang/reflect/WildcardType;

    .line 195
    .local v7, "wb":Ljava/lang/reflect/WildcardType;
    invoke-interface {v6}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-interface {v7}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 196
    invoke-interface {v6}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {v7}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v8

    .line 195
    :cond_8
    return v8

    .line 198
    .end local v6    # "wa":Ljava/lang/reflect/WildcardType;
    .end local v7    # "wb":Ljava/lang/reflect/WildcardType;
    :cond_9
    instance-of v9, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v9, :cond_c

    .line 199
    instance-of v9, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v9, :cond_a

    .line 200
    return v8

    :cond_a
    move-object v4, p0

    .line 202
    check-cast v4, Ljava/lang/reflect/TypeVariable;

    .local v4, "va":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object v5, p1

    .line 203
    check-cast v5, Ljava/lang/reflect/TypeVariable;

    .line 204
    .local v5, "vb":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v9

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v10

    if-ne v9, v10, :cond_b

    .line 205
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 204
    :cond_b
    return v8

    .line 209
    .end local v4    # "va":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v5    # "vb":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_c
    return v8
.end method

.method public static getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "array"    # Ljava/lang/reflect/Type;

    .prologue
    .line 278
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    .line 279
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0    # "array":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    .line 280
    .restart local p0    # "array":Ljava/lang/reflect/Type;
    :cond_0
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "array":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 288
    const-class v1, Ljava/util/Collection;

    invoke-static {p0, p1, v1}, Lcom/google/gson/internal/$Gson$Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 290
    .local v0, "collectionType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    .line 291
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .end local v0    # "collectionType":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v2

    .line 293
    .restart local v0    # "collectionType":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 294
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "collectionType":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    return-object v1

    .line 296
    .restart local v0    # "collectionType":Ljava/lang/reflect/Type;
    :cond_1
    const-class v1, Ljava/lang/Object;

    return-object v1
.end method

.method static getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 6
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "toResolve":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne p2, p1, :cond_0

    .line 228
    return-object p0

    .line 232
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 233
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 234
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, v1

    .local v2, "length":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 235
    aget-object v4, v1, v0

    if-ne v4, p2, :cond_1

    .line 236
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v0

    return-object v4

    .line 237
    :cond_1
    aget-object v4, v1, v0

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 238
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v0

    aget-object v5, v1, v0

    invoke-static {v4, v5, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    return-object v4

    .line 234
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "i":I
    .end local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "length":I
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_6

    .line 245
    :goto_1
    const-class v4, Ljava/lang/Object;

    if-eq p1, v4, :cond_6

    .line 246
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 247
    .local v3, "rawSupertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v3, p2, :cond_4

    .line 248
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    return-object v4

    .line 249
    :cond_4
    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 250
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v3, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    return-object v4

    .line 252
    :cond_5
    move-object p1, v3

    goto :goto_1

    .line 257
    .end local v3    # "rawSupertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    return-object p2
.end method

.method public static getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;
    .locals 6
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 309
    const-class v2, Ljava/util/Properties;

    if-ne p0, v2, :cond_0

    .line 310
    new-array v2, v3, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    return-object v2

    .line 313
    :cond_0
    const-class v2, Ljava/util/Map;

    invoke-static {p0, p1, v2}, Lcom/google/gson/internal/$Gson$Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 315
    .local v1, "mapType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 316
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 317
    .local v0, "mapParameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2

    .line 319
    .end local v0    # "mapParameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_1
    new-array v2, v3, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v5

    return-object v2
.end method

.method public static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 7
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 118
    instance-of v4, p0, Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 120
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    return-object p0

    .line 122
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v4, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    move-object v2, p0

    .line 123
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 128
    .local v2, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 129
    .local v3, "rawType":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/Class;

    invoke-static {v4}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 130
    check-cast v3, Ljava/lang/Class;

    .end local v3    # "rawType":Ljava/lang/reflect/Type;
    return-object v3

    .line 132
    .end local v2    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_1
    instance-of v4, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_2

    .line 133
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 134
    .local v1, "componentType":Ljava/lang/reflect/Type;
    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    return-object v4

    .line 136
    .end local v1    # "componentType":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v4, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_3

    .line 139
    const-class v4, Ljava/lang/Object;

    return-object v4

    .line 141
    :cond_3
    instance-of v4, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_4

    .line 142
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    return-object v4

    .line 145
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_4
    if-nez p0, :cond_5

    const-string/jumbo v0, "null"

    .line 146
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 147
    const-string/jumbo v6, "> is of type "

    .line 146
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    .end local v0    # "className":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "className":Ljava/lang/String;
    goto :goto_0
.end method

.method static getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 270
    invoke-static {p0, p1, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 269
    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private static hashCodeOrZero(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 214
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "toFind"    # Ljava/lang/Object;

    .prologue
    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 413
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    return v0

    .line 412
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public static varargs newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 1
    .param p0, "ownerType"    # Ljava/lang/reflect/Type;
    .param p1, "rawType"    # Ljava/lang/reflect/Type;
    .param p2, "typeArguments"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 56
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 23
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .param p2, "toResolve"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v19, p2

    .line 326
    check-cast v19, Ljava/lang/reflect/TypeVariable;

    .line 327
    .local v19, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/$Gson$Types;->resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 328
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 329
    return-object p2

    .line 332
    .end local v19    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v21, p2

    check-cast v21, Ljava/lang/Class;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->isArray()Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v10, p2

    .line 333
    check-cast v10, Ljava/lang/Class;

    .line 334
    .local v10, "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 335
    .local v5, "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 336
    .local v8, "newComponentType":Ljava/lang/reflect/Type;
    if-ne v5, v8, :cond_2

    .end local v10    # "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v10

    .line 338
    .restart local v10    # "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-static {v8}, Lcom/google/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object v10

    goto :goto_0

    .line 340
    .end local v5    # "componentType":Ljava/lang/reflect/Type;
    .end local v8    # "newComponentType":Ljava/lang/reflect/Type;
    .end local v10    # "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v11, p2

    .line 341
    check-cast v11, Ljava/lang/reflect/GenericArrayType;

    .line 342
    .local v11, "original":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v11}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 343
    .restart local v5    # "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 344
    .restart local v8    # "newComponentType":Ljava/lang/reflect/Type;
    if-ne v5, v8, :cond_4

    .end local v11    # "original":Ljava/lang/reflect/GenericArrayType;
    :goto_1
    return-object v11

    .line 346
    .restart local v11    # "original":Ljava/lang/reflect/GenericArrayType;
    :cond_4
    invoke-static {v8}, Lcom/google/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object v11

    goto :goto_1

    .line 348
    .end local v5    # "componentType":Ljava/lang/reflect/Type;
    .end local v8    # "newComponentType":Ljava/lang/reflect/Type;
    .end local v11    # "original":Ljava/lang/reflect/GenericArrayType;
    :cond_5
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v12, p2

    .line 349
    check-cast v12, Ljava/lang/reflect/ParameterizedType;

    .line 350
    .local v12, "original":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v16

    .line 351
    .local v16, "ownerType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 352
    .local v9, "newOwnerType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v16

    if-eq v9, v0, :cond_8

    const/4 v4, 0x1

    .line 354
    .local v4, "changed":Z
    :goto_2
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 355
    .local v3, "args":[Ljava/lang/reflect/Type;
    const/16 v18, 0x0

    .local v18, "t":I
    array-length v6, v3

    .local v6, "length":I
    :goto_3
    move/from16 v0, v18

    if-ge v0, v6, :cond_9

    .line 356
    aget-object v21, v3, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 357
    .local v17, "resolvedTypeArgument":Ljava/lang/reflect/Type;
    aget-object v21, v3, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 358
    if-nez v4, :cond_6

    .line 359
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "args":[Ljava/lang/reflect/Type;
    check-cast v3, [Ljava/lang/reflect/Type;

    .line 360
    .restart local v3    # "args":[Ljava/lang/reflect/Type;
    const/4 v4, 0x1

    .line 362
    :cond_6
    aput-object v17, v3, v18

    .line 355
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 352
    .end local v3    # "args":[Ljava/lang/reflect/Type;
    .end local v4    # "changed":Z
    .end local v6    # "length":I
    .end local v17    # "resolvedTypeArgument":Ljava/lang/reflect/Type;
    .end local v18    # "t":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "changed":Z
    goto :goto_2

    .line 366
    .restart local v3    # "args":[Ljava/lang/reflect/Type;
    .restart local v6    # "length":I
    .restart local v18    # "t":I
    :cond_9
    if-eqz v4, :cond_a

    .line 367
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v9, v0, v3}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v12

    .line 366
    .end local v12    # "original":Ljava/lang/reflect/ParameterizedType;
    :cond_a
    return-object v12

    .line 370
    .end local v3    # "args":[Ljava/lang/reflect/Type;
    .end local v4    # "changed":Z
    .end local v6    # "length":I
    .end local v9    # "newOwnerType":Ljava/lang/reflect/Type;
    .end local v16    # "ownerType":Ljava/lang/reflect/Type;
    .end local v18    # "t":I
    :cond_b
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    move/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v13, p2

    .line 371
    check-cast v13, Ljava/lang/reflect/WildcardType;

    .line 372
    .local v13, "original":Ljava/lang/reflect/WildcardType;
    invoke-interface {v13}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v14

    .line 373
    .local v14, "originalLowerBound":[Ljava/lang/reflect/Type;
    invoke-interface {v13}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v15

    .line 375
    .local v15, "originalUpperBound":[Ljava/lang/reflect/Type;
    array-length v0, v14

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 376
    const/16 v21, 0x0

    aget-object v21, v14, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 377
    .local v7, "lowerBound":Ljava/lang/reflect/Type;
    const/16 v21, 0x0

    aget-object v21, v14, v21

    move-object/from16 v0, v21

    if-eq v7, v0, :cond_d

    .line 378
    invoke-static {v7}, Lcom/google/gson/internal/$Gson$Types;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v21

    return-object v21

    .line 380
    .end local v7    # "lowerBound":Ljava/lang/reflect/Type;
    :cond_c
    array-length v0, v15

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 381
    const/16 v21, 0x0

    aget-object v21, v15, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v20

    .line 382
    .local v20, "upperBound":Ljava/lang/reflect/Type;
    const/16 v21, 0x0

    aget-object v21, v15, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_d

    .line 383
    invoke-static/range {v20 .. v20}, Lcom/google/gson/internal/$Gson$Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v21

    return-object v21

    .line 386
    .end local v20    # "upperBound":Ljava/lang/reflect/Type;
    :cond_d
    return-object v13

    .line 389
    .end local v13    # "original":Ljava/lang/reflect/WildcardType;
    .end local v14    # "originalLowerBound":[Ljava/lang/reflect/Type;
    .end local v15    # "originalUpperBound":[Ljava/lang/reflect/Type;
    :cond_e
    return-object p2
.end method

.method static resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 4
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "unknown":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v1

    .line 398
    .local v1, "declaredByRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 399
    return-object p2

    .line 402
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 403
    .local v0, "declaredBy":Ljava/lang/reflect/Type;
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 404
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/google/gson/internal/$Gson$Types;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 405
    .local v2, "index":I
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "declaredBy":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v2

    return-object v3

    .line 408
    .end local v2    # "index":I
    .restart local v0    # "declaredBy":Ljava/lang/reflect/Type;
    :cond_1
    return-object p2
.end method

.method public static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 3
    .param p0, "bound"    # Ljava/lang/reflect/Type;

    .prologue
    .line 76
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    invoke-direct {v0, v1, v2}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 5
    .param p0, "bound"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    new-array v1, v4, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/reflect/Type;

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 218
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
