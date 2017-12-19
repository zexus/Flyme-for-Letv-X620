.class public final enum Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;
.super Ljava/lang/Enum;
.source "BallsLoadingProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/BallsLoadingProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BallsLoadingGravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

.field public static final enum CENTER:Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

.field public static final enum CENTER_HORIZONTAL:Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

.field public static final enum CENTER_VERTICAL:Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

.field public static final enum NORMAL:Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 537
    new-instance v0, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;->NORMAL:Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    new-instance v0, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    const-string/jumbo v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;->CENTER:Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    new-instance v0, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    const-string/jumbo v1, "CENTER_VERTICAL"

    invoke-direct {v0, v1, v4}, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;->CENTER_VERTICAL:Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    new-instance v0, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    const-string/jumbo v1, "CENTER_HORIZONTAL"

    invoke-direct {v0, v1, v5}, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;->CENTER_HORIZONTAL:Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    .line 536
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    sget-object v1, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;->NORMAL:Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;->CENTER:Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;->CENTER_VERTICAL:Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;->CENTER_HORIZONTAL:Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    aput-object v1, v0, v5

    sput-object v0, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;->$VALUES:[Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 536
    const-class v0, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;
    .locals 1

    .prologue
    .line 536
    sget-object v0, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;->$VALUES:[Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    return-object v0
.end method
