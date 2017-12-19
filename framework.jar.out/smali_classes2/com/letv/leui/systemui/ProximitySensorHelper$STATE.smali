.class final enum Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;
.super Ljava/lang/Enum;
.source "ProximitySensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/systemui/ProximitySensorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

.field public static final enum COVERED:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

.field public static final enum LISTENING:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

.field public static final enum NONE:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

.field public static final enum RELEASE:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

.field public static final enum STANDBY:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

.field public static final enum TIME_OUT:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->NONE:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    .line 24
    new-instance v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    const-string/jumbo v1, "STANDBY"

    invoke-direct {v0, v1, v4}, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->STANDBY:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    .line 25
    new-instance v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    const-string/jumbo v1, "LISTENING"

    invoke-direct {v0, v1, v5}, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->LISTENING:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    .line 26
    new-instance v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    const-string/jumbo v1, "COVERED"

    invoke-direct {v0, v1, v6}, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->COVERED:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    .line 27
    new-instance v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    const-string/jumbo v1, "RELEASE"

    invoke-direct {v0, v1, v7}, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->RELEASE:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    .line 28
    new-instance v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    const-string/jumbo v1, "TIME_OUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->TIME_OUT:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    sget-object v1, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->NONE:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->STANDBY:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->LISTENING:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->COVERED:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->RELEASE:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->TIME_OUT:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->$VALUES:[Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->$VALUES:[Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    return-object v0
.end method
