.class public final Lcom/google/gson/JsonNull;
.super Lcom/google/gson/JsonElement;
.source "JsonNull.java"


# static fields
.field public static final INSTANCE:Lcom/google/gson/JsonNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/gson/JsonNull;

    invoke-direct {v0}, Lcom/google/gson/JsonNull;-><init>()V

    sput-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/gson/JsonNull;->deepCopy()Lcom/google/gson/JsonNull;

    move-result-object v0

    return-object v0
.end method

.method deepCopy()Lcom/google/gson/JsonNull;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 61
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/gson/JsonNull;

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/google/gson/JsonNull;

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method
