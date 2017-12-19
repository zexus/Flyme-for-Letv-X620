.class public final enum Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

.field public static final enum HORIZONTAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

.field public static final enum VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1529
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    const-string/jumbo v1, "VERTICAL"

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    const-string/jumbo v1, "HORIZONTAL"

    invoke-direct {v0, v1, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    .line 1528
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->$VALUES:[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1528
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>.Orientation;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1528
    const-class v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 1528
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->$VALUES:[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method
