.class public final enum Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum MANUAL_REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum OVERSCROLLING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum PULL_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum RELEASE_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum SMOOTHSCROLLFINISHED:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;


# instance fields
.field private mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1534
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const-string/jumbo v1, "RESET"

    invoke-direct {v0, v1, v4, v4}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    .line 1538
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 1540
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const-string/jumbo v1, "PULL_TO_REFRESH"

    invoke-direct {v0, v1, v5, v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    .line 1544
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 1546
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const-string/jumbo v1, "RELEASE_TO_REFRESH"

    invoke-direct {v0, v1, v6, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    .line 1550
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 1552
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const-string/jumbo v1, "REFRESHING"

    .line 1555
    const/16 v2, 0x8

    .line 1552
    invoke-direct {v0, v1, v7, v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    .line 1555
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 1557
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const-string/jumbo v1, "MANUAL_REFRESHING"

    .line 1561
    const/16 v2, 0x9

    .line 1557
    invoke-direct {v0, v1, v8, v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    .line 1561
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 1563
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const-string/jumbo v1, "OVERSCROLLING"

    const/4 v2, 0x5

    .line 1567
    const/16 v3, 0x10

    .line 1563
    invoke-direct {v0, v1, v2, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    .line 1567
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 1569
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const-string/jumbo v1, "SMOOTHSCROLLFINISHED"

    const/4 v2, 0x6

    .line 1572
    const/16 v3, 0x11

    .line 1569
    invoke-direct {v0, v1, v2, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    .line 1572
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->SMOOTHSCROLLFINISHED:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 1532
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    aput-object v1, v0, v8

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->SMOOTHSCROLLFINISHED:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->$VALUES:[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "intValue"    # I

    .prologue
    .line 1593
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>.State;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1594
    iput p3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->mIntValue:I

    .line 1593
    return-void
.end method

.method static mapIntToValue(I)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;
    .locals 5
    .param p0, "stateInt"    # I

    .prologue
    .line 1581
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->values()[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1582
    .local v0, "value":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;
    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->getIntValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 1583
    return-object v0

    .line 1581
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1588
    .end local v0    # "value":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;
    :cond_1
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1532
    const-class v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;
    .locals 1

    .prologue
    .line 1532
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->$VALUES:[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    return-object v0
.end method


# virtual methods
.method getIntValue()I
    .locals 1

    .prologue
    .line 1598
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>.State;"
    iget v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->mIntValue:I

    return v0
.end method
