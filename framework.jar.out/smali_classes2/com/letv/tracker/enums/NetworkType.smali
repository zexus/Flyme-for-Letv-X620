.class public final enum Lcom/letv/tracker/enums/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/NetworkType;

.field public static final enum DHCP:Lcom/letv/tracker/enums/NetworkType;

.field public static final enum Other:Lcom/letv/tracker/enums/NetworkType;

.field public static final enum PPPoE:Lcom/letv/tracker/enums/NetworkType;

.field public static final enum StaticIP:Lcom/letv/tracker/enums/NetworkType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/letv/tracker/enums/NetworkType;

    const-string/jumbo v1, "PPPoE"

    const-string/jumbo v2, "pppoe"

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/tracker/enums/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/NetworkType;->PPPoE:Lcom/letv/tracker/enums/NetworkType;

    .line 14
    new-instance v0, Lcom/letv/tracker/enums/NetworkType;

    const-string/jumbo v1, "DHCP"

    const-string/jumbo v2, "dhcp"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/NetworkType;->DHCP:Lcom/letv/tracker/enums/NetworkType;

    .line 18
    new-instance v0, Lcom/letv/tracker/enums/NetworkType;

    const-string/jumbo v1, "StaticIP"

    const-string/jumbo v2, "staticIp"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/NetworkType;->StaticIP:Lcom/letv/tracker/enums/NetworkType;

    .line 22
    new-instance v0, Lcom/letv/tracker/enums/NetworkType;

    const-string/jumbo v1, "Other"

    const-string/jumbo v2, "other"

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/tracker/enums/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/NetworkType;->Other:Lcom/letv/tracker/enums/NetworkType;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lcom/letv/tracker/enums/NetworkType;

    sget-object v1, Lcom/letv/tracker/enums/NetworkType;->PPPoE:Lcom/letv/tracker/enums/NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/tracker/enums/NetworkType;->DHCP:Lcom/letv/tracker/enums/NetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/NetworkType;->StaticIP:Lcom/letv/tracker/enums/NetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/enums/NetworkType;->Other:Lcom/letv/tracker/enums/NetworkType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/letv/tracker/enums/NetworkType;->$VALUES:[Lcom/letv/tracker/enums/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/letv/tracker/enums/NetworkType;->type:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/NetworkType;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/enums/NetworkType;

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/NetworkType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/letv/tracker/enums/NetworkType;->$VALUES:[Lcom/letv/tracker/enums/NetworkType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/NetworkType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/letv/tracker/enums/NetworkType;->type:Ljava/lang/String;

    return-object v0
.end method
