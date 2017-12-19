.class public final enum Lcom/letv/tracker/enums/AppType;
.super Ljava/lang/Enum;
.source "AppType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/AppType;

.field public static final enum BaiduInput:Lcom/letv/tracker/enums/AppType;

.field public static final enum ChaoJiZhiBo:Lcom/letv/tracker/enums/AppType;

.field public static final enum Dianshijia:Lcom/letv/tracker/enums/AppType;

.field public static final enum IfaceBrowser:Lcom/letv/tracker/enums/AppType;

.field public static final enum LEHAI:Lcom/letv/tracker/enums/AppType;

.field public static final enum LePhoneDLNA:Lcom/letv/tracker/enums/AppType;

.field public static final enum LePlay:Lcom/letv/tracker/enums/AppType;

.field public static final enum LeSearch:Lcom/letv/tracker/enums/AppType;

.field public static final enum LeShop:Lcom/letv/tracker/enums/AppType;

.field public static final enum LeShot:Lcom/letv/tracker/enums/AppType;

.field public static final enum LeSportsTV:Lcom/letv/tracker/enums/AppType;

.field public static final enum LeTing:Lcom/letv/tracker/enums/AppType;

.field public static final enum LeTvStore:Lcom/letv/tracker/enums/AppType;

.field public static final enum Lemall:Lcom/letv/tracker/enums/AppType;

.field public static final enum Lesports:Lcom/letv/tracker/enums/AppType;

.field public static final enum LesportsUltimateed:Lcom/letv/tracker/enums/AppType;

.field public static final enum Letv:Lcom/letv/tracker/enums/AppType;

.field public static final enum LetvDpkk:Lcom/letv/tracker/enums/AppType;

.field public static final enum LetvGameSDK:Lcom/letv/tracker/enums/AppType;

.field public static final enum LetvTvControl:Lcom/letv/tracker/enums/AppType;

.field public static final enum LetvUltimate:Lcom/letv/tracker/enums/AppType;

.field public static final enum SuperVideo:Lcom/letv/tracker/enums/AppType;

.field public static final enum UnicomClient:Lcom/letv/tracker/enums/AppType;

.field public static final enum WPS:Lcom/letv/tracker/enums/AppType;

.field public static final enum WPSOffice:Lcom/letv/tracker/enums/AppType;

.field public static final enum Weibo:Lcom/letv/tracker/enums/AppType;

.field public static final enum WhatsLIVE:Lcom/letv/tracker/enums/AppType;

.field public static final enum Wo116114:Lcom/letv/tracker/enums/AppType;

.field public static final enum WoStore:Lcom/letv/tracker/enums/AppType;

.field public static final enum WoUnicom:Lcom/letv/tracker/enums/AppType;

.field public static final enum ZhuoMian:Lcom/letv/tracker/enums/AppType;


# instance fields
.field private appId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "LeShop"

    const-string/jumbo v2, "LeShop"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->LeShop:Lcom/letv/tracker/enums/AppType;

    .line 8
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "LetvUltimate"

    const-string/jumbo v2, "LetvUltimateed"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->LetvUltimate:Lcom/letv/tracker/enums/AppType;

    .line 9
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "LePhoneDLNA"

    const-string/jumbo v2, "LePhoneDLNA"

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->LePhoneDLNA:Lcom/letv/tracker/enums/AppType;

    .line 10
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "Weibo"

    const-string/jumbo v2, "Weibo"

    invoke-direct {v0, v1, v7, v2}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->Weibo:Lcom/letv/tracker/enums/AppType;

    .line 11
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "WPS"

    const-string/jumbo v2, "WPS"

    invoke-direct {v0, v1, v8, v2}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->WPS:Lcom/letv/tracker/enums/AppType;

    .line 12
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "WPSOffice"

    const/4 v2, 0x5

    const-string/jumbo v3, "WPSOffice"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->WPSOffice:Lcom/letv/tracker/enums/AppType;

    .line 13
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "Letv"

    const/4 v2, 0x6

    const-string/jumbo v3, "Letv"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->Letv:Lcom/letv/tracker/enums/AppType;

    .line 14
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "LeShot"

    const/4 v2, 0x7

    const-string/jumbo v3, "LeShot"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->LeShot:Lcom/letv/tracker/enums/AppType;

    .line 15
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "BaiduInput"

    const/16 v2, 0x8

    const-string/jumbo v3, "BaiduInput"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->BaiduInput:Lcom/letv/tracker/enums/AppType;

    .line 16
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "LeSearch"

    const/16 v2, 0x9

    const-string/jumbo v3, "LeSearch"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->LeSearch:Lcom/letv/tracker/enums/AppType;

    .line 17
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "WoUnicom"

    const/16 v2, 0xa

    const-string/jumbo v3, "UnicomWo"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->WoUnicom:Lcom/letv/tracker/enums/AppType;

    .line 18
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "WoStore"

    const/16 v2, 0xb

    const-string/jumbo v3, "WoStore"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->WoStore:Lcom/letv/tracker/enums/AppType;

    .line 19
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "UnicomClient"

    const/16 v2, 0xc

    const-string/jumbo v3, "UnicomClient"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->UnicomClient:Lcom/letv/tracker/enums/AppType;

    .line 20
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "Wo116114"

    const/16 v2, 0xd

    const-string/jumbo v3, "Wo116114"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->Wo116114:Lcom/letv/tracker/enums/AppType;

    .line 21
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "ZhuoMian"

    const/16 v2, 0xe

    const-string/jumbo v3, "ZhuoMian"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->ZhuoMian:Lcom/letv/tracker/enums/AppType;

    .line 22
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "ChaoJiZhiBo"

    const/16 v2, 0xf

    const-string/jumbo v3, "ChaoJiZhiBo"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->ChaoJiZhiBo:Lcom/letv/tracker/enums/AppType;

    .line 23
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "WhatsLIVE"

    const/16 v2, 0x10

    const-string/jumbo v3, "WhatsLIVE"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->WhatsLIVE:Lcom/letv/tracker/enums/AppType;

    .line 24
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "LEHAI"

    const/16 v2, 0x11

    const-string/jumbo v3, "LEHAI"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->LEHAI:Lcom/letv/tracker/enums/AppType;

    .line 25
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "LeTing"

    const/16 v2, 0x12

    const-string/jumbo v3, "LeTing"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->LeTing:Lcom/letv/tracker/enums/AppType;

    .line 26
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "Lesports"

    const/16 v2, 0x13

    const-string/jumbo v3, "Lesports"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->Lesports:Lcom/letv/tracker/enums/AppType;

    .line 27
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "LePlay"

    const/16 v2, 0x14

    const-string/jumbo v3, "LePlay"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->LePlay:Lcom/letv/tracker/enums/AppType;

    .line 28
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "LeSportsTV"

    const/16 v2, 0x15

    const-string/jumbo v3, "LeSportsTV"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->LeSportsTV:Lcom/letv/tracker/enums/AppType;

    .line 29
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "LetvDpkk"

    const/16 v2, 0x16

    const-string/jumbo v3, "LetvDpkk"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->LetvDpkk:Lcom/letv/tracker/enums/AppType;

    .line 30
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "LetvTvControl"

    const/16 v2, 0x17

    const-string/jumbo v3, "LetvTvControl"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->LetvTvControl:Lcom/letv/tracker/enums/AppType;

    .line 31
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "LetvGameSDK"

    const/16 v2, 0x18

    const-string/jumbo v3, "LetvGameSDK"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->LetvGameSDK:Lcom/letv/tracker/enums/AppType;

    .line 32
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "SuperVideo"

    const/16 v2, 0x19

    const-string/jumbo v3, "SuperVideo"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->SuperVideo:Lcom/letv/tracker/enums/AppType;

    .line 33
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "IfaceBrowser"

    const/16 v2, 0x1a

    const-string/jumbo v3, "IfaceBrowser"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->IfaceBrowser:Lcom/letv/tracker/enums/AppType;

    .line 34
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "Dianshijia"

    const/16 v2, 0x1b

    const-string/jumbo v3, "Dianshijia"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->Dianshijia:Lcom/letv/tracker/enums/AppType;

    .line 35
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "LeTvStore"

    const/16 v2, 0x1c

    const-string/jumbo v3, "LeTvStore"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->LeTvStore:Lcom/letv/tracker/enums/AppType;

    .line 36
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "LesportsUltimateed"

    const/16 v2, 0x1d

    const-string/jumbo v3, "LesportsUltimateed"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->LesportsUltimateed:Lcom/letv/tracker/enums/AppType;

    .line 37
    new-instance v0, Lcom/letv/tracker/enums/AppType;

    const-string/jumbo v1, "Lemall"

    const/16 v2, 0x1e

    const-string/jumbo v3, "Lemall-android"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppType;->Lemall:Lcom/letv/tracker/enums/AppType;

    const/16 v0, 0x1f

    .line 6
    new-array v0, v0, [Lcom/letv/tracker/enums/AppType;

    sget-object v1, Lcom/letv/tracker/enums/AppType;->LeShop:Lcom/letv/tracker/enums/AppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/AppType;->LetvUltimate:Lcom/letv/tracker/enums/AppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/enums/AppType;->LePhoneDLNA:Lcom/letv/tracker/enums/AppType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/tracker/enums/AppType;->Weibo:Lcom/letv/tracker/enums/AppType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/tracker/enums/AppType;->WPS:Lcom/letv/tracker/enums/AppType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/letv/tracker/enums/AppType;->WPSOffice:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/letv/tracker/enums/AppType;->Letv:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/letv/tracker/enums/AppType;->LeShot:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/letv/tracker/enums/AppType;->BaiduInput:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/letv/tracker/enums/AppType;->LeSearch:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/letv/tracker/enums/AppType;->WoUnicom:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/letv/tracker/enums/AppType;->WoStore:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/letv/tracker/enums/AppType;->UnicomClient:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/letv/tracker/enums/AppType;->Wo116114:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/letv/tracker/enums/AppType;->ZhuoMian:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/letv/tracker/enums/AppType;->ChaoJiZhiBo:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/letv/tracker/enums/AppType;->WhatsLIVE:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/letv/tracker/enums/AppType;->LEHAI:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/letv/tracker/enums/AppType;->LeTing:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/letv/tracker/enums/AppType;->Lesports:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/letv/tracker/enums/AppType;->LePlay:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/letv/tracker/enums/AppType;->LeSportsTV:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/letv/tracker/enums/AppType;->LetvDpkk:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/letv/tracker/enums/AppType;->LetvTvControl:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/letv/tracker/enums/AppType;->LetvGameSDK:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/letv/tracker/enums/AppType;->SuperVideo:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/letv/tracker/enums/AppType;->IfaceBrowser:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/letv/tracker/enums/AppType;->Dianshijia:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/letv/tracker/enums/AppType;->LeTvStore:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/letv/tracker/enums/AppType;->LesportsUltimateed:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/letv/tracker/enums/AppType;->Lemall:Lcom/letv/tracker/enums/AppType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/letv/tracker/enums/AppType;->$VALUES:[Lcom/letv/tracker/enums/AppType;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/letv/tracker/enums/AppType;->appId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static isExsited(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-static {}, Lcom/letv/tracker/enums/AppType;->values()[Lcom/letv/tracker/enums/AppType;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 74
    return v1

    .line 69
    :cond_0
    aget-object v4, v2, v0

    .line 70
    invoke-virtual {v4}, Lcom/letv/tracker/enums/AppType;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/AppType;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/enums/AppType;

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/AppType;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/AppType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/letv/tracker/enums/AppType;->$VALUES:[Lcom/letv/tracker/enums/AppType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/AppType;

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/letv/tracker/enums/AppType;->appId:Ljava/lang/String;

    return-object v0
.end method
