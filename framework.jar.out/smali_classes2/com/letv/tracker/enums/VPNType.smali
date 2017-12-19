.class public final enum Lcom/letv/tracker/enums/VPNType;
.super Ljava/lang/Enum;
.source "VPNType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/VPNType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/VPNType;

.field public static final enum IpSec:Lcom/letv/tracker/enums/VPNType;

.field public static final enum L2TP:Lcom/letv/tracker/enums/VPNType;

.field public static final enum Other:Lcom/letv/tracker/enums/VPNType;

.field public static final enum PPTP:Lcom/letv/tracker/enums/VPNType;

.field public static final enum SSLVPN:Lcom/letv/tracker/enums/VPNType;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/letv/tracker/enums/VPNType;

    const-string/jumbo v1, "PPTP"

    const-string/jumbo v2, "pptp"

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/tracker/enums/VPNType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/VPNType;->PPTP:Lcom/letv/tracker/enums/VPNType;

    .line 5
    new-instance v0, Lcom/letv/tracker/enums/VPNType;

    const-string/jumbo v1, "L2TP"

    const-string/jumbo v2, "l2tp"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/VPNType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/VPNType;->L2TP:Lcom/letv/tracker/enums/VPNType;

    .line 6
    new-instance v0, Lcom/letv/tracker/enums/VPNType;

    const-string/jumbo v1, "IpSec"

    const-string/jumbo v2, "ipsec"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/VPNType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/VPNType;->IpSec:Lcom/letv/tracker/enums/VPNType;

    .line 7
    new-instance v0, Lcom/letv/tracker/enums/VPNType;

    const-string/jumbo v1, "SSLVPN"

    const-string/jumbo v2, "sslvpn"

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/tracker/enums/VPNType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/VPNType;->SSLVPN:Lcom/letv/tracker/enums/VPNType;

    .line 8
    new-instance v0, Lcom/letv/tracker/enums/VPNType;

    const-string/jumbo v1, "Other"

    const-string/jumbo v2, "other"

    invoke-direct {v0, v1, v7, v2}, Lcom/letv/tracker/enums/VPNType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/VPNType;->Other:Lcom/letv/tracker/enums/VPNType;

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Lcom/letv/tracker/enums/VPNType;

    sget-object v1, Lcom/letv/tracker/enums/VPNType;->PPTP:Lcom/letv/tracker/enums/VPNType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/tracker/enums/VPNType;->L2TP:Lcom/letv/tracker/enums/VPNType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/VPNType;->IpSec:Lcom/letv/tracker/enums/VPNType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/enums/VPNType;->SSLVPN:Lcom/letv/tracker/enums/VPNType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/tracker/enums/VPNType;->Other:Lcom/letv/tracker/enums/VPNType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/letv/tracker/enums/VPNType;->$VALUES:[Lcom/letv/tracker/enums/VPNType;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/letv/tracker/enums/VPNType;->id:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/VPNType;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/enums/VPNType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/VPNType;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/VPNType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/letv/tracker/enums/VPNType;->$VALUES:[Lcom/letv/tracker/enums/VPNType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/VPNType;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/letv/tracker/enums/VPNType;->id:Ljava/lang/String;

    return-object v0
.end method
