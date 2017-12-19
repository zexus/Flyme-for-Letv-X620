.class public Lcom/letv/leui/widget/LeScrollStripTabWidget;
.super Lcom/letv/leui/widget/BlurLinearLayout;
.source "LeScrollStripTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;,
        Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_CLICK_TIME_MS:I = 0x15e


# instance fields
.field private mBottomStripDrawable:Landroid/graphics/drawable/Drawable;

.field private mBottomStripHeight:I

.field private mDrawScrollStripWhenTabChangeByClick:Z

.field private mLastClickTime:J

.field private mScrollStripBoundsRect:Landroid/graphics/Rect;

.field private mScrollStripDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollStripHeight:I

.field private mScrollStripLenChangeable:Z

.field private mScrollStripLenExtension:I

.field private mScrollStripMoved:Z

.field private mScrollStripOffset:F

.field private mSelectedTab:I

.field private mTabClickListener:Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

.field private mTopStripDrawable:Landroid/graphics/drawable/Drawable;

.field private mTopStripHeight:I


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/LeScrollStripTabWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mDrawScrollStripWhenTabChangeByClick:Z

    return v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/LeScrollStripTabWidget;)J
    .locals 2

    iget-wide v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mLastClickTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/LeScrollStripTabWidget;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    return v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/LeScrollStripTabWidget;)Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTabClickListener:Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/LeScrollStripTabWidget;J)J
    .locals 1

    iput-wide p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mLastClickTime:J

    return-wide p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/BlurLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mLastClickTime:J

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    .line 72
    invoke-direct {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->initTabWidget()V

    .line 56
    return-void
.end method

.method private computeStripBoundsRect()V
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenChangeable:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->computeStripBoundsRect_dynamicLen()V

    .line 179
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->computeStripBoundsRect_fixLen()V

    goto :goto_0
.end method

.method private computeStripBoundsRect_dynamicLen()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 229
    iget v12, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v12}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 230
    .local v9, "selectedVg":Landroid/view/ViewGroup;
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 232
    .local v6, "selectedText":Landroid/view/View;
    invoke-direct {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getNextTab()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 233
    .local v4, "nextVg":Landroid/view/ViewGroup;
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 237
    .local v1, "nextText":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    .line 238
    .local v10, "selectedVgLeft":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getRight()I

    move-result v11

    .line 244
    .local v11, "selectedVgRight":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v12

    add-int v7, v12, v10

    .line 245
    .local v7, "selectedTextLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    add-int v8, v12, v10

    .line 247
    .local v8, "selectedTextRight":I
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v13

    add-int v2, v12, v13

    .line 248
    .local v2, "nextTextLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v13

    add-int v3, v12, v13

    .line 250
    .local v3, "nextTextRight":I
    int-to-float v12, v7

    sub-int v13, v2, v7

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    iget v14, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenExtension:I

    sub-int v0, v12, v13

    .line 251
    .local v0, "left":I
    iget v12, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    if-nez v12, :cond_0

    if-ge v0, v10, :cond_0

    .line 252
    move v0, v10

    .line 255
    :cond_0
    int-to-float v12, v8

    sub-int v13, v3, v8

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    iget v14, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenExtension:I

    add-int v5, v12, v13

    .line 256
    .local v5, "right":I
    iget v12, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_1

    if-le v5, v11, :cond_1

    .line 257
    move v5, v11

    .line 260
    :cond_1
    iget-object v12, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v13

    iget v14, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripHeight:I

    sub-int/2addr v13, v14

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v14

    invoke-virtual {v12, v0, v13, v5, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 225
    return-void
.end method

.method private computeStripBoundsRect_fixLen()V
    .locals 9

    .prologue
    .line 189
    iget v6, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 194
    .local v2, "selectedChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 195
    .local v3, "selectedChildLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 196
    .local v4, "selectedChildRight":I
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 198
    .local v5, "selectedChildWidth":I
    int-to-float v6, v3

    int-to-float v7, v5

    iget v8, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 199
    .local v0, "left":I
    iget v6, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    if-nez v6, :cond_0

    if-ge v0, v3, :cond_0

    .line 200
    move v0, v3

    .line 203
    :cond_0
    add-int v1, v0, v5

    .line 204
    .local v1, "right":I
    iget v6, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_1

    if-le v1, v4, :cond_1

    .line 205
    move v1, v4

    .line 208
    :cond_1
    iget-object v6, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v8

    invoke-virtual {v6, v0, v7, v1, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 188
    return-void
.end method

.method private getNextTab()I
    .locals 3

    .prologue
    .line 213
    iget v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 214
    iget v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    add-int/lit8 v0, v1, 0x1

    .line 219
    .local v0, "nextTab":I
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 220
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 222
    return v0

    .line 216
    .end local v0    # "nextTab":I
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "nextTab":I
    goto :goto_0
.end method

.method private initTabWidget()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setChildrenDrawingOrderEnabled(Z)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setClickable(Z)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setFocusable(Z)V

    .line 106
    invoke-virtual {p0, p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripBoundsRect:Landroid/graphics/Rect;

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setBlurEnabled(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenExtension:I

    .line 98
    return-void
.end method

.method private setScrollStripOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 576
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 577
    return-void

    .line 579
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    .line 582
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 575
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 429
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 430
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 432
    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 430
    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 433
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 434
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 440
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 442
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->addView(Landroid/view/View;)V

    .line 446
    new-instance v1, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, p0, v2, v5}, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;-><init>(Lcom/letv/leui/widget/LeScrollStripTabWidget;ILcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 428
    return-void
.end method

.method public addView(Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 641
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 642
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x10900d0

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 644
    .local v2, "vGroup":Landroid/view/ViewGroup;
    if-nez v2, :cond_0

    .line 645
    return-void

    .line 647
    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 648
    .local v1, "textView":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 649
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "textView":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    :cond_1
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->addView(Landroid/view/View;)V

    .line 640
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 176
    :cond_0
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 265
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 268
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripHeight:I

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripDrawable:Landroid/graphics/drawable/Drawable;

    .line 270
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTop()I

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripHeight:I

    add-int/2addr v6, v7

    .line 269
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 271
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripHeight:I

    if-eqz v2, :cond_1

    .line 276
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripHeight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getRight()I

    move-result v5

    .line 277
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v6

    .line 276
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 278
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 283
    :cond_2
    return-void

    .line 285
    :cond_3
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripHeight:I

    if-eqz v2, :cond_5

    .line 286
    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "selectedChild":Landroid/view/View;
    iget-object v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripDrawable:Landroid/graphics/drawable/Drawable;

    .line 288
    .local v1, "strip":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 290
    iget-boolean v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    if-eqz v2, :cond_4

    .line 291
    invoke-direct {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->computeStripBoundsRect()V

    .line 292
    iput-boolean v8, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    .line 294
    :cond_4
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 295
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 264
    .end local v0    # "selectedChild":Landroid/view/View;
    .end local v1    # "strip":Landroid/graphics/drawable/Drawable;
    :cond_5
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v3, 0x0

    .line 355
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 357
    iget v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 358
    iget v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 359
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 360
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1

    .line 363
    .end local v0    # "tabView":Landroid/view/View;
    :cond_0
    return v3
.end method

.method public focusCurrentTab(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 405
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    .line 408
    .local v0, "oldTab":I
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setCurrentTab(I)V

    .line 411
    if-eq v0, p1, :cond_0

    .line 412
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 404
    :cond_0
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 83
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 84
    return p2

    .line 88
    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_1

    .line 89
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    return v0

    .line 90
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_2

    .line 91
    add-int/lit8 v0, p2, 0x1

    return v0

    .line 93
    :cond_2
    return p2
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScrollStripLenChangeable()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenChangeable:Z

    return v0
.end method

.method public getScrollStripLenExtensionPx()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenExtension:I

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 452
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 453
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 454
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 455
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 457
    new-instance v2, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;-><init>(Lcom/letv/leui/widget/LeScrollStripTabWidget;ILcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    invoke-super {p0}, Lcom/letv/leui/widget/BlurLinearLayout;->onFinishInflate()V

    .line 451
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 472
    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 473
    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 474
    return-void

    .line 477
    :cond_0
    if-eqz p2, :cond_1

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v1

    .line 480
    .local v1, "numTabs":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 481
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 482
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setCurrentTab(I)V

    .line 484
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->sendAccessibilityEvent(I)V

    .line 471
    .end local v0    # "i":I
    .end local v1    # "numTabs":I
    :cond_1
    return-void

    .line 491
    .restart local v0    # "i":I
    .restart local v1    # "numTabs":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 368
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 369
    const-class v0, Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 370
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 371
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 372
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 367
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 388
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 389
    const-class v0, Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 387
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/BlurLinearLayout;->onSizeChanged(IIII)V

    .line 76
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 466
    invoke-super {p0}, Lcom/letv/leui/widget/BlurLinearLayout;->removeAllViews()V

    .line 467
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    .line 465
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 381
    return-void

    .line 383
    :cond_0
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 377
    return-void
.end method

.method public setBottomStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setBottomStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 616
    return-void
.end method

.method public setBottomStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripDrawable:Landroid/graphics/drawable/Drawable;

    .line 622
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 620
    return-void
.end method

.method public setBottomStripHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 626
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripHeight:I

    .line 627
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 625
    return-void
.end method

.method public setBottomStripHeightResId(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripHeight:I

    .line 632
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 630
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 320
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 321
    :cond_0
    return-void

    .line 320
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    if-eq p1, v0, :cond_0

    .line 324
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 325
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 327
    :cond_2
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    .line 328
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 329
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    .line 331
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->sendAccessibilityEvent(I)V

    .line 319
    :cond_3
    return-void
.end method

.method public setCurrentTabButNotInvalidateScrollStrip(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 337
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 338
    :cond_0
    return-void

    .line 337
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    if-eq p1, v0, :cond_0

    .line 341
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 342
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 344
    :cond_2
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    .line 345
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 346
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    .line 348
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->sendAccessibilityEvent(I)V

    .line 336
    :cond_3
    return-void
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void
.end method

.method public setDrawScrollStripWhenTabChangeByClick(Z)V
    .locals 0
    .param p1, "drawScrollStripWhenTabChangeByClick"    # Z

    .prologue
    .line 637
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mDrawScrollStripWhenTabChangeByClick:Z

    .line 636
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->setEnabled(Z)V

    .line 420
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v1

    .line 421
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 422
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setOnTabClickListener(Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTabClickListener:Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

    .line 548
    return-void
.end method

.method public setScrollStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setScrollStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 553
    return-void
.end method

.method public setScrollStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripDrawable:Landroid/graphics/drawable/Drawable;

    .line 560
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 557
    return-void
.end method

.method public setScrollStripHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 564
    if-gez p1, :cond_0

    .line 565
    return-void

    .line 566
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripHeight:I

    .line 567
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 563
    return-void
.end method

.method public setScrollStripHeightResId(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripHeight:I

    .line 572
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 570
    return-void
.end method

.method public setScrollStripLenChangeable(Z)V
    .locals 0
    .param p1, "stripLenChangeable"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenChangeable:Z

    .line 135
    return-void
.end method

.method public setScrollStripLenExtensionPx(I)V
    .locals 0
    .param p1, "extension"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenExtension:I

    .line 143
    return-void
.end method

.method public setScrollStripOffset(IF)V
    .locals 1
    .param p1, "tab"    # I
    .param p2, "offset"    # F

    .prologue
    .line 586
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 587
    :cond_0
    return-void

    .line 590
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 592
    invoke-direct {p0, p2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setScrollStripOffset(F)V

    .line 585
    return-void
.end method

.method public setTopStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setTopStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 596
    return-void
.end method

.method public setTopStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripDrawable:Landroid/graphics/drawable/Drawable;

    .line 602
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 600
    return-void
.end method

.method public setTopStripHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 606
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripHeight:I

    .line 607
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 605
    return-void
.end method

.method public setTopStripHeightResId(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripHeight:I

    .line 612
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 610
    return-void
.end method
