.class final enum Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;
.super Ljava/lang/Enum;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StateOfVibratorAboutPhone"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

.field public static final enum IDLE:Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

.field public static final enum OFFHOOK:Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

.field public static final enum RINGING:Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 851
    new-instance v0, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;->IDLE:Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    new-instance v0, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    const-string/jumbo v1, "RINGING"

    invoke-direct {v0, v1, v3}, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;->RINGING:Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    new-instance v0, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    const-string/jumbo v1, "OFFHOOK"

    invoke-direct {v0, v1, v4}, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;->OFFHOOK:Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    .line 850
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    sget-object v1, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;->IDLE:Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;->RINGING:Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;->OFFHOOK:Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;->$VALUES:[Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 850
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 850
    const-class v0, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    return-object v0
.end method

.method public static values()[Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;
    .locals 1

    .prologue
    .line 850
    sget-object v0, Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;->$VALUES:[Lcom/android/server/VibratorService$StateOfVibratorAboutPhone;

    return-object v0
.end method
