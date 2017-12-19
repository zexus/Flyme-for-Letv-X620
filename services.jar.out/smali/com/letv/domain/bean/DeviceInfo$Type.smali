.class public final enum Lcom/letv/domain/bean/DeviceInfo$Type;
.super Ljava/lang/Enum;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/domain/bean/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/domain/bean/DeviceInfo$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/domain/bean/DeviceInfo$Type;

.field public static final enum MOBILE:Lcom/letv/domain/bean/DeviceInfo$Type;

.field public static final enum TV:Lcom/letv/domain/bean/DeviceInfo$Type;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    new-instance v0, Lcom/letv/domain/bean/DeviceInfo$Type;

    const-string/jumbo v1, "TV"

    const-string/jumbo v2, "tv"

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/domain/bean/DeviceInfo$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/bean/DeviceInfo$Type;->TV:Lcom/letv/domain/bean/DeviceInfo$Type;

    new-instance v0, Lcom/letv/domain/bean/DeviceInfo$Type;

    const-string/jumbo v1, "MOBILE"

    const-string/jumbo v2, "mobile"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/domain/bean/DeviceInfo$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/bean/DeviceInfo$Type;->MOBILE:Lcom/letv/domain/bean/DeviceInfo$Type;

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/letv/domain/bean/DeviceInfo$Type;

    sget-object v1, Lcom/letv/domain/bean/DeviceInfo$Type;->TV:Lcom/letv/domain/bean/DeviceInfo$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/domain/bean/DeviceInfo$Type;->MOBILE:Lcom/letv/domain/bean/DeviceInfo$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/letv/domain/bean/DeviceInfo$Type;->$VALUES:[Lcom/letv/domain/bean/DeviceInfo$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput-object p3, p0, Lcom/letv/domain/bean/DeviceInfo$Type;->type:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/domain/bean/DeviceInfo$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    const-class v0, Lcom/letv/domain/bean/DeviceInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/domain/bean/DeviceInfo$Type;

    return-object v0
.end method

.method public static values()[Lcom/letv/domain/bean/DeviceInfo$Type;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/letv/domain/bean/DeviceInfo$Type;->$VALUES:[Lcom/letv/domain/bean/DeviceInfo$Type;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/letv/domain/bean/DeviceInfo$Type;->type:Ljava/lang/String;

    return-object v0
.end method
