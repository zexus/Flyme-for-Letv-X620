.class public final enum Lcom/android/server/power/xtend/ModulePropertiesInfo$State;
.super Ljava/lang/Enum;
.source "ModulePropertiesInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/xtend/ModulePropertiesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/power/xtend/ModulePropertiesInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

.field public static final enum HIGH_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

.field public static final enum NORMAL_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

.field public static final enum NO_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

.field public static final enum ULTRA_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    const-string/jumbo v1, "NO_SAVE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->NO_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    .line 54
    new-instance v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    const-string/jumbo v1, "NORMAL_SAVE"

    invoke-direct {v0, v1, v5, v3}, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->NORMAL_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    .line 55
    new-instance v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    const-string/jumbo v1, "HIGH_SAVE"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->HIGH_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    .line 56
    new-instance v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    const-string/jumbo v1, "ULTRA_SAVE"

    invoke-direct {v0, v1, v4, v6}, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->ULTRA_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    .line 52
    new-array v0, v6, [Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    sget-object v1, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->NO_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->NORMAL_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->HIGH_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->ULTRA_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->$VALUES:[Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->value:I

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/xtend/ModulePropertiesInfo$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    return-object v0
.end method

.method public static values()[Lcom/android/server/power/xtend/ModulePropertiesInfo$State;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->$VALUES:[Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->value:I

    return v0
.end method
