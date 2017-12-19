.class final enum Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;
.super Ljava/lang/Enum;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StateOfPowerAboutPhone"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

.field public static final enum READY:Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

.field public static final enum SILENTRING:Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7818
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

    const-string/jumbo v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;->READY:Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

    const-string/jumbo v1, "SILENTRING"

    invoke-direct {v0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;->SILENTRING:Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

    .line 7817
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;->READY:Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;->SILENTRING:Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;->$VALUES:[Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7817
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7817
    const-class v0, Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

    return-object v0
.end method

.method public static values()[Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;
    .locals 1

    .prologue
    .line 7817
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;->$VALUES:[Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

    return-object v0
.end method
