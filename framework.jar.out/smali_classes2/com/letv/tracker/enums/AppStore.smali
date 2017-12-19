.class public final enum Lcom/letv/tracker/enums/AppStore;
.super Ljava/lang/Enum;
.source "AppStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/AppStore;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/AppStore;

.field public static final enum Anzhi:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Anzhuoapk:Lcom/letv/tracker/enums/AppStore;

.field public static final enum AppMi:Lcom/letv/tracker/enums/AppStore;

.field public static final enum AppMy:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Appcenter:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Appchina:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Apper163:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Baidu:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Coolmart:Lcom/letv/tracker/enums/AppStore;

.field public static final enum GPlay:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Gfan:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Ggmark:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Hiapk:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Hicloud:Lcom/letv/tracker/enums/AppStore;

.field public static final enum LenovoMM:Lcom/letv/tracker/enums/AppStore;

.field public static final enum MarketEoe:Lcom/letv/tracker/enums/AppStore;

.field public static final enum MarketSogou:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Meizu:Lcom/letv/tracker/enums/AppStore;

.field public static final enum MobileMM:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Mumayi:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Nduoa:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Nearme:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Paojiao:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Samsung:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Sogoutools:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Store360:Lcom/letv/tracker/enums/AppStore;

.field public static final enum StoreHTC:Lcom/letv/tracker/enums/AppStore;

.field public static final enum StoreVivo:Lcom/letv/tracker/enums/AppStore;

.field public static final enum StoreWo:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Wandoujia:Lcom/letv/tracker/enums/AppStore;

.field public static final enum Zs91:Lcom/letv/tracker/enums/AppStore;


# instance fields
.field private storeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Store360"

    const-string/jumbo v2, "360"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Store360:Lcom/letv/tracker/enums/AppStore;

    .line 5
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Baidu"

    const-string/jumbo v2, "baidu"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Baidu:Lcom/letv/tracker/enums/AppStore;

    .line 6
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Wandoujia"

    const-string/jumbo v2, "wandoujia"

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Wandoujia:Lcom/letv/tracker/enums/AppStore;

    .line 7
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Hiapk"

    const-string/jumbo v2, "AndroidMarket"

    invoke-direct {v0, v1, v7, v2}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Hiapk:Lcom/letv/tracker/enums/AppStore;

    .line 8
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Anzhi"

    const-string/jumbo v2, "anzhi"

    invoke-direct {v0, v1, v8, v2}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Anzhi:Lcom/letv/tracker/enums/AppStore;

    .line 9
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "GPlay"

    const/4 v2, 0x5

    const-string/jumbo v3, "googleplay"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->GPlay:Lcom/letv/tracker/enums/AppStore;

    .line 10
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Zs91"

    const/4 v2, 0x6

    const-string/jumbo v3, "91zhushou"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Zs91:Lcom/letv/tracker/enums/AppStore;

    .line 11
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "AppMi"

    const/4 v2, 0x7

    const-string/jumbo v3, "xiaomi"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->AppMi:Lcom/letv/tracker/enums/AppStore;

    .line 12
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "AppMy"

    const/16 v2, 0x8

    const-string/jumbo v3, "tencentyyb"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->AppMy:Lcom/letv/tracker/enums/AppStore;

    .line 13
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Appchina"

    const/16 v2, 0x9

    const-string/jumbo v3, "yingyonghui"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Appchina:Lcom/letv/tracker/enums/AppStore;

    .line 14
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Gfan"

    const/16 v2, 0xa

    const-string/jumbo v3, "jifeng"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Gfan:Lcom/letv/tracker/enums/AppStore;

    .line 15
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Nduoa"

    const/16 v2, 0xb

    const-string/jumbo v3, "Nduo"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Nduoa:Lcom/letv/tracker/enums/AppStore;

    .line 16
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "MobileMM"

    const/16 v2, 0xc

    const-string/jumbo v3, "mobileMM"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->MobileMM:Lcom/letv/tracker/enums/AppStore;

    .line 17
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "MarketEoe"

    const/16 v2, 0xd

    const-string/jumbo v3, "youyi"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->MarketEoe:Lcom/letv/tracker/enums/AppStore;

    .line 18
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "StoreWo"

    const/16 v2, 0xe

    const-string/jumbo v3, "woshangcheng"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->StoreWo:Lcom/letv/tracker/enums/AppStore;

    .line 19
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Ggmark"

    const/16 v2, 0xf

    const-string/jumbo v3, "3GAndroid"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Ggmark:Lcom/letv/tracker/enums/AppStore;

    .line 20
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Mumayi"

    const/16 v2, 0x10

    const-string/jumbo v3, "mumayi"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Mumayi:Lcom/letv/tracker/enums/AppStore;

    .line 21
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Apper163"

    const/16 v2, 0x11

    const-string/jumbo v3, "163App"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Apper163:Lcom/letv/tracker/enums/AppStore;

    .line 22
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "MarketSogou"

    const/16 v2, 0x12

    const-string/jumbo v3, "sogoumarket"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->MarketSogou:Lcom/letv/tracker/enums/AppStore;

    .line 23
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Sogoutools"

    const/16 v2, 0x13

    const-string/jumbo v3, "sogoutools"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Sogoutools:Lcom/letv/tracker/enums/AppStore;

    .line 24
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Paojiao"

    const/16 v2, 0x14

    const-string/jumbo v3, "paojiao"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Paojiao:Lcom/letv/tracker/enums/AppStore;

    .line 25
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Appcenter"

    const/16 v2, 0x15

    const-string/jumbo v3, "taobao"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Appcenter:Lcom/letv/tracker/enums/AppStore;

    .line 26
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "LenovoMM"

    const/16 v2, 0x16

    const-string/jumbo v3, "leStore"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->LenovoMM:Lcom/letv/tracker/enums/AppStore;

    .line 27
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Nearme"

    const/16 v2, 0x17

    const-string/jumbo v3, "nearme"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Nearme:Lcom/letv/tracker/enums/AppStore;

    .line 28
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Coolmart"

    const/16 v2, 0x18

    const-string/jumbo v3, "coolmart"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Coolmart:Lcom/letv/tracker/enums/AppStore;

    .line 29
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Anzhuoapk"

    const/16 v2, 0x19

    const-string/jumbo v3, "gioneestore"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Anzhuoapk:Lcom/letv/tracker/enums/AppStore;

    .line 30
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Hicloud"

    const/16 v2, 0x1a

    const-string/jumbo v3, "huawei"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Hicloud:Lcom/letv/tracker/enums/AppStore;

    .line 31
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Samsung"

    const/16 v2, 0x1b

    const-string/jumbo v3, "samsung"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Samsung:Lcom/letv/tracker/enums/AppStore;

    .line 32
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "Meizu"

    const/16 v2, 0x1c

    const-string/jumbo v3, "meizu"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->Meizu:Lcom/letv/tracker/enums/AppStore;

    .line 33
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "StoreVivo"

    const/16 v2, 0x1d

    const-string/jumbo v3, "vivo"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->StoreVivo:Lcom/letv/tracker/enums/AppStore;

    .line 34
    new-instance v0, Lcom/letv/tracker/enums/AppStore;

    const-string/jumbo v1, "StoreHTC"

    const/16 v2, 0x1e

    const-string/jumbo v3, "htcstore"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/AppStore;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->StoreHTC:Lcom/letv/tracker/enums/AppStore;

    const/16 v0, 0x1f

    .line 3
    new-array v0, v0, [Lcom/letv/tracker/enums/AppStore;

    sget-object v1, Lcom/letv/tracker/enums/AppStore;->Store360:Lcom/letv/tracker/enums/AppStore;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/AppStore;->Baidu:Lcom/letv/tracker/enums/AppStore;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/enums/AppStore;->Wandoujia:Lcom/letv/tracker/enums/AppStore;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/tracker/enums/AppStore;->Hiapk:Lcom/letv/tracker/enums/AppStore;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/tracker/enums/AppStore;->Anzhi:Lcom/letv/tracker/enums/AppStore;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->GPlay:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Zs91:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->AppMi:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->AppMy:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Appchina:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Gfan:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Nduoa:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->MobileMM:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->MarketEoe:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->StoreWo:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Ggmark:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Mumayi:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Apper163:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->MarketSogou:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Sogoutools:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Paojiao:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Appcenter:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->LenovoMM:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Nearme:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Coolmart:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Anzhuoapk:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Hicloud:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Samsung:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->Meizu:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->StoreVivo:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/letv/tracker/enums/AppStore;->StoreHTC:Lcom/letv/tracker/enums/AppStore;

    aput-object v2, v0, v1

    sput-object v0, Lcom/letv/tracker/enums/AppStore;->$VALUES:[Lcom/letv/tracker/enums/AppStore;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/letv/tracker/enums/AppStore;->storeId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/AppStore;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/enums/AppStore;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/AppStore;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/AppStore;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/letv/tracker/enums/AppStore;->$VALUES:[Lcom/letv/tracker/enums/AppStore;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/AppStore;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/letv/tracker/enums/AppStore;->storeId:Ljava/lang/String;

    return-object v0
.end method
