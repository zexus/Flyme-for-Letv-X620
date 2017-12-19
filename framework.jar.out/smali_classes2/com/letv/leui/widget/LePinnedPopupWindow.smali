.class public Lcom/letv/leui/widget/LePinnedPopupWindow;
.super Lcom/letv/leui/widget/LeBasePopupWindow;
.source "LePinnedPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;,
        Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final CACHE_THRESHOLD:I = 0x6

.field private static final POPUP_DIVICER_LAYOUT:I = 0x10900e0

.field private static final POPUP_SHADOW_OFFSET_X:I = 0x6

.field private static final POPUP_SHADOW_OFFSET_Y:I = 0xb

.field private static final POPUP_TEXT_LAYOUT:I = 0x10900e1


# instance fields
.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCacheViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mDividerCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDividerParamsHorizontal:Landroid/view/ViewGroup$LayoutParams;

.field private final mDividerParamsVertical:Landroid/view/ViewGroup$LayoutParams;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private final mItemHeight:I

.field private mItemTextColorList:Landroid/content/res/ColorStateList;

.field private mItemTextSize:F

.field private mItemVerticalMinWidth:I

.field private final mLayoutHorizontal:Z

.field private final mLayoutPadding:I

.field private mPopupItemGravity:I

.field private mScreenLocation:[I

.field private mTextPress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 41
    const v1, 0x10100aa

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 40
    sput-object v0, Lcom/letv/leui/widget/LePinnedPopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "isLayoutHorizontal"    # Z

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/LeBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mDividerCache:Ljava/util/ArrayList;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mCacheViews:Ljava/util/ArrayList;

    .line 47
    const/16 v1, 0x11

    iput v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mPopupItemGravity:I

    .line 50
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mItemTextSize:F

    .line 184
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mScreenLocation:[I

    .line 65
    iput-boolean p5, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutHorizontal:Z

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mItemHeight:I

    .line 69
    const v1, 0x1050163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutPadding:I

    .line 70
    const v1, 0x105016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mItemVerticalMinWidth:I

    .line 71
    const v1, 0x106019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mItemTextColorList:Landroid/content/res/ColorStateList;

    .line 73
    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mDividerParamsHorizontal:Landroid/view/ViewGroup$LayoutParams;

    .line 76
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mDividerParamsVertical:Landroid/view/ViewGroup$LayoutParams;

    .line 77
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LePinnedPopupWindow;->setClippingEnabled(Z)V

    .line 80
    const/16 v1, 0x3ea

    .line 79
    invoke-static {p0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 83
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x106000d

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 82
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LePinnedPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LePinnedPopupWindow;->setWidth(I)V

    .line 85
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LePinnedPopupWindow;->setHeight(I)V

    .line 87
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedPopupWindow;->initPopupDrawable()V

    .line 88
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePinnedPopupWindow;->getContainView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LePinnedPopupWindow;->setContainView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLayoutHorizontal"    # Z

    .prologue
    .line 60
    const/4 v2, 0x0

    const v3, 0x10102c8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/LePinnedPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    .line 59
    return-void
.end method

.method private addDivider()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 430
    invoke-direct {p0}, Lcom/letv/leui/widget/LePinnedPopupWindow;->getCacheDivider()Landroid/widget/ImageView;

    move-result-object v0

    .line 431
    .local v0, "divider":Landroid/widget/ImageView;
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutHorizontal:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mDividerParamsHorizontal:Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutHorizontal:Z

    if-eqz v1, :cond_2

    move v1, v2

    .line 434
    :goto_1
    iget-boolean v3, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutHorizontal:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutPadding:I

    .line 435
    :goto_2
    iget-boolean v4, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutHorizontal:Z

    if-eqz v4, :cond_4

    move v4, v2

    .line 436
    :goto_3
    iget-boolean v5, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutHorizontal:Z

    if-eqz v5, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutPadding:I

    .line 432
    :cond_0
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 438
    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 439
    return-object v0

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mDividerParamsVertical:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    .line 433
    :cond_2
    iget v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutPadding:I

    goto :goto_1

    :cond_3
    move v3, v2

    .line 434
    goto :goto_2

    .line 435
    :cond_4
    iget v4, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutPadding:I

    goto :goto_3
.end method

.method private getCacheDivider()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mDividerCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mDividerCache:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mDividerCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imageView":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 471
    :cond_0
    if-nez v0, :cond_1

    .line 472
    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x10900e0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 475
    :cond_1
    return-object v0
.end method

.method private recycleDivider(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mDividerCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mDividerCache:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_0
    return-void
.end method

.method private recycleView(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mCacheViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mCacheViews:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_0
    return-void
.end method

.method private setItemClickListener(Landroid/widget/TextView;ILcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "index"    # I
    .param p3, "onItemClickListener"    # Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    check-cast v0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    .line 509
    .local v0, "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    :goto_0
    iput p2, v0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->itemId:I

    .line 510
    iput-object p3, v0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->listener:Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;

    .line 512
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    return-void

    .line 505
    .local v0, "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    :cond_0
    new-instance v0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    .end local v0    # "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;-><init>(Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;)V

    .line 506
    .local v0, "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setPopupBackground(Z)V
    .locals 2
    .param p1, "isOnAnchorTop"    # Z

    .prologue
    .line 157
    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    if-eqz p1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mCurrentBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    :goto_1
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mCurrentBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private setTextViewSelector(Landroid/widget/TextView;IIZ)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "position"    # I
    .param p3, "length"    # I
    .param p4, "layoutHorizontal"    # Z

    .prologue
    .line 394
    if-nez p2, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 395
    const v0, 0x10805de

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 393
    :goto_0
    return-void

    .line 396
    :cond_0
    if-nez p2, :cond_2

    .line 397
    if-eqz p4, :cond_1

    .line 398
    const v0, 0x10805dc

    .line 397
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 399
    :cond_1
    const v0, 0x10805df

    goto :goto_1

    .line 400
    :cond_2
    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_4

    .line 401
    if-eqz p4, :cond_3

    .line 402
    const v0, 0x10805dd

    .line 401
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 403
    :cond_3
    const v0, 0x10805da

    goto :goto_2

    .line 405
    :cond_4
    const v0, 0x10805db

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public addItem(ILandroid/view/View$OnClickListener;)Lcom/letv/leui/widget/LePinnedPopupWindow;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/letv/leui/widget/LePinnedPopupWindow;->addItem(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/letv/leui/widget/LePinnedPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public addItem(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/letv/leui/widget/LePinnedPopupWindow;
    .locals 7
    .param p1, "itemName"    # Ljava/lang/CharSequence;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/LePinnedPopupWindow;->addTextView(Ljava/lang/CharSequence;IIILcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Landroid/widget/TextView;

    move-result-object v6

    .line 243
    .local v6, "textView":Landroid/widget/TextView;
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-object p0
.end method

.method public addItems(IILcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Lcom/letv/leui/widget/LePinnedPopupWindow;
    .locals 1
    .param p1, "arrayId"    # I
    .param p2, "popupItemGravity"    # I
    .param p3, "onClickListener"    # Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;

    .prologue
    .line 259
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/LePinnedPopupWindow;->setPopupItemGravity(I)V

    .line 260
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/letv/leui/widget/LePinnedPopupWindow;->addItems([Ljava/lang/String;Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Lcom/letv/leui/widget/LePinnedPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public addItems(ILcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Lcom/letv/leui/widget/LePinnedPopupWindow;
    .locals 1
    .param p1, "arrayId"    # I
    .param p2, "onClickListener"    # Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/letv/leui/widget/LePinnedPopupWindow;->addItems([Ljava/lang/String;Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Lcom/letv/leui/widget/LePinnedPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public addItems(I[ILcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Lcom/letv/leui/widget/LePinnedPopupWindow;
    .locals 1
    .param p1, "arrayId"    # I
    .param p2, "itemIds"    # [I
    .param p3, "onClickListener"    # Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/letv/leui/widget/LePinnedPopupWindow;->addItems([Ljava/lang/CharSequence;[ILcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Lcom/letv/leui/widget/LePinnedPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public addItems([Ljava/lang/CharSequence;[ILcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Lcom/letv/leui/widget/LePinnedPopupWindow;
    .locals 10
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "itemIds"    # [I
    .param p3, "onClickListener"    # Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;

    .prologue
    .line 317
    const/4 v7, 0x0

    .line 318
    .local v7, "dividerOnTop":Landroid/widget/ImageView;
    const/4 v6, 0x0

    .line 319
    .local v6, "dividerOnBottom":Landroid/widget/ImageView;
    const/4 v8, 0x0

    .line 320
    .local v8, "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    const/4 v3, 0x0

    .end local v6    # "dividerOnBottom":Landroid/widget/ImageView;
    .end local v7    # "dividerOnTop":Landroid/widget/ImageView;
    .end local v8    # "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    .local v3, "i":I
    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_2

    .line 321
    aget-object v1, p1, v3

    aget v2, p2, v3

    array-length v4, p1

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/LePinnedPopupWindow;->addTextView(Ljava/lang/CharSequence;IIILcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Landroid/widget/TextView;

    move-result-object v9

    .line 323
    .local v9, "textView":Landroid/widget/TextView;
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/letv/leui/widget/LePinnedPopupWindow;->addDivider()Landroid/widget/ImageView;

    move-result-object v6

    .line 329
    :goto_1
    invoke-virtual {v9}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v9}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    .line 334
    .local v8, "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    :goto_2
    invoke-virtual {v8, v7, v6}, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->addDivider(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 335
    move-object v7, v6

    .line 320
    .local v7, "dividerOnTop":Landroid/widget/ImageView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 326
    .end local v7    # "dividerOnTop":Landroid/widget/ImageView;
    .end local v8    # "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "dividerOnBottom":Landroid/widget/ImageView;
    goto :goto_1

    .line 332
    .end local v6    # "dividerOnBottom":Landroid/widget/ImageView;
    :cond_1
    new-instance v8, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;-><init>(Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;)V

    .restart local v8    # "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    goto :goto_2

    .line 337
    .end local v8    # "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    .end local v9    # "textView":Landroid/widget/TextView;
    :cond_2
    return-object p0
.end method

.method public addItems([Ljava/lang/String;Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Lcom/letv/leui/widget/LePinnedPopupWindow;
    .locals 10
    .param p1, "items"    # [Ljava/lang/String;
    .param p2, "onClickListener"    # Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;

    .prologue
    .line 271
    const/4 v7, 0x0

    .line 272
    .local v7, "dividerOnTop":Landroid/widget/ImageView;
    const/4 v6, 0x0

    .line 273
    .local v6, "dividerOnBottom":Landroid/widget/ImageView;
    const/4 v8, 0x0

    .line 274
    .local v8, "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    const/4 v2, 0x0

    .end local v6    # "dividerOnBottom":Landroid/widget/ImageView;
    .end local v7    # "dividerOnTop":Landroid/widget/ImageView;
    .end local v8    # "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    .local v2, "i":I
    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_2

    .line 275
    aget-object v1, p1, v2

    array-length v4, p1

    move-object v0, p0

    move v3, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/LePinnedPopupWindow;->addTextView(Ljava/lang/CharSequence;IIILcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Landroid/widget/TextView;

    move-result-object v9

    .line 276
    .local v9, "textView":Landroid/widget/TextView;
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/letv/leui/widget/LePinnedPopupWindow;->addDivider()Landroid/widget/ImageView;

    move-result-object v6

    .line 282
    :goto_1
    invoke-virtual {v9}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {v9}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    .line 287
    .local v8, "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    :goto_2
    invoke-virtual {v8, v7, v6}, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->addDivider(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 288
    move-object v7, v6

    .line 274
    .local v7, "dividerOnTop":Landroid/widget/ImageView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    .end local v7    # "dividerOnTop":Landroid/widget/ImageView;
    .end local v8    # "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "dividerOnBottom":Landroid/widget/ImageView;
    goto :goto_1

    .line 285
    .end local v6    # "dividerOnBottom":Landroid/widget/ImageView;
    :cond_1
    new-instance v8, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;-><init>(Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;)V

    .restart local v8    # "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    goto :goto_2

    .line 290
    .end local v8    # "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    .end local v9    # "textView":Landroid/widget/TextView;
    :cond_2
    return-object p0
.end method

.method protected addTextView(Ljava/lang/CharSequence;IIILcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Landroid/widget/TextView;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "id"    # I
    .param p3, "position"    # I
    .param p4, "length"    # I
    .param p5, "listener"    # Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedPopupWindow;->getCacheView()Landroid/widget/TextView;

    move-result-object v0

    .line 411
    .local v0, "textView":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutHorizontal:Z

    if-nez v1, :cond_0

    .line 412
    iget v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mItemVerticalMinWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 414
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mItemHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 415
    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mItemTextColorList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mItemTextColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 417
    :cond_1
    iget v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mItemTextSize:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 418
    iget v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mItemTextSize:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 419
    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mPopupItemGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 421
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutHorizontal:Z

    invoke-direct {p0, v0, p3, p4, v1}, Lcom/letv/leui/widget/LePinnedPopupWindow;->setTextViewSelector(Landroid/widget/TextView;IIZ)V

    .line 422
    invoke-direct {p0, v0, p2, p5}, Lcom/letv/leui/widget/LePinnedPopupWindow;->setItemClickListener(Landroid/widget/TextView;ILcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)V

    .line 423
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 424
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setId(I)V

    .line 425
    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 426
    return-object v0
.end method

.method public changeItems([Ljava/lang/String;Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Lcom/letv/leui/widget/LePinnedPopupWindow;
    .locals 0
    .param p1, "newItems"    # [Ljava/lang/String;
    .param p2, "onItemClickListener"    # Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedPopupWindow;->removeAllChildViews()V

    .line 343
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LePinnedPopupWindow;->addItems([Ljava/lang/String;Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Lcom/letv/leui/widget/LePinnedPopupWindow;

    .line 344
    return-object p0
.end method

.method public changeItems([Ljava/lang/String;[ILcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Lcom/letv/leui/widget/LePinnedPopupWindow;
    .locals 0
    .param p1, "newItems"    # [Ljava/lang/String;
    .param p2, "newItemIds"    # [I
    .param p3, "onItemClickListener"    # Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedPopupWindow;->removeAllChildViews()V

    .line 350
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/LePinnedPopupWindow;->addItems([Ljava/lang/CharSequence;[ILcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Lcom/letv/leui/widget/LePinnedPopupWindow;

    .line 351
    return-object p0
.end method

.method protected getAdjustVerticalOffset()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method protected getCacheView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mCacheViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mCacheViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mCacheViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "textView":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 448
    :cond_0
    if-nez v0, :cond_1

    .line 449
    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedPopupWindow;->getPopupItemLayoutResId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 452
    :cond_1
    return-object v0
.end method

.method public getContainView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x2

    .line 92
    iget-object v3, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedPopupWindow;->isLayoutHorizontal()Z

    move-result v1

    .line 94
    .local v1, "isHorizontal":Z
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 95
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 96
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 98
    .local v0, "contentParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iput-object v2, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 102
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/LePinnedPopupWindow;->setPopupBackground(Z)V

    .line 104
    .end local v0    # "contentParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "isHorizontal":Z
    .end local v2    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    return-object v3

    .restart local v1    # "isHorizontal":Z
    .restart local v2    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1
    move v3, v4

    .line 95
    goto :goto_0
.end method

.method public getItem(I)Landroid/widget/TextView;
    .locals 3
    .param p1, "itemId"    # I

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 117
    return-object v2

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "childView":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 121
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "childView":Landroid/view/View;
    return-object v0

    .line 124
    .restart local v0    # "childView":Landroid/view/View;
    :cond_1
    return-object v2
.end method

.method public getPopupItemLayoutResId()I
    .locals 1

    .prologue
    .line 456
    const v0, 0x10900e1

    return v0
.end method

.method public initPopupDrawable()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/high16 v2, 0x41000000    # 8.0f

    .line 178
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/letv/leui/widget/LePopupDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/letv/leui/widget/LePopupDrawable;-><init>(FIZ)V

    iput-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Lcom/letv/leui/widget/LePopupDrawable;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/letv/leui/widget/LePopupDrawable;-><init>(FIZ)V

    iput-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 177
    :cond_1
    return-void
.end method

.method public isLayoutHorizontal()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutHorizontal:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    .line 518
    .local v0, "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    iget-object v1, v0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->listener:Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, v0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->listener:Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;

    iget v2, v0, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->itemId:I

    invoke-interface {v1, v2}, Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;->onClick(I)V

    .line 516
    :cond_0
    return-void
.end method

.method protected onPopupPositionChange(Z)V
    .locals 0
    .param p1, "isOnAnchorTop"    # Z

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePinnedPopupWindow;->setPopupBackground(Z)V

    .line 152
    return-void
.end method

.method protected onPrevShow(Landroid/view/View;III)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "posX"    # I
    .param p3, "posY"    # I
    .param p4, "contentWidth"    # I

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 188
    .local v2, "anchorWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 189
    .local v1, "anchorHeight":I
    iget-object v6, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mScreenLocation:[I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 191
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 192
    .local v5, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 194
    add-int v6, p2, p4

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedPopupWindow;->isClippingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int p2, v6, p4

    .line 198
    :cond_0
    iget-object v6, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mScreenLocation:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    div-int/lit8 v7, v2, 0x2

    add-int v0, v6, v7

    .line 199
    .local v0, "anchorCenterX":I
    div-int/lit8 v6, p4, 0x2

    add-int v4, p2, v6

    .line 201
    .local v4, "contentCenterX":I
    sub-int v3, v0, v4

    .line 202
    .local v3, "arrowOffset":I
    sget v6, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    sub-int v6, p4, v6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x8

    if-le v3, v6, :cond_1

    .line 203
    sget v6, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    sub-int v6, p4, v6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v3, v6, -0x8

    .line 205
    :cond_1
    sget v6, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    sub-int v6, p4, v6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x8

    neg-int v6, v6

    if-ge v3, v6, :cond_2

    .line 206
    sget v6, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    sub-int v6, p4, v6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x8

    neg-int v3, v6

    .line 209
    :cond_2
    iget-object v6, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mCurrentBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    .line 210
    iget-object v6, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mCurrentBgDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v6, Lcom/letv/leui/widget/LePopupDrawable;

    invoke-virtual {v6, v3}, Lcom/letv/leui/widget/LePopupDrawable;->setArrowOffset(I)V

    .line 186
    :cond_3
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 356
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 357
    .local v0, "action":I
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 358
    check-cast v3, Landroid/widget/TextView;

    .line 359
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 360
    .local v2, "res":Landroid/content/res/Resources;
    packed-switch v0, :pswitch_data_0

    .line 390
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return v6

    .line 362
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "textView":Landroid/widget/TextView;
    :pswitch_0
    invoke-virtual {v3}, Landroid/widget/TextView;->isPressed()Z

    move-result v4

    iput-boolean v4, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mTextPress:Z

    .line 363
    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    if-eqz v4, :cond_0

    .line 364
    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    .line 365
    .local v1, "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    iget-boolean v4, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutHorizontal:Z

    iget v5, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutPadding:I

    invoke-virtual {v1, v7, v4, v5}, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->updateState(ZZI)V

    goto :goto_0

    .line 369
    .end local v1    # "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    :pswitch_1
    invoke-virtual {v3}, Landroid/widget/TextView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 370
    iput-boolean v7, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mTextPress:Z

    goto :goto_0

    .line 371
    :cond_1
    iget-boolean v4, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mTextPress:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->isPressed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 372
    iput-boolean v6, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mTextPress:Z

    .line 373
    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    if-eqz v4, :cond_0

    .line 374
    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    .line 375
    .restart local v1    # "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    iget-boolean v4, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutHorizontal:Z

    iget v5, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutPadding:I

    invoke-virtual {v1, v6, v4, v5}, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->updateState(ZZI)V

    goto :goto_0

    .line 382
    .end local v1    # "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    :pswitch_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    if-eqz v4, :cond_0

    .line 383
    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;

    .line 384
    .restart local v1    # "holder":Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;
    iget-boolean v4, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutHorizontal:Z

    iget v5, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mLayoutPadding:I

    invoke-virtual {v1, v6, v4, v5}, Lcom/letv/leui/widget/LePinnedPopupWindow$ActionItemHolder;->updateState(ZZI)V

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected removeAllChildViews()V
    .locals 4

    .prologue
    .line 486
    iget-object v3, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 488
    .local v1, "size":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 489
    iget-object v3, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 490
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 491
    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "view":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LePinnedPopupWindow;->recycleView(Landroid/widget/TextView;)V

    .line 495
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 488
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 492
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 493
    check-cast v2, Landroid/widget/ImageView;

    .end local v2    # "view":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LePinnedPopupWindow;->recycleDivider(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 485
    :cond_2
    return-void
.end method

.method public setArrowVisible(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/LePopupDrawable;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/LePopupDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupDrawable;->setArrowVisible(Z)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/LePopupDrawable;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/LePopupDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupDrawable;->setArrowVisible(Z)V

    .line 168
    :cond_1
    return-void
.end method

.method public setItemEnabled(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePinnedPopupWindow;->getItem(I)Landroid/widget/TextView;

    move-result-object v0

    .line 110
    .local v0, "item":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 107
    :cond_0
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "itemColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mItemTextColorList:Landroid/content/res/ColorStateList;

    .line 134
    return-void
.end method

.method public setItemTextSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 145
    iput p1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mItemTextSize:F

    .line 144
    return-void
.end method

.method public setPopupItemGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/letv/leui/widget/LePinnedPopupWindow;->mPopupItemGravity:I

    .line 219
    return-void
.end method
