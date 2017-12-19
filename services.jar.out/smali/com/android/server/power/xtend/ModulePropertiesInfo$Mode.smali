.class public final enum Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;
.super Ljava/lang/Enum;
.source "ModulePropertiesInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/xtend/ModulePropertiesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

.field public static final enum AUTOMATIC_MODE:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

.field public static final enum MANUAL_MODE:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    const-string/jumbo v1, "AUTOMATIC_MODE"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->AUTOMATIC_MODE:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    .line 39
    new-instance v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    const-string/jumbo v1, "MANUAL_MODE"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->MANUAL_MODE:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    sget-object v1, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->AUTOMATIC_MODE:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->MANUAL_MODE:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->$VALUES:[Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->value:I

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->$VALUES:[Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->value:I

    return v0
.end method
