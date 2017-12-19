.class public final enum Lcom/letv/domain/Service;
.super Ljava/lang/Enum;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/domain/Service;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/domain/Service;

.field public static final enum ACCOUNT:Lcom/letv/domain/Service;

.field public static final enum APIZHIFU:Lcom/letv/domain/Service;

.field public static final enum BROWSER:Lcom/letv/domain/Service;

.field public static final enum CALENDAR:Lcom/letv/domain/Service;

.field public static final enum CONTROL:Lcom/letv/domain/Service;

.field public static final enum DEVICE:Lcom/letv/domain/Service;

.field public static final enum ITV:Lcom/letv/domain/Service;

.field public static final enum LOCK:Lcom/letv/domain/Service;

.field public static final enum MUSIC:Lcom/letv/domain/Service;

.field public static final enum OTA:Lcom/letv/domain/Service;

.field public static final enum PAY:Lcom/letv/domain/Service;

.field public static final enum PUSH:Lcom/letv/domain/Service;

.field public static final enum REMOTE:Lcom/letv/domain/Service;

.field public static final enum SYNC:Lcom/letv/domain/Service;

.field public static final enum USERCENTER:Lcom/letv/domain/Service;

.field public static final enum WALLPAPER:Lcom/letv/domain/Service;

.field public static final enum XFEEDBACK:Lcom/letv/domain/Service;

.field public static final enum XPAGE:Lcom/letv/domain/Service;

.field public static final enum XSQUARE:Lcom/letv/domain/Service;

.field public static final enum YUANXIAN:Lcom/letv/domain/Service;

.field public static final enum ZHIFU:Lcom/letv/domain/Service;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "ACCOUNT"

    const-string/jumbo v2, "account"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->ACCOUNT:Lcom/letv/domain/Service;

    .line 9
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "ITV"

    const-string/jumbo v2, "itv"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->ITV:Lcom/letv/domain/Service;

    .line 10
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "DEVICE"

    const-string/jumbo v2, "device"

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->DEVICE:Lcom/letv/domain/Service;

    .line 11
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "APIZHIFU"

    const-string/jumbo v2, "apizhifu"

    invoke-direct {v0, v1, v7, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->APIZHIFU:Lcom/letv/domain/Service;

    .line 12
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "ZHIFU"

    const-string/jumbo v2, "zhifu"

    invoke-direct {v0, v1, v8, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->ZHIFU:Lcom/letv/domain/Service;

    .line 13
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "YUANXIAN"

    const-string/jumbo v2, "yuanxian"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->YUANXIAN:Lcom/letv/domain/Service;

    .line 14
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "USERCENTER"

    const-string/jumbo v2, "usercenter"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->USERCENTER:Lcom/letv/domain/Service;

    .line 15
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "LOCK"

    const-string/jumbo v2, "lock"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->LOCK:Lcom/letv/domain/Service;

    .line 16
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "BROWSER"

    const-string/jumbo v2, "browser"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->BROWSER:Lcom/letv/domain/Service;

    .line 17
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "CALENDAR"

    const-string/jumbo v2, "calendar"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->CALENDAR:Lcom/letv/domain/Service;

    .line 18
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "XSQUARE"

    const-string/jumbo v2, "xsquare"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->XSQUARE:Lcom/letv/domain/Service;

    .line 19
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "MUSIC"

    const-string/jumbo v2, "music"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->MUSIC:Lcom/letv/domain/Service;

    .line 20
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "PAY"

    const-string/jumbo v2, "pay"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->PAY:Lcom/letv/domain/Service;

    .line 21
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "OTA"

    const-string/jumbo v2, "ota"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->OTA:Lcom/letv/domain/Service;

    .line 22
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "XFEEDBACK"

    const-string/jumbo v2, "xfeedback"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->XFEEDBACK:Lcom/letv/domain/Service;

    .line 23
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "XPAGE"

    const-string/jumbo v2, "xpage"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->XPAGE:Lcom/letv/domain/Service;

    .line 24
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "REMOTE"

    const-string/jumbo v2, "remote"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->REMOTE:Lcom/letv/domain/Service;

    .line 25
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "CONTROL"

    const-string/jumbo v2, "control"

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->CONTROL:Lcom/letv/domain/Service;

    .line 26
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "PUSH"

    const-string/jumbo v2, "push"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->PUSH:Lcom/letv/domain/Service;

    .line 27
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "SYNC"

    const-string/jumbo v2, "sync"

    const/16 v3, 0x13

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->SYNC:Lcom/letv/domain/Service;

    .line 28
    new-instance v0, Lcom/letv/domain/Service;

    const-string/jumbo v1, "WALLPAPER"

    const-string/jumbo v2, "wallpaper"

    const/16 v3, 0x14

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->WALLPAPER:Lcom/letv/domain/Service;

    .line 6
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/letv/domain/Service;

    sget-object v1, Lcom/letv/domain/Service;->ACCOUNT:Lcom/letv/domain/Service;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/domain/Service;->ITV:Lcom/letv/domain/Service;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/domain/Service;->DEVICE:Lcom/letv/domain/Service;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/domain/Service;->APIZHIFU:Lcom/letv/domain/Service;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/domain/Service;->ZHIFU:Lcom/letv/domain/Service;

    aput-object v1, v0, v8

    sget-object v1, Lcom/letv/domain/Service;->YUANXIAN:Lcom/letv/domain/Service;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/domain/Service;->USERCENTER:Lcom/letv/domain/Service;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/domain/Service;->LOCK:Lcom/letv/domain/Service;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/domain/Service;->BROWSER:Lcom/letv/domain/Service;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/domain/Service;->CALENDAR:Lcom/letv/domain/Service;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/domain/Service;->XSQUARE:Lcom/letv/domain/Service;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/domain/Service;->MUSIC:Lcom/letv/domain/Service;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/domain/Service;->PAY:Lcom/letv/domain/Service;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/domain/Service;->OTA:Lcom/letv/domain/Service;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/domain/Service;->XFEEDBACK:Lcom/letv/domain/Service;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/domain/Service;->XPAGE:Lcom/letv/domain/Service;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/domain/Service;->REMOTE:Lcom/letv/domain/Service;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/domain/Service;->CONTROL:Lcom/letv/domain/Service;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/domain/Service;->PUSH:Lcom/letv/domain/Service;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/domain/Service;->SYNC:Lcom/letv/domain/Service;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/domain/Service;->WALLPAPER:Lcom/letv/domain/Service;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/letv/domain/Service;->$VALUES:[Lcom/letv/domain/Service;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/letv/domain/Service;->type:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/domain/Service;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/letv/domain/Service;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/domain/Service;

    return-object v0
.end method

.method public static values()[Lcom/letv/domain/Service;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/letv/domain/Service;->$VALUES:[Lcom/letv/domain/Service;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/letv/domain/Service;->type:Ljava/lang/String;

    return-object v0
.end method
