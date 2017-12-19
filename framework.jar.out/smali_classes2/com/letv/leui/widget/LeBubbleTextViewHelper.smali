.class public Lcom/letv/leui/widget/LeBubbleTextViewHelper;
.super Ljava/lang/Object;
.source "LeBubbleTextViewHelper.java"


# static fields
.field private static synthetic -com_letv_leui_widget_LeBubbleView$ArrowDirectionSwitchesValues:[I


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mBubblePopupWindow:Landroid/widget/PopupWindow;

.field private mBubbleView:Lcom/letv/leui/widget/LeBubbleView;

.field private mBubbleViewHeight:I

.field private mBubbleViewWidth:I


# direct methods
.method private static synthetic -getcom_letv_leui_widget_LeBubbleView$ArrowDirectionSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->-com_letv_leui_widget_LeBubbleView$ArrowDirectionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->-com_letv_leui_widget_LeBubbleView$ArrowDirectionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->values()[Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->BOTTOM:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->LEFT:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->RIGHT:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->TOP:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->-com_letv_leui_widget_LeBubbleView$ArrowDirectionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LeBubbleView;)V
    .locals 0
    .param p1, "bubbleView"    # Lcom/letv/leui/widget/LeBubbleView;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleView:Lcom/letv/leui/widget/LeBubbleView;

    .line 25
    return-void
.end method


# virtual methods
.method public dismissBubblePopupWindow()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubblePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 102
    return-void
.end method

.method public getBubblePopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubblePopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getBubbleTextView()Lcom/letv/leui/widget/LeBubbleTextView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleView:Lcom/letv/leui/widget/LeBubbleView;

    instance-of v0, v0, Lcom/letv/leui/widget/LeBubbleTextView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleView:Lcom/letv/leui/widget/LeBubbleView;

    check-cast v0, Lcom/letv/leui/widget/LeBubbleTextView;

    return-object v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBubbleView()Lcom/letv/leui/widget/LeBubbleView;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleView:Lcom/letv/leui/widget/LeBubbleView;

    return-object v0
.end method

.method public init(Landroid/view/View;I)V
    .locals 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "bubbleViewLayoutRes"    # I

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeBubbleView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleView:Lcom/letv/leui/widget/LeBubbleView;

    .line 38
    iput-object p1, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mAnchor:Landroid/view/View;

    .line 39
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleView:Lcom/letv/leui/widget/LeBubbleView;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v4, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubblePopupWindow:Landroid/widget/PopupWindow;

    .line 40
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubblePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 41
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubblePopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleView:Lcom/letv/leui/widget/LeBubbleView;

    invoke-virtual {v0, v3, v3}, Lcom/letv/leui/widget/LeBubbleView;->measure(II)V

    .line 43
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleView:Lcom/letv/leui/widget/LeBubbleView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBubbleView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewWidth:I

    .line 44
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleView:Lcom/letv/leui/widget/LeBubbleView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBubbleView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewHeight:I

    .line 34
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0, v0}, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->show(II)V

    .line 50
    return-void
.end method

.method public show(II)V
    .locals 12
    .param p1, "xCustomOffset"    # I
    .param p2, "yCustomOffset"    # I

    .prologue
    const/4 v11, 0x0

    .line 61
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 62
    .local v4, "location":[I
    iget-object v7, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mAnchor:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 63
    iget-object v7, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleView:Lcom/letv/leui/widget/LeBubbleView;

    invoke-virtual {v7}, Lcom/letv/leui/widget/LeBubbleView;->getArrowDirection()Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    move-result-object v2

    .line 64
    .local v2, "arrowDirection":Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;
    const/4 v5, 0x0

    .local v5, "xOffset":I
    const/4 v6, 0x0

    .line 65
    .local v6, "yOffset":I
    iget-object v7, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 66
    .local v1, "anchorWidth":I
    iget-object v7, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 67
    .local v0, "anchorHeight":I
    invoke-static {}, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->-getcom_letv_leui_widget_LeBubbleView$ArrowDirectionSwitchesValues()[I

    move-result-object v7

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 87
    iget v7, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewWidth:I

    neg-int v7, v7

    add-int/lit8 v5, v7, -0xa

    .line 88
    iget v7, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewHeight:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewHeight:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleView:Lcom/letv/leui/widget/LeBubbleView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeBubbleView;->getRelative()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int v3, v7, v8

    .line 89
    .local v3, "arrowOffset":I
    iget v7, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewHeight:I

    sub-int/2addr v7, v0

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int v6, v7, v3

    .line 92
    :goto_0
    iget-object v7, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubblePopupWindow:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mAnchor:Landroid/view/View;

    aget v9, v4, v11

    add-int/2addr v9, v5

    add-int/2addr v9, p1

    const/4 v10, 0x1

    aget v10, v4, v10

    add-int/2addr v10, v6

    add-int/2addr v10, p2

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 59
    return-void

    .line 69
    .end local v3    # "arrowOffset":I
    :pswitch_0
    move v5, v1

    .line 70
    iget v7, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewHeight:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewHeight:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleView:Lcom/letv/leui/widget/LeBubbleView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeBubbleView;->getRelative()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int v3, v7, v8

    .line 71
    .restart local v3    # "arrowOffset":I
    iget v7, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewHeight:I

    sub-int/2addr v7, v0

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int v6, v7, v3

    goto :goto_0

    .line 75
    .end local v3    # "arrowOffset":I
    :pswitch_1
    move v6, v0

    .line 76
    iget v7, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewWidth:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewWidth:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleView:Lcom/letv/leui/widget/LeBubbleView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeBubbleView;->getRelative()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int v3, v7, v8

    .line 77
    .restart local v3    # "arrowOffset":I
    iget v7, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewWidth:I

    sub-int/2addr v7, v1

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v7, v3

    goto :goto_0

    .line 81
    .end local v3    # "arrowOffset":I
    :pswitch_2
    iget v7, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewHeight:I

    neg-int v6, v7

    .line 82
    iget v7, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewWidth:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewWidth:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleView:Lcom/letv/leui/widget/LeBubbleView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeBubbleView;->getRelative()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int v3, v7, v8

    .line 83
    .restart local v3    # "arrowOffset":I
    iget v7, p0, Lcom/letv/leui/widget/LeBubbleTextViewHelper;->mBubbleViewWidth:I

    sub-int/2addr v7, v1

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v7, v3

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
