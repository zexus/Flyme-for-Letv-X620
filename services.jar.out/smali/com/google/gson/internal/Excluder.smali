.class public final Lcom/google/gson/internal/Excluder;
.super Ljava/lang/Object;
.source "Excluder.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/google/gson/internal/Excluder;

.field private static final IGNORE_VERSIONS:D = -1.0


# instance fields
.field private deserializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private modifiers:I

.field private requireExpose:Z

.field private serializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private serializeInnerClasses:Z

.field private version:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/gson/internal/Excluder;

    invoke-direct {v0}, Lcom/google/gson/internal/Excluder;-><init>()V

    sput-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/gson/internal/Excluder;->version:D

    .line 55
    const/16 v0, 0x88

    iput v0, p0, Lcom/google/gson/internal/Excluder;->modifiers:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 50
    return-void
.end method

.method private isAnonymousOrLocal(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    .line 216
    :goto_0
    return v0

    .line 217
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInnerClass(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 221
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isStatic(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isStatic(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 225
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isValidSince(Lcom/google/gson/annotations/Since;)Z
    .locals 4
    .param p1, "annotation"    # Lcom/google/gson/annotations/Since;

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-interface {p1}, Lcom/google/gson/annotations/Since;->value()D

    move-result-wide v0

    .line 235
    .local v0, "annotationVersion":D
    iget-wide v2, p0, Lcom/google/gson/internal/Excluder;->version:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 236
    const/4 v2, 0x0

    return v2

    .line 239
    .end local v0    # "annotationVersion":D
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private isValidUntil(Lcom/google/gson/annotations/Until;)Z
    .locals 4
    .param p1, "annotation"    # Lcom/google/gson/annotations/Until;

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    invoke-interface {p1}, Lcom/google/gson/annotations/Until;->value()D

    move-result-wide v0

    .line 245
    .local v0, "annotationVersion":D
    iget-wide v2, p0, Lcom/google/gson/internal/Excluder;->version:D

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 246
    const/4 v2, 0x0

    return v2

    .line 249
    .end local v0    # "annotationVersion":D
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z
    .locals 1
    .param p1, "since"    # Lcom/google/gson/annotations/Since;
    .param p2, "until"    # Lcom/google/gson/annotations/Until;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isValidSince(Lcom/google/gson/annotations/Since;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/gson/internal/Excluder;->isValidUntil(Lcom/google/gson/annotations/Until;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected clone()Lcom/google/gson/internal/Excluder;
    .locals 2

    .prologue
    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/internal/Excluder;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 7
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v6

    .line 113
    .local v6, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v6, v0}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v3

    .line 114
    .local v3, "skipSerialize":Z
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v2

    .line 116
    .local v2, "skipDeserialize":Z
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 120
    :cond_0
    new-instance v0, Lcom/google/gson/internal/Excluder$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/gson/internal/Excluder$1;-><init>(Lcom/google/gson/internal/Excluder;ZZLcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)V

    return-object v0

    .line 117
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public disableInnerClassSerialization()Lcom/google/gson/internal/Excluder;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    .line 86
    .local v0, "result":Lcom/google/gson/internal/Excluder;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    .line 87
    return-object v0
.end method

.method public excludeClass(Ljava/lang/Class;Z)Z
    .locals 9
    .param p2, "serialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    .line 192
    iget-wide v4, p0, Lcom/google/gson/internal/Excluder;->version:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    .line 193
    const-class v3, Lcom/google/gson/annotations/Since;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/google/gson/annotations/Since;

    const-class v4, Lcom/google/gson/annotations/Until;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/google/gson/annotations/Until;

    invoke-direct {p0, v3, v4}, Lcom/google/gson/internal/Excluder;->isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    :cond_0
    iget-boolean v3, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    return v8

    .line 194
    :cond_1
    return v8

    .line 201
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    return v8

    .line 205
    :cond_3
    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 206
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    :goto_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "exclusionStrategy$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/ExclusionStrategy;

    .line 207
    .local v0, "exclusionStrategy":Lcom/google/gson/ExclusionStrategy;
    invoke-interface {v0, p1}, Lcom/google/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 208
    return v8

    .line 205
    .end local v0    # "exclusionStrategy":Lcom/google/gson/ExclusionStrategy;
    .end local v1    # "exclusionStrategy$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    :cond_5
    iget-object v2, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    goto :goto_0

    .line 212
    .restart local v1    # "exclusionStrategy$iterator":Ljava/util/Iterator;
    :cond_6
    const/4 v3, 0x0

    return v3
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 12
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "serialize"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 150
    iget v5, p0, Lcom/google/gson/internal/Excluder;->modifiers:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 151
    return v10

    .line 154
    :cond_0
    iget-wide v6, p0, Lcom/google/gson/internal/Excluder;->version:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v5, v6, v8

    if-eqz v5, :cond_1

    .line 155
    const-class v5, Lcom/google/gson/annotations/Since;

    invoke-virtual {p1, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/google/gson/annotations/Since;

    const-class v6, Lcom/google/gson/annotations/Until;

    invoke-virtual {p1, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/google/gson/annotations/Until;

    invoke-direct {p0, v5, v6}, Lcom/google/gson/internal/Excluder;->isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 160
    return v10

    .line 156
    :cond_2
    return v10

    .line 163
    :cond_3
    iget-boolean v5, p0, Lcom/google/gson/internal/Excluder;->requireExpose:Z

    if-eqz v5, :cond_4

    .line 164
    const-class v5, Lcom/google/gson/annotations/Expose;

    invoke-virtual {p1, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/Expose;

    .line 165
    .local v0, "annotation":Lcom/google/gson/annotations/Expose;
    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    invoke-interface {v0}, Lcom/google/gson/annotations/Expose;->serialize()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 170
    .end local v0    # "annotation":Lcom/google/gson/annotations/Expose;
    :cond_4
    iget-boolean v5, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    if-nez v5, :cond_7

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/gson/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 171
    return v10

    .line 165
    .restart local v0    # "annotation":Lcom/google/gson/annotations/Expose;
    :cond_5
    invoke-interface {v0}, Lcom/google/gson/annotations/Expose;->deserialize()Z

    move-result v5

    if-nez v5, :cond_4

    .line 166
    :cond_6
    return v10

    .line 174
    .end local v0    # "annotation":Lcom/google/gson/annotations/Expose;
    :cond_7
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/gson/internal/Excluder;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 175
    return v10

    .line 178
    :cond_8
    if-eqz p2, :cond_a

    iget-object v4, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 179
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 180
    new-instance v3, Lcom/google/gson/FieldAttributes;

    invoke-direct {v3, p1}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/reflect/Field;)V

    .line 181
    .local v3, "fieldAttributes":Lcom/google/gson/FieldAttributes;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "exclusionStrategy$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/ExclusionStrategy;

    .line 182
    .local v1, "exclusionStrategy":Lcom/google/gson/ExclusionStrategy;
    invoke-interface {v1, v3}, Lcom/google/gson/ExclusionStrategy;->shouldSkipField(Lcom/google/gson/FieldAttributes;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 183
    return v10

    .line 178
    .end local v1    # "exclusionStrategy":Lcom/google/gson/ExclusionStrategy;
    .end local v2    # "exclusionStrategy$iterator":Ljava/util/Iterator;
    .end local v3    # "fieldAttributes":Lcom/google/gson/FieldAttributes;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    :cond_a
    iget-object v4, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    goto :goto_0

    .line 188
    :cond_b
    return v11
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/internal/Excluder;
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    .line 92
    .local v0, "result":Lcom/google/gson/internal/Excluder;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/gson/internal/Excluder;->requireExpose:Z

    .line 93
    return-object v0
.end method

.method public withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;
    .locals 3
    .param p1, "exclusionStrategy"    # Lcom/google/gson/ExclusionStrategy;
    .param p2, "serialization"    # Z
    .param p3, "deserialization"    # Z

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    .line 99
    .local v0, "result":Lcom/google/gson/internal/Excluder;
    if-eqz p2, :cond_0

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 101
    iget-object v1, v0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    if-eqz p3, :cond_1

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    iput-object v1, v0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 106
    iget-object v1, v0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    return-object v0
.end method

.method public varargs withModifiers([I)Lcom/google/gson/internal/Excluder;
    .locals 5
    .param p1, "modifiers"    # [I

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v1

    .line 77
    .local v1, "result":Lcom/google/gson/internal/Excluder;
    iput v2, v1, Lcom/google/gson/internal/Excluder;->modifiers:I

    .line 78
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p1, v2

    .line 79
    .local v0, "modifier":I
    iget v4, v1, Lcom/google/gson/internal/Excluder;->modifiers:I

    or-int/2addr v4, v0

    iput v4, v1, Lcom/google/gson/internal/Excluder;->modifiers:I

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "modifier":I
    :cond_0
    return-object v1
.end method

.method public withVersion(D)Lcom/google/gson/internal/Excluder;
    .locals 1
    .param p1, "ignoreVersionsAfter"    # D

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    .line 71
    .local v0, "result":Lcom/google/gson/internal/Excluder;
    iput-wide p1, v0, Lcom/google/gson/internal/Excluder;->version:D

    .line 72
    return-object v0
.end method
