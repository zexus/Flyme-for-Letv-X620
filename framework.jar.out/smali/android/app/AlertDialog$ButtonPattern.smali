.class public final enum Landroid/app/AlertDialog$ButtonPattern;
.super Ljava/lang/Enum;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonPattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/AlertDialog$ButtonPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/AlertDialog$ButtonPattern;

.field public static final enum EXPECTATION:Landroid/app/AlertDialog$ButtonPattern;

.field public static final enum NORMAL:Landroid/app/AlertDialog$ButtonPattern;

.field public static final enum WARNING:Landroid/app/AlertDialog$ButtonPattern;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Landroid/app/AlertDialog$ButtonPattern;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$ButtonPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/AlertDialog$ButtonPattern;->NORMAL:Landroid/app/AlertDialog$ButtonPattern;

    new-instance v0, Landroid/app/AlertDialog$ButtonPattern;

    const-string/jumbo v1, "EXPECTATION"

    invoke-direct {v0, v1, v3}, Landroid/app/AlertDialog$ButtonPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/AlertDialog$ButtonPattern;->EXPECTATION:Landroid/app/AlertDialog$ButtonPattern;

    new-instance v0, Landroid/app/AlertDialog$ButtonPattern;

    const-string/jumbo v1, "WARNING"

    invoke-direct {v0, v1, v4}, Landroid/app/AlertDialog$ButtonPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/AlertDialog$ButtonPattern;->WARNING:Landroid/app/AlertDialog$ButtonPattern;

    .line 131
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/app/AlertDialog$ButtonPattern;

    sget-object v1, Landroid/app/AlertDialog$ButtonPattern;->NORMAL:Landroid/app/AlertDialog$ButtonPattern;

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/AlertDialog$ButtonPattern;->EXPECTATION:Landroid/app/AlertDialog$ButtonPattern;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/AlertDialog$ButtonPattern;->WARNING:Landroid/app/AlertDialog$ButtonPattern;

    aput-object v1, v0, v4

    sput-object v0, Landroid/app/AlertDialog$ButtonPattern;->$VALUES:[Landroid/app/AlertDialog$ButtonPattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/AlertDialog$ButtonPattern;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    const-class v0, Landroid/app/AlertDialog$ButtonPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog$ButtonPattern;

    return-object v0
.end method

.method public static values()[Landroid/app/AlertDialog$ButtonPattern;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Landroid/app/AlertDialog$ButtonPattern;->$VALUES:[Landroid/app/AlertDialog$ButtonPattern;

    return-object v0
.end method
