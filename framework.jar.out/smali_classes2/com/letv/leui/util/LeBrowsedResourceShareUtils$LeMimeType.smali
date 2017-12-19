.class public final enum Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;
.super Ljava/lang/Enum;
.source "LeBrowsedResourceShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/LeBrowsedResourceShareUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LeMimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

.field public static final enum application:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

.field public static final enum audio:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

.field public static final enum html:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

.field public static final enum image:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

.field public static final enum text:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

.field public static final enum video:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    const-string/jumbo v1, "text"

    invoke-direct {v0, v1, v3}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->text:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    const-string/jumbo v1, "image"

    invoke-direct {v0, v1, v4}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->image:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    const-string/jumbo v1, "html"

    invoke-direct {v0, v1, v5}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->html:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    const-string/jumbo v1, "video"

    invoke-direct {v0, v1, v6}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->video:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    const-string/jumbo v1, "audio"

    invoke-direct {v0, v1, v7}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->audio:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    const-string/jumbo v1, "application"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->application:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->text:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->image:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->html:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->video:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->audio:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->application:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->$VALUES:[Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->$VALUES:[Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    return-object v0
.end method
