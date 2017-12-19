.class public final enum Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;
.super Ljava/lang/Enum;
.source "LeBrowsedResourceShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/LeBrowsedResourceShareUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LeResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

.field public static final enum destPackageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

.field public static final enum leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

.field public static final enum leFilePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

.field public static final enum leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

.field public static final enum leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

.field public static final enum leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

.field public static final enum leSupportLinkcard:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

.field public static final enum leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

.field public static final enum leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

.field public static final enum leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

.field public static final enum leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

.field public static final enum packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

.field public static final enum pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v1, "leText"

    invoke-direct {v0, v1, v3}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v1, "leImagePath"

    invoke-direct {v0, v1, v4}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v1, "leWebUrl"

    invoke-direct {v0, v1, v5}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v1, "leVideoUrl"

    invoke-direct {v0, v1, v6}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v1, "leMusicUrl"

    invoke-direct {v0, v1, v7}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v1, "leTitle"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v1, "leBitmap"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v1, "leFilePath"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leFilePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v1, "leLinkUrl"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v1, "leSupportLinkcard"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leSupportLinkcard:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v1, "packageName"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v1, "pageName"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    new-instance v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v1, "destPackageName"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->destPackageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    .line 41
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leFilePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leSupportLinkcard:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->destPackageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->$VALUES:[Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->$VALUES:[Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    return-object v0
.end method
