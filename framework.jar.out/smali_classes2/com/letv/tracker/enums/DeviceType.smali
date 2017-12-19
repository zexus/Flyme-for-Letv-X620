.class public final enum Lcom/letv/tracker/enums/DeviceType;
.super Ljava/lang/Enum;
.source "DeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/DeviceType;

.field public static final enum CDN:Lcom/letv/tracker/enums/DeviceType;

.field public static final enum Mac:Lcom/letv/tracker/enums/DeviceType;

.field public static final enum Others:Lcom/letv/tracker/enums/DeviceType;

.field public static final enum PC:Lcom/letv/tracker/enums/DeviceType;

.field public static final enum Pad:Lcom/letv/tracker/enums/DeviceType;

.field public static final enum Phone:Lcom/letv/tracker/enums/DeviceType;

.field public static final enum TV:Lcom/letv/tracker/enums/DeviceType;


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

    .line 10
    new-instance v0, Lcom/letv/tracker/enums/DeviceType;

    const-string/jumbo v1, "PC"

    const-string/jumbo v2, "pc"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/DeviceType;->PC:Lcom/letv/tracker/enums/DeviceType;

    .line 14
    new-instance v0, Lcom/letv/tracker/enums/DeviceType;

    const-string/jumbo v1, "Mac"

    const-string/jumbo v2, "mac"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/DeviceType;->Mac:Lcom/letv/tracker/enums/DeviceType;

    .line 18
    new-instance v0, Lcom/letv/tracker/enums/DeviceType;

    const-string/jumbo v1, "Phone"

    const-string/jumbo v2, "phone"

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/tracker/enums/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/DeviceType;->Phone:Lcom/letv/tracker/enums/DeviceType;

    .line 22
    new-instance v0, Lcom/letv/tracker/enums/DeviceType;

    const-string/jumbo v1, "Pad"

    const-string/jumbo v2, "pad"

    invoke-direct {v0, v1, v7, v2}, Lcom/letv/tracker/enums/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/DeviceType;->Pad:Lcom/letv/tracker/enums/DeviceType;

    .line 26
    new-instance v0, Lcom/letv/tracker/enums/DeviceType;

    const-string/jumbo v1, "TV"

    const-string/jumbo v2, "tv"

    invoke-direct {v0, v1, v8, v2}, Lcom/letv/tracker/enums/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/DeviceType;->TV:Lcom/letv/tracker/enums/DeviceType;

    .line 30
    new-instance v0, Lcom/letv/tracker/enums/DeviceType;

    const-string/jumbo v1, "CDN"

    const/4 v2, 0x5

    const-string/jumbo v3, "cdn"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/DeviceType;->CDN:Lcom/letv/tracker/enums/DeviceType;

    .line 34
    new-instance v0, Lcom/letv/tracker/enums/DeviceType;

    const-string/jumbo v1, "Others"

    const/4 v2, 0x6

    const-string/jumbo v3, "others"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/DeviceType;->Others:Lcom/letv/tracker/enums/DeviceType;

    const/4 v0, 0x7

    .line 6
    new-array v0, v0, [Lcom/letv/tracker/enums/DeviceType;

    sget-object v1, Lcom/letv/tracker/enums/DeviceType;->PC:Lcom/letv/tracker/enums/DeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/DeviceType;->Mac:Lcom/letv/tracker/enums/DeviceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/enums/DeviceType;->Phone:Lcom/letv/tracker/enums/DeviceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/tracker/enums/DeviceType;->Pad:Lcom/letv/tracker/enums/DeviceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/tracker/enums/DeviceType;->TV:Lcom/letv/tracker/enums/DeviceType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/letv/tracker/enums/DeviceType;->CDN:Lcom/letv/tracker/enums/DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/letv/tracker/enums/DeviceType;->Others:Lcom/letv/tracker/enums/DeviceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/letv/tracker/enums/DeviceType;->$VALUES:[Lcom/letv/tracker/enums/DeviceType;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/letv/tracker/enums/DeviceType;->id:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/DeviceType;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/enums/DeviceType;

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/DeviceType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/letv/tracker/enums/DeviceType;->$VALUES:[Lcom/letv/tracker/enums/DeviceType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/DeviceType;

    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/letv/tracker/enums/DeviceType;->id:Ljava/lang/String;

    return-object v0
.end method
