.class public Lcom/letv/leui/widget/LeSpinner;
.super Lcom/letv/leui/widget/AbsSpinner;
.source "LeSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeSpinner$DropDownAdapter;,
        Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;,
        Lcom/letv/leui/widget/LeSpinner$SavedState;,
        Lcom/letv/leui/widget/LeSpinner$DialogPopup;,
        Lcom/letv/leui/widget/LeSpinner$DropdownPopup;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field private mDisableChildrenWhenDisabled:Z

.field mDropDownWidth:I

.field private mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

.field private mGravity:I

.field private mMaxVisibleItem:I

.field private mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

.field private mTempAdapter:Lcom/letv/leui/widget/LeSpinner$DropDownAdapter;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/LeSpinner;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/LeSpinner;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeSpinner;->mMaxVisibleItem:I

    return v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/LeSpinner;)Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/LeSpinner;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/LeSpinner;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 126
    const/4 v0, 0x0

    const v1, 0x1010081

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/letv/leui/widget/LeSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 153
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "mode"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    iput v5, p0, Lcom/letv/leui/widget/LeSpinner;->mMaxVisibleItem:I

    .line 101
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 177
    sget-object v2, Lcom/android/internal/R$styleable;->Spinner:[I

    .line 176
    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 179
    .local v0, "a":Landroid/content/res/TypedArray;
    if-ne p4, v5, :cond_0

    .line 180
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    .line 183
    :cond_0
    packed-switch p4, :pswitch_data_0

    .line 217
    :goto_0
    const/16 v2, 0x11

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/LeSpinner;->mGravity:I

    .line 219
    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 222
    const/16 v2, 0x9

    .line 221
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeSpinner;->mDisableChildrenWhenDisabled:Z

    .line 224
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    sget-object v2, Lcom/android/internal/R$styleable;->LeDropDown:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 227
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/LeSpinner;->mMaxVisibleItem:I

    .line 228
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner;->mTempAdapter:Lcom/letv/leui/widget/LeSpinner$DropDownAdapter;

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    iget-object v3, p0, Lcom/letv/leui/widget/LeSpinner;->mTempAdapter:Lcom/letv/leui/widget/LeSpinner$DropDownAdapter;

    invoke-interface {v2, v3}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    iput-object v6, p0, Lcom/letv/leui/widget/LeSpinner;->mTempAdapter:Lcom/letv/leui/widget/LeSpinner$DropDownAdapter;

    .line 173
    :cond_1
    return-void

    .line 185
    :pswitch_0
    new-instance v2, Lcom/letv/leui/widget/LeSpinner$DialogPopup;

    invoke-direct {v2, p0, v6}, Lcom/letv/leui/widget/LeSpinner$DialogPopup;-><init>(Lcom/letv/leui/widget/LeSpinner;Lcom/letv/leui/widget/LeSpinner$DialogPopup;)V

    iput-object v2, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    goto :goto_0

    .line 190
    :pswitch_1
    new-instance v1, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;-><init>(Lcom/letv/leui/widget/LeSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    .local v1, "popup":Lcom/letv/leui/widget/LeSpinner$DropdownPopup;
    const/4 v2, 0x4

    .line 194
    const/4 v3, -0x2

    .line 192
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/LeSpinner;->mDropDownWidth:I

    .line 196
    const/4 v2, 0x2

    .line 195
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iput-object v1, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    .line 199
    new-instance v2, Lcom/letv/leui/widget/LeSpinner$1;

    invoke-direct {v2, p0, p0, v1}, Lcom/letv/leui/widget/LeSpinner$1;-><init>(Lcom/letv/leui/widget/LeSpinner;Landroid/view/View;Lcom/letv/leui/widget/LeSpinner$DropdownPopup;)V

    iput-object v2, p0, Lcom/letv/leui/widget/LeSpinner;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private makeView(IZ)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "addChild"    # Z

    .prologue
    const/4 v2, 0x0

    .line 584
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeSpinner;->mDataChanged:Z

    if-nez v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner;->mRecycler:Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 586
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 588
    invoke-direct {p0, v0, p2}, Lcom/letv/leui/widget/LeSpinner;->setUpChild(Landroid/view/View;Z)V

    .line 590
    return-object v0

    .line 595
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, p1, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 598
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/letv/leui/widget/LeSpinner;->setUpChild(Landroid/view/View;Z)V

    .line 600
    return-object v0
.end method

.method private setUpChild(Landroid/view/View;Z)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "addChild"    # Z

    .prologue
    const/4 v8, 0x0

    .line 614
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 615
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 619
    :cond_0
    if-eqz p2, :cond_1

    .line 620
    invoke-virtual {p0, p1, v8, v6}, Lcom/letv/leui/widget/LeSpinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 623
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->hasFocus()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 624
    iget-boolean v8, p0, Lcom/letv/leui/widget/LeSpinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v8, :cond_2

    .line 625
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->isEnabled()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 629
    :cond_2
    iget v8, p0, Lcom/letv/leui/widget/LeSpinner;->mHeightMeasureSpec:I

    .line 630
    iget-object v9, p0, Lcom/letv/leui/widget/LeSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 629
    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 631
    .local v1, "childHeightSpec":I
    iget v8, p0, Lcom/letv/leui/widget/LeSpinner;->mWidthMeasureSpec:I

    .line 632
    iget-object v9, p0, Lcom/letv/leui/widget/LeSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 631
    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 635
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 641
    iget-object v8, p0, Lcom/letv/leui/widget/LeSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 642
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    .line 643
    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 642
    sub-int/2addr v9, v10

    .line 643
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 642
    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    .line 641
    add-int v4, v8, v9

    .line 644
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 646
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 647
    .local v7, "width":I
    const/4 v2, 0x0

    .line 648
    .local v2, "childLeft":I
    add-int/lit8 v3, v7, 0x0

    .line 650
    .local v3, "childRight":I
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 610
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 429
    const/4 v0, 0x0

    .line 431
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 432
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 438
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 439
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 440
    .local v1, "childBaseline":I
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    :cond_1
    return v2

    .line 433
    .end local v1    # "childBaseline":I
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/letv/leui/widget/LeSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/LeSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 434
    invoke-direct {p0, v4, v4}, Lcom/letv/leui/widget/LeSpinner;->makeView(IZ)Landroid/view/View;

    move-result-object v0

    .line 435
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/letv/leui/widget/LeSpinner;->mRecycler:Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, v4, v0}, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    goto :goto_0

    .line 442
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return v2
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/letv/leui/widget/LeSpinner;->mDropDownWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/letv/leui/widget/LeSpinner;->mGravity:I

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method layout(IZ)V
    .locals 10
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v9, 0x0

    .line 517
    iget-object v7, p0, Lcom/letv/leui/widget/LeSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 518
    .local v1, "childrenLeft":I
    iget v7, p0, Lcom/letv/leui/widget/LeSpinner;->mRight:I

    iget v8, p0, Lcom/letv/leui/widget/LeSpinner;->mLeft:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/letv/leui/widget/LeSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/letv/leui/widget/LeSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, v7, v8

    .line 520
    .local v2, "childrenWidth":I
    iget-boolean v7, p0, Lcom/letv/leui/widget/LeSpinner;->mDataChanged:Z

    if-eqz v7, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->handleDataChanged()V

    .line 525
    :cond_0
    iget v7, p0, Lcom/letv/leui/widget/LeSpinner;->mItemCount:I

    if-nez v7, :cond_1

    .line 526
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->resetList()V

    .line 527
    return-void

    .line 530
    :cond_1
    iget v7, p0, Lcom/letv/leui/widget/LeSpinner;->mNextSelectedPosition:I

    if-ltz v7, :cond_2

    .line 531
    iget v7, p0, Lcom/letv/leui/widget/LeSpinner;->mNextSelectedPosition:I

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeSpinner;->setSelectedPositionInt(I)V

    .line 534
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->recycleAllViews()V

    .line 537
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->removeAllViewsInLayout()V

    .line 540
    iget v7, p0, Lcom/letv/leui/widget/LeSpinner;->mSelectedPosition:I

    iput v7, p0, Lcom/letv/leui/widget/LeSpinner;->mFirstPosition:I

    .line 542
    iget-object v7, p0, Lcom/letv/leui/widget/LeSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v7, :cond_3

    .line 543
    iget v7, p0, Lcom/letv/leui/widget/LeSpinner;->mSelectedPosition:I

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/letv/leui/widget/LeSpinner;->makeView(IZ)Landroid/view/View;

    move-result-object v4

    .line 544
    .local v4, "sel":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 545
    .local v6, "width":I
    move v5, v1

    .line 546
    .local v5, "selectedOffset":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->getLayoutDirection()I

    move-result v3

    .line 547
    .local v3, "layoutDirection":I
    iget v7, p0, Lcom/letv/leui/widget/LeSpinner;->mGravity:I

    invoke-static {v7, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 548
    .local v0, "absoluteGravity":I
    and-int/lit8 v7, v0, 0x7

    sparse-switch v7, :sswitch_data_0

    .line 556
    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 560
    .end local v0    # "absoluteGravity":I
    .end local v3    # "layoutDirection":I
    .end local v4    # "sel":Landroid/view/View;
    .end local v5    # "selectedOffset":I
    .end local v6    # "width":I
    :cond_3
    iget-object v7, p0, Lcom/letv/leui/widget/LeSpinner;->mRecycler:Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v7}, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;->clear()V

    .line 562
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->invalidate()V

    .line 564
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->checkSelectionChanged()V

    .line 566
    iput-boolean v9, p0, Lcom/letv/leui/widget/LeSpinner;->mDataChanged:Z

    .line 567
    iput-boolean v9, p0, Lcom/letv/leui/widget/LeSpinner;->mNeedSync:Z

    .line 568
    iget v7, p0, Lcom/letv/leui/widget/LeSpinner;->mSelectedPosition:I

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeSpinner;->setNextSelectedPositionInt(I)V

    .line 516
    return-void

    .line 550
    .restart local v0    # "absoluteGravity":I
    .restart local v3    # "layoutDirection":I
    .restart local v4    # "sel":Landroid/view/View;
    .restart local v5    # "selectedOffset":I
    .restart local v6    # "width":I
    :sswitch_0
    div-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v1

    div-int/lit8 v8, v6, 0x2

    sub-int v5, v7, v8

    .line 551
    goto :goto_0

    .line 553
    :sswitch_1
    add-int v7, v1, v2

    sub-int v5, v7, v6

    .line 554
    goto :goto_0

    .line 548
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public measureContentHeight(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;I)I
    .locals 15
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;
    .param p3, "maxLength"    # I

    .prologue
    .line 761
    if-nez p1, :cond_0

    .line 762
    const/4 v13, 0x0

    return v13

    .line 765
    :cond_0
    const/4 v3, 0x0

    .line 766
    .local v3, "height":I
    const/4 v7, 0x0

    .line 767
    .local v7, "itemView":Landroid/view/View;
    const/4 v6, 0x0

    .line 769
    .local v6, "itemType":I
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 771
    .local v12, "widthMeasureSpec":I
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 776
    .local v4, "heightMeasureSpec":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->getSelectedItemPosition()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 777
    .local v11, "start":I
    invoke-interface/range {p1 .. p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v13

    add-int v14, v11, p3

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 778
    .local v2, "end":I
    sub-int v1, v2, v11

    .line 779
    .local v1, "count":I
    sub-int v13, p3, v1

    sub-int v13, v11, v13

    const/4 v14, 0x0

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 780
    move v5, v11

    .end local v7    # "itemView":Landroid/view/View;
    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_4

    .line 781
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v10

    .line 782
    .local v10, "positionType":I
    if-eq v10, v6, :cond_1

    .line 783
    move v6, v10

    .line 784
    const/4 v7, 0x0

    .line 786
    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 787
    .local v7, "itemView":Landroid/view/View;
    const/4 v9, 0x0

    .line 788
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    if-nez v13, :cond_3

    .line 789
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 790
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v13, -0x2

    .line 791
    const/4 v14, -0x2

    .line 789
    invoke-direct {v9, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 792
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    :goto_1
    invoke-virtual {v7, v12, v4}, Landroid/view/View;->measure(II)V

    .line 797
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 799
    .local v8, "measureHeight":I
    iget v13, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v13, :cond_2

    iget v8, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .end local v8    # "measureHeight":I
    :cond_2
    add-int/2addr v3, v8

    .line 780
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 794
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_1

    .line 803
    .end local v7    # "itemView":Landroid/view/View;
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "positionType":I
    :cond_4
    if-eqz p2, :cond_5

    .line 804
    iget-object v13, p0, Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 805
    iget-object v13, p0, Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    iget-object v14, p0, Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v14

    add-int/2addr v3, v13

    .line 808
    :cond_5
    return v3
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 717
    if-nez p1, :cond_0

    .line 718
    const/4 v10, 0x0

    return v10

    .line 721
    :cond_0
    const/4 v8, 0x0

    .line 722
    .local v8, "width":I
    const/4 v5, 0x0

    .line 723
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 725
    .local v4, "itemType":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 727
    .local v9, "widthMeasureSpec":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 731
    .local v2, "heightMeasureSpec":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->getSelectedItemPosition()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 732
    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 733
    .local v1, "end":I
    sub-int v0, v1, v7

    .line 734
    .local v0, "count":I
    rsub-int/lit8 v10, v0, 0xf

    sub-int v10, v7, v10

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 735
    move v3, v7

    .end local v5    # "itemView":Landroid/view/View;
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 736
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v6

    .line 737
    .local v6, "positionType":I
    if-eq v6, v4, :cond_1

    .line 738
    move v4, v6

    .line 739
    const/4 v5, 0x0

    .line 741
    :cond_1
    invoke-interface {p1, v3, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 742
    .local v5, "itemView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_2

    .line 743
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    .line 744
    const/4 v11, -0x2

    .line 745
    const/4 v12, -0x2

    .line 743
    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    :cond_2
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 748
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 735
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 752
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "positionType":I
    :cond_3
    if-eqz p2, :cond_4

    .line 753
    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 754
    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 757
    :cond_4
    return v8
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 669
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/LeSpinner;->setSelection(I)V

    .line 670
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 668
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 448
    invoke-super {p0}, Lcom/letv/leui/widget/AbsSpinner;->onDetachedFromWindow()V

    .line 450
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->dismiss()V

    .line 447
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 675
    invoke-super {p0, p1}, Lcom/letv/leui/widget/AbsSpinner;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 676
    const-class v0, Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 674
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 681
    invoke-super {p0, p1}, Lcom/letv/leui/widget/AbsSpinner;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 682
    const-class v0, Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 685
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 680
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 503
    invoke-super/range {p0 .. p5}, Lcom/letv/leui/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeSpinner;->mInLayout:Z

    .line 505
    invoke-virtual {p0, v1, v1}, Lcom/letv/leui/widget/LeSpinner;->layout(IZ)V

    .line 506
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeSpinner;->mInLayout:Z

    .line 502
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 485
    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/AbsSpinner;->onMeasure(II)V

    .line 486
    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->getMeasuredWidth()I

    move-result v0

    .line 489
    .local v0, "measuredWidth":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/letv/leui/widget/LeSpinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 488
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 490
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 488
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 491
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->getMeasuredHeight()I

    move-result v2

    .line 488
    invoke-virtual {p0, v1, v2}, Lcom/letv/leui/widget/LeSpinner;->setMeasuredDimension(II)V

    .line 484
    .end local v0    # "measuredWidth":I
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v1, p1

    .line 954
    check-cast v1, Lcom/letv/leui/widget/LeSpinner$SavedState;

    .line 956
    .local v1, "ss":Lcom/letv/leui/widget/LeSpinner$SavedState;
    invoke-virtual {v1}, Lcom/letv/leui/widget/LeSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/letv/leui/widget/AbsSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 958
    iget-boolean v3, v1, Lcom/letv/leui/widget/LeSpinner$SavedState;->showDropdown:Z

    if-eqz v3, :cond_0

    .line 959
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 960
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_0

    .line 961
    new-instance v0, Lcom/letv/leui/widget/LeSpinner$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LeSpinner$2;-><init>(Lcom/letv/leui/widget/LeSpinner;)V

    .line 973
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 953
    .end local v0    # "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 947
    new-instance v0, Lcom/letv/leui/widget/LeSpinner$SavedState;

    invoke-super {p0}, Lcom/letv/leui/widget/AbsSpinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 948
    .local v0, "ss":Lcom/letv/leui/widget/LeSpinner$SavedState;
    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    invoke-interface {v1}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->isShowing()Z

    move-result v1

    :goto_0
    iput-boolean v1, v0, Lcom/letv/leui/widget/LeSpinner$SavedState;->showDropdown:Z

    .line 949
    return-object v0

    .line 948
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    invoke-virtual {v0, p0, p1}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    const/4 v0, 0x1

    return v0

    .line 480
    :cond_0
    invoke-super {p0, p1}, Lcom/letv/leui/widget/AbsSpinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 4

    .prologue
    .line 655
    invoke-super {p0}, Lcom/letv/leui/widget/AbsSpinner;->performClick()Z

    move-result v0

    .line 657
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 658
    const/4 v0, 0x1

    .line 660
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    invoke-interface {v1}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->getTextDirection()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->getTextAlignment()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->show(II)V

    .line 665
    .end local v0    # "handled":Z
    :cond_0
    return v0
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 416
    invoke-super {p0, p1}, Lcom/letv/leui/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 418
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mRecycler:Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0}, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;->clear()V

    .line 420
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    new-instance v1, Lcom/letv/leui/widget/LeSpinner$DropDownAdapter;

    invoke-direct {v1, p1}, Lcom/letv/leui/widget/LeSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 415
    :goto_0
    return-void

    .line 423
    :cond_0
    new-instance v0, Lcom/letv/leui/widget/LeSpinner$DropDownAdapter;

    invoke-direct {v0, p1}, Lcom/letv/leui/widget/LeSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mTempAdapter:Lcom/letv/leui/widget/LeSpinner$DropDownAdapter;

    goto :goto_0
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->setHorizontalOffset(I)V

    .line 311
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->setVerticalOffset(I)V

    .line 287
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 2
    .param p1, "pixels"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    instance-of v0, v0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    if-nez v0, :cond_0

    .line 342
    const-string/jumbo v0, "Spinner"

    const-string/jumbo v1, "Cannot set dropdown width for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void

    .line 345
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeSpinner;->mDropDownWidth:I

    .line 340
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/letv/leui/widget/AbsSpinner;->setEnabled(Z)V

    .line 366
    iget-boolean v2, p0, Lcom/letv/leui/widget/LeSpinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->getChildCount()I

    move-result v0

    .line 368
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 369
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 383
    iget v0, p0, Lcom/letv/leui/widget/LeSpinner;->mGravity:I

    if-eq v0, p1, :cond_1

    .line 384
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 385
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 387
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeSpinner;->mGravity:I

    .line 388
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->requestLayout()V

    .line 382
    :cond_1
    return-void
.end method

.method public setMaxVisibleItems(I)V
    .locals 0
    .param p1, "maxVisibleItems"    # I

    .prologue
    .line 690
    iput p1, p0, Lcom/letv/leui/widget/LeSpinner;->mMaxVisibleItem:I

    .line 689
    return-void
.end method

.method public setOnItemClickListener(Lcom/letv/leui/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "l"    # Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 464
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListenerInt(Lcom/letv/leui/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 471
    invoke-super {p0, p1}, Lcom/letv/leui/widget/AbsSpinner;->setOnItemClickListener(Lcom/letv/leui/widget/AdapterView$OnItemClickListener;)V

    .line 470
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    instance-of v0, v0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    if-nez v0, :cond_0

    .line 249
    const-string/jumbo v0, "Spinner"

    const-string/jumbo v1, "setPopupBackgroundDrawable: incompatible spinner mode; ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    check-cast v0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 697
    return-void
.end method

.method public setPromptId(I)V
    .locals 1
    .param p1, "promptId"    # I

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 705
    return-void
.end method
