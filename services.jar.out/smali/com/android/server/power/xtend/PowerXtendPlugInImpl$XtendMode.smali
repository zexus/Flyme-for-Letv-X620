.class final enum Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;
.super Ljava/lang/Enum;
.source "PowerXtendPlugInImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/xtend/PowerXtendPlugInImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "XtendMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

.field public static final enum MODE1:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

.field public static final enum MODE2:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

.field public static final enum MODE3:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

.field public static final enum MODE4:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

.field public static final enum OFF:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

.field public static final enum UNKNOW:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;


# instance fields
.field mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    const-string/jumbo v1, "UNKNOW"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->UNKNOW:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    .line 49
    new-instance v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    const-string/jumbo v1, "OFF"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->OFF:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    .line 50
    new-instance v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    const-string/jumbo v1, "MODE1"

    invoke-direct {v0, v1, v5, v4}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->MODE1:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    new-instance v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    const-string/jumbo v1, "MODE2"

    invoke-direct {v0, v1, v6, v5}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;-><init>(Ljava/lang/String;II)V

    .line 51
    sput-object v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->MODE2:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    new-instance v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    const-string/jumbo v1, "MODE3"

    invoke-direct {v0, v1, v7, v6}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;-><init>(Ljava/lang/String;II)V

    .line 52
    sput-object v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->MODE3:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    new-instance v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    const-string/jumbo v1, "MODE4"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v7}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;-><init>(Ljava/lang/String;II)V

    .line 53
    sput-object v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->MODE4:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    sget-object v1, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->UNKNOW:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->OFF:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->MODE1:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->MODE2:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->MODE3:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->MODE4:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->$VALUES:[Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "mode"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->mMode:I

    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->$VALUES:[Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    return-object v0
.end method


# virtual methods
.method value()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->mMode:I

    return v0
.end method
