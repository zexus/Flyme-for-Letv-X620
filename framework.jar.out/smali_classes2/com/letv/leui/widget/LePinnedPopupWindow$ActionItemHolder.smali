.class Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
.super Ljava/lang/Object;
.source "LePinnedPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LePinnedPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionItemHolder"
.end annotation


# instance fields
.field dividerOnBottom:Landroid/widget/ImageView;

.field dividerOnTop:Landroid/widget/ImageView;

.field public itemId:I

.field public listener:Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;-><init>()V

    return-void
.end method


# virtual methods
.method addDivider(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "dividerTop"    # Landroid/widget/ImageView;
    .param p2, "dividerBottom"    # Landroid/widget/ImageView;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->dividerOnTop:Landroid/widget/ImageView;

    .line 530
    iput-object p2, p0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->dividerOnBottom:Landroid/widget/ImageView;

    .line 528
    return-void
.end method

.method updateState(ZZI)V
    .locals 6
    .param p1, "isPressed"    # Z
    .param p2, "isHorizontal"    # Z
    .param p3, "padding"    # I

    .prologue
    const/4 v1, 0x0

    .line 534
    if-eqz p1, :cond_2

    .line 535
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->dividerOnTop:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->dividerOnTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->dividerOnBottom:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->dividerOnBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 533
    .end local p3    # "padding":I
    :cond_1
    :goto_0
    return-void

    .line 542
    .restart local p3    # "padding":I
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->dividerOnTop:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 543
    iget-object v5, p0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->dividerOnTop:Landroid/widget/ImageView;

    .line 544
    if-eqz p2, :cond_4

    move v4, v1

    .line 545
    :goto_1
    if-eqz p2, :cond_5

    move v3, p3

    .line 546
    :goto_2
    if-eqz p2, :cond_6

    move v2, v1

    .line 547
    :goto_3
    if-eqz p2, :cond_7

    move v0, p3

    .line 543
    :goto_4
    invoke-virtual {v5, v4, v3, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 551
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->dividerOnBottom:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 552
    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->dividerOnBottom:Landroid/widget/ImageView;

    .line 553
    if-eqz p2, :cond_8

    move v3, v1

    .line 554
    :goto_5
    if-eqz p2, :cond_9

    move v2, p3

    .line 555
    :goto_6
    if-eqz p2, :cond_a

    move v0, v1

    .line 556
    :goto_7
    if-eqz p2, :cond_b

    .line 552
    .end local p3    # "padding":I
    :goto_8
    invoke-virtual {v4, v3, v2, v0, p3}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0

    .restart local p3    # "padding":I
    :cond_4
    move v4, p3

    .line 544
    goto :goto_1

    :cond_5
    move v3, v1

    .line 545
    goto :goto_2

    :cond_6
    move v2, p3

    .line 546
    goto :goto_3

    :cond_7
    move v0, v1

    .line 547
    goto :goto_4

    :cond_8
    move v3, p3

    .line 553
    goto :goto_5

    :cond_9
    move v2, v1

    .line 554
    goto :goto_6

    :cond_a
    move v0, p3

    .line 555
    goto :goto_7

    :cond_b
    move p3, v1

    .line 556
    goto :goto_8
.end method
