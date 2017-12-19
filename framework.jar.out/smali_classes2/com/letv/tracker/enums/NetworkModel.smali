.class public final enum Lcom/letv/tracker/enums/NetworkModel;
.super Ljava/lang/Enum;
.source "NetworkModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/NetworkModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/NetworkModel;

.field public static final enum Auto:Lcom/letv/tracker/enums/NetworkModel;

.field public static final enum Lte:Lcom/letv/tracker/enums/NetworkModel;

.field public static final enum Wifi:Lcom/letv/tracker/enums/NetworkModel;

.field public static final enum Wired:Lcom/letv/tracker/enums/NetworkModel;

.field public static final enum _2G:Lcom/letv/tracker/enums/NetworkModel;

.field public static final enum _3G:Lcom/letv/tracker/enums/NetworkModel;

.field public static final enum _4G:Lcom/letv/tracker/enums/NetworkModel;


# instance fields
.field private id:Ljava/lang/String;


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
    new-instance v0, Lcom/letv/tracker/enums/NetworkModel;

    const-string/jumbo v1, "_2G"

    const-string/jumbo v2, "2g"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/NetworkModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/NetworkModel;->_2G:Lcom/letv/tracker/enums/NetworkModel;

    .line 5
    new-instance v0, Lcom/letv/tracker/enums/NetworkModel;

    const-string/jumbo v1, "_3G"

    const-string/jumbo v2, "3g"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/NetworkModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/NetworkModel;->_3G:Lcom/letv/tracker/enums/NetworkModel;

    .line 6
    new-instance v0, Lcom/letv/tracker/enums/NetworkModel;

    const-string/jumbo v1, "_4G"

    const-string/jumbo v2, "4g"

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/tracker/enums/NetworkModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/NetworkModel;->_4G:Lcom/letv/tracker/enums/NetworkModel;

    .line 7
    new-instance v0, Lcom/letv/tracker/enums/NetworkModel;

    const-string/jumbo v1, "Lte"

    const-string/jumbo v2, "lte"

    invoke-direct {v0, v1, v7, v2}, Lcom/letv/tracker/enums/NetworkModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/NetworkModel;->Lte:Lcom/letv/tracker/enums/NetworkModel;

    .line 8
    new-instance v0, Lcom/letv/tracker/enums/NetworkModel;

    const-string/jumbo v1, "Auto"

    const-string/jumbo v2, "auto"

    invoke-direct {v0, v1, v8, v2}, Lcom/letv/tracker/enums/NetworkModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/NetworkModel;->Auto:Lcom/letv/tracker/enums/NetworkModel;

    .line 9
    new-instance v0, Lcom/letv/tracker/enums/NetworkModel;

    const-string/jumbo v1, "Wifi"

    const/4 v2, 0x5

    const-string/jumbo v3, "wifi"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/NetworkModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/NetworkModel;->Wifi:Lcom/letv/tracker/enums/NetworkModel;

    .line 10
    new-instance v0, Lcom/letv/tracker/enums/NetworkModel;

    const-string/jumbo v1, "Wired"

    const/4 v2, 0x6

    const-string/jumbo v3, "wired"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/NetworkModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/NetworkModel;->Wired:Lcom/letv/tracker/enums/NetworkModel;

    const/4 v0, 0x7

    .line 3
    new-array v0, v0, [Lcom/letv/tracker/enums/NetworkModel;

    sget-object v1, Lcom/letv/tracker/enums/NetworkModel;->_2G:Lcom/letv/tracker/enums/NetworkModel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/NetworkModel;->_3G:Lcom/letv/tracker/enums/NetworkModel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/enums/NetworkModel;->_4G:Lcom/letv/tracker/enums/NetworkModel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/tracker/enums/NetworkModel;->Lte:Lcom/letv/tracker/enums/NetworkModel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/tracker/enums/NetworkModel;->Auto:Lcom/letv/tracker/enums/NetworkModel;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/letv/tracker/enums/NetworkModel;->Wifi:Lcom/letv/tracker/enums/NetworkModel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/letv/tracker/enums/NetworkModel;->Wired:Lcom/letv/tracker/enums/NetworkModel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/letv/tracker/enums/NetworkModel;->$VALUES:[Lcom/letv/tracker/enums/NetworkModel;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/letv/tracker/enums/NetworkModel;->id:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/NetworkModel;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/enums/NetworkModel;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/NetworkModel;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/NetworkModel;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/letv/tracker/enums/NetworkModel;->$VALUES:[Lcom/letv/tracker/enums/NetworkModel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/NetworkModel;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/letv/tracker/enums/NetworkModel;->id:Ljava/lang/String;

    return-object v0
.end method
