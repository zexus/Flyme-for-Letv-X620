.class public final enum Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;
.super Ljava/lang/Enum;
.source "LeBubbleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeBubbleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArrowDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

.field public static final enum BOTTOM:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

.field public static final enum LEFT:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

.field public static final enum RIGHT:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

.field public static final enum TOP:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    new-instance v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->LEFT:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    new-instance v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    const-string/jumbo v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->TOP:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    new-instance v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->RIGHT:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    new-instance v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    const-string/jumbo v1, "BOTTOM"

    invoke-direct {v0, v1, v5}, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->BOTTOM:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    .line 281
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    sget-object v1, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->LEFT:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->TOP:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->RIGHT:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->BOTTOM:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->$VALUES:[Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 281
    const-class v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->$VALUES:[Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    return-object v0
.end method
