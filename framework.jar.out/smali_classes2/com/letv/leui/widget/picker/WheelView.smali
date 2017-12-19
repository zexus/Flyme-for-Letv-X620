.class public Lcom/letv/leui/widget/picker/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/picker/WheelView$1;,
        Lcom/letv/leui/widget/picker/WheelView$2;
    }
.end annotation


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEM_OFFSET_PERCENT:I = 0xa

.field private static final PADDING:I

.field private static final SHADOWS_COLORS:[I


# instance fields
.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerColor:I

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/picker/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/picker/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private curItem_uncyclic:I

.field private currentItem:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private firstItem:I

.field fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private isVertical:Z

.field private itemHeight:I

.field private itemStrokeWidth:F

.field private itemTextSize:I

.field private itemWidth:I

.field private itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

.field private itemsWidth:I

.field private label:Ljava/lang/String;

.field labelHeight:F

.field private labelOffset:I

.field private labelPaint:Landroid/graphics/Paint;

.field private labelStrokeWidth:F

.field private labelTextSize:I

.field labelWidth:F

.field private normalColor:I

.field private recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

.field public scrollLimit:I

.field private scroller:Lcom/letv/leui/widget/picker/WheelScroller;

.field scrollingListener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/picker/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private uScrollingOffset:I

.field private viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

.field private visibleItems:I


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/picker/WheelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isScrollingPerformed:Z

    return v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/picker/WheelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    return v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/picker/WheelView;)Lcom/letv/leui/widget/picker/WheelScroller;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/picker/WheelView;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    return v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/picker/WheelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/WheelView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic -set1(Lcom/letv/leui/widget/picker/WheelView;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/picker/WheelView;I)V
    .locals 0
    .param p1, "delta"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->doScroll(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const v0, 0x70ffffff

    .line 41
    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/letv/leui/widget/picker/WheelView;->SHADOWS_COLORS:[I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 56
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    .line 59
    const/4 v0, 0x5

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    .line 62
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    .line 63
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    .line 83
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    .line 96
    new-instance v0, Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelRecycle;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    .line 112
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    .line 194
    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$1;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    .line 418
    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$2;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 143
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->initData(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 56
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    .line 59
    const/4 v0, 0x5

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    .line 62
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    .line 63
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    .line 83
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    .line 96
    new-instance v0, Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelRecycle;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    .line 112
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    .line 194
    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$1;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    .line 418
    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$2;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 135
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->initData(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 56
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    .line 59
    const/4 v0, 0x5

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    .line 62
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    .line 63
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    .line 83
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    .line 96
    new-instance v0, Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelRecycle;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    .line 112
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    .line 194
    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$1;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    .line 418
    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$2;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 127
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->initData(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method private addViewItem(IZ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "first"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1264
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    .line 1265
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1266
    if-eqz p2, :cond_0

    .line 1267
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1, v0, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->addView(Landroid/view/View;I)V

    .line 1271
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1269
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1273
    :cond_1
    return v2
.end method

.method private buildViewForMeasuring()V
    .locals 6

    .prologue
    .line 1243
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v2, :cond_1

    .line 1244
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    iget v4, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    new-instance v5, Lcom/letv/leui/widget/picker/ItemsRange;

    invoke-direct {v5}, Lcom/letv/leui/widget/picker/ItemsRange;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/letv/leui/widget/picker/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/letv/leui/widget/picker/ItemsRange;)I

    .line 1249
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    div-int/lit8 v0, v2, 0x2

    .line 1250
    .local v0, "addItems":I
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int v1, v2, v0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_2

    .line 1251
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1252
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    .line 1250
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1246
    .end local v0    # "addItems":I
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->createItemsLayout()V

    goto :goto_0

    .line 1241
    .restart local v0    # "addItems":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method private calculateLayoutWidth(II)I
    .locals 6
    .param p1, "widthSize"    # I
    .param p2, "mode"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 728
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initResourcesIfNecessary()V

    .line 729
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 731
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 730
    invoke-virtual {v1, v2, v3}, Lcom/letv/leui/widget/picker/MyLinearLayout;->measure(II)V

    .line 732
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 734
    .local v0, "width":I
    if-ne p2, v5, :cond_1

    .line 735
    move v0, p1

    .line 745
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    add-int/lit8 v2, v0, 0x0

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 746
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 745
    invoke-virtual {v1, v2, v3}, Lcom/letv/leui/widget/picker/MyLinearLayout;->measure(II)V

    .line 747
    return v0

    .line 737
    :cond_1
    add-int/lit8 v0, v0, 0x0

    .line 739
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 741
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 742
    move v0, p1

    goto :goto_0
.end method

.method private createItemsLayout()V
    .locals 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-nez v0, :cond_0

    .line 1228
    new-instance v0, Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    .line 1230
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setOrientation(I)V

    .line 1234
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setWhellView(Lcom/letv/leui/widget/picker/WheelView;)V

    .line 1226
    :cond_0
    return-void

    .line 1233
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method private doScroll(I)V
    .locals 12
    .param p1, "delta"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 958
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    add-int/2addr v8, p1

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 960
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    add-int/2addr v8, p1

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    .line 961
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v8, :cond_f

    .line 962
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v3

    .line 963
    .local v3, "itemHeight":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    div-int v0, v8, v3

    .line 965
    .local v0, "count":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    sub-int v6, v8, v0

    .line 966
    .local v6, "pos":I
    iget-object v8, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v8}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 968
    .local v2, "itemCount":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    rem-int v1, v8, v3

    .line 969
    .local v1, "fixPos":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    div-int/lit8 v9, v3, 0x2

    if-gt v8, v9, :cond_0

    .line 970
    const/4 v1, 0x0

    .line 972
    :cond_0
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    if-eqz v8, :cond_7

    if-lez v2, :cond_7

    .line 973
    if-lez v1, :cond_2

    .line 974
    add-int/lit8 v6, v6, -0x1

    .line 975
    add-int/lit8 v0, v0, 0x1

    .line 981
    :cond_1
    :goto_0
    if-gez v6, :cond_3

    .line 982
    add-int/2addr v6, v2

    goto :goto_0

    .line 976
    :cond_2
    if-gez v1, :cond_1

    .line 977
    add-int/lit8 v6, v6, 0x1

    .line 978
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 984
    :cond_3
    rem-int/2addr v6, v2

    .line 1002
    :cond_4
    :goto_1
    iget v5, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 1003
    .local v5, "offset":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    if-eq v6, v8, :cond_b

    .line 1004
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    sub-int/2addr v8, v0

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    .line 1005
    invoke-virtual {p0, v6, v11}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(IZ)V

    .line 1006
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/WheelView;->notifyChangingListeners(I)V

    .line 1011
    :goto_2
    mul-int v8, v0, v3

    sub-int v8, v5, v8

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 1012
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_5

    .line 1013
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v9

    rem-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 1016
    :cond_5
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    rem-int v7, v8, v3

    .line 1017
    .local v7, "temUScrollingOffset":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-nez v8, :cond_c

    .line 1018
    iput v10, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    .line 956
    .end local v3    # "itemHeight":I
    :cond_6
    :goto_3
    return-void

    .line 987
    .end local v5    # "offset":I
    .end local v7    # "temUScrollingOffset":I
    .restart local v3    # "itemHeight":I
    :cond_7
    if-gez v6, :cond_8

    .line 988
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 989
    const/4 v6, 0x0

    goto :goto_1

    .line 990
    :cond_8
    if-lt v6, v2, :cond_9

    .line 991
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    sub-int/2addr v8, v2

    add-int/lit8 v0, v8, 0x1

    .line 992
    add-int/lit8 v6, v2, -0x1

    goto :goto_1

    .line 993
    :cond_9
    if-lez v6, :cond_a

    if-lez v1, :cond_a

    .line 994
    add-int/lit8 v6, v6, -0x1

    .line 995
    add-int/lit8 v0, v0, 0x1

    .line 993
    goto :goto_1

    .line 996
    :cond_a
    add-int/lit8 v8, v2, -0x1

    if-ge v6, v8, :cond_4

    if-gez v1, :cond_4

    .line 997
    add-int/lit8 v6, v6, 0x1

    .line 998
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1008
    .restart local v5    # "offset":I
    :cond_b
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    goto :goto_2

    .line 1019
    .restart local v7    # "temUScrollingOffset":I
    :cond_c
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v3, :cond_d

    .line 1020
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    if-ne v8, v3, :cond_e

    .line 1022
    :cond_d
    :goto_4
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    rem-int/2addr v8, v3

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    goto :goto_3

    .line 1021
    :cond_e
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-ne v8, v7, :cond_6

    goto :goto_4

    .line 1026
    .end local v0    # "count":I
    .end local v1    # "fixPos":I
    .end local v2    # "itemCount":I
    .end local v3    # "itemHeight":I
    .end local v5    # "offset":I
    .end local v6    # "pos":I
    .end local v7    # "temUScrollingOffset":I
    :cond_f
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v4

    .line 1027
    .local v4, "itemWidth":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    div-int v0, v8, v4

    .line 1029
    .restart local v0    # "count":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    sub-int v6, v8, v0

    .line 1030
    .restart local v6    # "pos":I
    iget-object v8, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v8}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 1032
    .restart local v2    # "itemCount":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    rem-int v1, v8, v4

    .line 1033
    .restart local v1    # "fixPos":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    div-int/lit8 v9, v4, 0x2

    if-gt v8, v9, :cond_10

    .line 1034
    const/4 v1, 0x0

    .line 1036
    :cond_10
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    if-eqz v8, :cond_16

    if-lez v2, :cond_16

    .line 1037
    if-lez v1, :cond_12

    .line 1038
    add-int/lit8 v6, v6, -0x1

    .line 1039
    add-int/lit8 v0, v0, 0x1

    .line 1045
    :cond_11
    :goto_5
    if-gez v6, :cond_13

    .line 1046
    add-int/2addr v6, v2

    goto :goto_5

    .line 1040
    :cond_12
    if-gez v1, :cond_11

    .line 1041
    add-int/lit8 v6, v6, 0x1

    .line 1042
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 1048
    :cond_13
    rem-int/2addr v6, v2

    .line 1066
    :cond_14
    :goto_6
    iget v5, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 1067
    .restart local v5    # "offset":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    if-eq v6, v8, :cond_1a

    .line 1068
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    .line 1069
    invoke-virtual {p0, v6, v11}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(IZ)V

    .line 1070
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/WheelView;->notifyChangingListeners(I)V

    .line 1075
    :goto_7
    mul-int v8, v0, v4

    sub-int v8, v5, v8

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 1076
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v9

    if-le v8, v9, :cond_15

    .line 1077
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v9

    rem-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 1080
    :cond_15
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    rem-int v7, v8, v4

    .line 1081
    .restart local v7    # "temUScrollingOffset":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-nez v8, :cond_1b

    .line 1082
    iput v10, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    goto/16 :goto_3

    .line 1051
    .end local v5    # "offset":I
    .end local v7    # "temUScrollingOffset":I
    :cond_16
    if-gez v6, :cond_17

    .line 1052
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 1053
    const/4 v6, 0x0

    goto :goto_6

    .line 1054
    :cond_17
    if-lt v6, v2, :cond_18

    .line 1055
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    sub-int/2addr v8, v2

    add-int/lit8 v0, v8, 0x1

    .line 1056
    add-int/lit8 v6, v2, -0x1

    goto :goto_6

    .line 1057
    :cond_18
    if-lez v6, :cond_19

    if-lez v1, :cond_19

    .line 1058
    add-int/lit8 v6, v6, -0x1

    .line 1059
    add-int/lit8 v0, v0, 0x1

    .line 1057
    goto :goto_6

    .line 1060
    :cond_19
    add-int/lit8 v8, v2, -0x1

    if-ge v6, v8, :cond_14

    if-gez v1, :cond_14

    .line 1061
    add-int/lit8 v6, v6, 0x1

    .line 1062
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1072
    .restart local v5    # "offset":I
    :cond_1a
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    goto :goto_7

    .line 1083
    .restart local v7    # "temUScrollingOffset":I
    :cond_1b
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v4, :cond_1c

    .line 1084
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    if-ne v8, v4, :cond_1d

    .line 1086
    :cond_1c
    :goto_8
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    rem-int/2addr v8, v4

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    goto/16 :goto_3

    .line 1085
    :cond_1d
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-ne v8, v7, :cond_6

    goto :goto_8
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 897
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 898
    .local v6, "center":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 899
    .local v8, "offset":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 900
    .local v5, "mPaint":Landroid/graphics/Paint;
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 901
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v7

    .line 902
    .local v7, "childHeight":I
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v0, :cond_0

    .line 903
    const v0, -0xf888889

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 904
    sub-int v0, v6, v8

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    sub-int v0, v6, v8

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 905
    add-int v0, v6, v8

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    add-int v0, v6, v8

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 896
    :cond_0
    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 877
    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v1, :cond_2

    .line 878
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 879
    const/4 v0, 0x0

    .line 880
    .local v0, "top":I
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 881
    const/4 v1, 0x0

    neg-int v2, v0

    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 882
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 884
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 876
    .end local v0    # "top":I
    :cond_1
    :goto_0
    return-void

    .line 886
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v1, :cond_1

    .line 887
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawLabel(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 850
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 851
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v4}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v3, v4

    .line 852
    .local v3, "x":F
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .line 853
    .local v2, "top":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 854
    .local v1, "bottom":I
    sub-int v4, v1, v2

    iget-object v5, p0, Lcom/letv/leui/widget/picker/WheelView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/letv/leui/widget/picker/WheelView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/letv/leui/widget/picker/WheelView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v4, v5

    .line 856
    .local v0, "baseline":I
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    iget v5, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    int-to-float v6, v0

    iget-object v7, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 849
    .end local v0    # "baseline":I
    .end local v1    # "bottom":I
    .end local v2    # "top":I
    .end local v3    # "x":F
    :cond_1
    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 865
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 866
    .local v0, "height":I
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v6, v6, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 867
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 868
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 869
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 864
    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .locals 5
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v4, 0x0

    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, "desired":I
    if-eqz p1, :cond_0

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 669
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 670
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 669
    add-int/2addr v2, v3

    iput v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    .line 672
    :cond_0
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v2, :cond_1

    .line 673
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    mul-int v0, v2, v3

    .line 676
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 677
    .local v1, "minHeight":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 675
    .end local v1    # "minHeight":I
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    goto :goto_0
.end method

.method private getFirstItemCyclic()I
    .locals 5

    .prologue
    .line 1154
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemsRange()Lcom/letv/leui/widget/picker/ItemsRange;

    move-result-object v2

    .line 1155
    .local v2, "range":Lcom/letv/leui/widget/picker/ItemsRange;
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v0

    .line 1156
    .local v0, "first":I
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    sub-int v3, v0, v3

    iget v4, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int v1, v3, v4

    .line 1157
    .local v1, "firstCyclic":I
    return v1
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1298
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1299
    :cond_0
    return-object v2

    .line 1301
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 1303
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1304
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-interface {v1, v2, v3}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 1307
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v1, v1, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v1, :cond_3

    .line 1308
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-interface {v1, p1, v2, v3}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 1310
    :cond_3
    :goto_0
    if-gez p1, :cond_4

    .line 1311
    add-int/2addr p1, v0

    goto :goto_0

    .line 1313
    :cond_4
    rem-int/2addr p1, v0

    .line 1314
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-interface {v1, p1, v2, v3}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private initData(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    new-instance v1, Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    iget-boolean v4, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/letv/leui/widget/picker/WheelScroller;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;Z)V

    iput-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    .line 160
    new-instance v0, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "%02d"

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 163
    .local v0, "view":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    const/16 v1, 0x10

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    .line 164
    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->getStrokeWidth()F

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemStrokeWidth:F

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelStrokeWidth:F

    .line 169
    const v1, -0xde5132

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->centerColor:I

    .line 170
    const v1, -0x434344

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->normalColor:I

    .line 158
    return-void
.end method

.method private initItem()V
    .locals 3

    .prologue
    .line 751
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v1, v1, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v1, :cond_1

    .line 752
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    check-cast v0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    .line 753
    .local v0, "textAdapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    if-lez v1, :cond_0

    .line 754
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setTextSize(I)V

    .line 755
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemStrokeWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 756
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemStrokeWidth:F

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setStrokeWidth(F)V

    .line 750
    .end local v0    # "textAdapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    :cond_1
    return-void
.end method

.method private initLabelPaint()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 761
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 762
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    .line 763
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    const-string/jumbo v2, "hans-sans-light"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 767
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelStrokeWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 768
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->labelStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 769
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 771
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->centerColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 772
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    if-lez v1, :cond_2

    .line 773
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    int-to-float v1, v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 775
    .local v0, "scale":F
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, v0

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 776
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 760
    .end local v0    # "scale":F
    :cond_2
    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 3

    .prologue
    .line 646
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108064c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 651
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/letv/leui/widget/picker/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 655
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/letv/leui/widget/picker/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 645
    :cond_2
    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1284
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v2, v2, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v2, :cond_0

    .line 1285
    return v0

    .line 1287
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v2}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 1288
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    if-nez v2, :cond_1

    if-ltz p1, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v2}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 1287
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 1288
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1287
    goto :goto_0
.end method

.method private layout(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 829
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsWidth:I

    invoke-virtual {v0, v2, v2, v1, p2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->layout(IIII)V

    .line 828
    return-void
.end method

.method private rebuildItems()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1170
    const/4 v5, 0x0

    .line 1171
    .local v5, "updated":Z
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemsRange()Lcom/letv/leui/widget/picker/ItemsRange;

    move-result-object v2

    .line 1172
    .local v2, "range":Lcom/letv/leui/widget/picker/ItemsRange;
    const/4 v4, 0x0

    .line 1173
    .local v4, "tempFirst":I
    iget-object v6, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v6, :cond_5

    .line 1174
    iget-object v6, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    iget-object v7, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    invoke-virtual {v6, v7, v8, v2}, Lcom/letv/leui/widget/picker/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/letv/leui/widget/picker/ItemsRange;)I

    move-result v3

    .line 1175
    .local v3, "temp":I
    iget v6, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    if-eq v6, v3, :cond_4

    const/4 v5, 0x1

    .line 1176
    :goto_0
    move v4, v3

    .line 1182
    .end local v3    # "temp":I
    :goto_1
    if-nez v5, :cond_1

    .line 1183
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v6

    if-ne v4, v6, :cond_0

    iget-object v6, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v6}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildCount()I

    move-result v6

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getCount()I

    move-result v7

    if-eq v6, v7, :cond_6

    :cond_0
    const/4 v5, 0x1

    .line 1186
    :cond_1
    :goto_2
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v6

    if-le v4, v6, :cond_8

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getLast()I

    move-result v6

    if-gt v4, v6, :cond_8

    .line 1187
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_3
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 1188
    const/4 v6, 0x1

    invoke-direct {p0, v1, v6}, Lcom/letv/leui/widget/picker/WheelView;->addViewItem(IZ)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1197
    .end local v1    # "i":I
    :cond_2
    :goto_4
    move v3, v4

    .line 1198
    .restart local v3    # "temp":I
    iget-object v6, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v6}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildCount()I

    move-result v1

    .restart local v1    # "i":I
    :goto_5
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_9

    .line 1199
    add-int v6, v4, v1

    invoke-direct {p0, v6, v9}, Lcom/letv/leui/widget/picker/WheelView;->addViewItem(IZ)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v6}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildCount()I

    move-result v6

    if-nez v6, :cond_3

    .line 1200
    add-int/lit8 v3, v3, 0x1

    .line 1198
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1175
    .end local v1    # "i":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 1178
    .end local v3    # "temp":I
    :cond_5
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->createItemsLayout()V

    .line 1179
    const/4 v5, 0x1

    goto :goto_1

    .line 1183
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 1191
    .restart local v1    # "i":I
    :cond_7
    move v4, v1

    .line 1187
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1194
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v4

    goto :goto_4

    .line 1204
    .restart local v1    # "i":I
    .restart local v3    # "temp":I
    :cond_9
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->getFirstItemCyclic()I

    move-result v0

    .line 1205
    .local v0, "c":I
    iget-object v6, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v6, v6, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v6, :cond_a

    .line 1206
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v6

    sub-int v6, v3, v6

    add-int/2addr v6, v0

    iput v6, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    .line 1209
    :goto_6
    iget-object v6, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v6}, Lcom/letv/leui/widget/picker/MyLinearLayout;->requestLayout()V

    .line 1210
    return v5

    .line 1208
    :cond_a
    iput v3, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    goto :goto_6
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 1217
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->calculateLayoutWidth(II)I

    .line 1219
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->layout(II)V

    .line 1216
    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelChangedListener;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    return-void
.end method

.method public addClickingListener(Lcom/letv/leui/widget/picker/OnWheelClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelClickedListener;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    return-void
.end method

.method public addScrollingListener(Lcom/letv/leui/widget/picker/OnWheelScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelScrollListener;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method public getCenterTextColot()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->centerColor:I

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    return v0
.end method

.method public getIsVertical()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    return v0
.end method

.method public getItemHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 691
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    .line 692
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    return v0

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 697
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 696
    add-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    .line 698
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    return v0

    .line 701
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getItemTextSize()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    return v0
.end method

.method public getItemWidth()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 710
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    if-eqz v0, :cond_0

    .line 711
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    return v0

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    .line 716
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    return v0

    .line 718
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsWidth:I

    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getItemsRange()Lcom/letv/leui/widget/picker/ItemsRange;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1105
    const/4 v2, 0x0

    .line 1106
    .local v2, "first":I
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v3, v3, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v3, :cond_0

    .line 1107
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    .line 1110
    :goto_0
    const/4 v0, 0x1

    .line 1111
    .local v0, "count":I
    iget-boolean v3, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v3, :cond_5

    .line 1112
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v3

    if-nez v3, :cond_1

    .line 1113
    return-object v4

    .line 1109
    .end local v0    # "count":I
    :cond_0
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    goto :goto_0

    .line 1115
    .restart local v0    # "count":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1116
    add-int/lit8 v2, v2, -0x1

    .line 1117
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1120
    :cond_2
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-eqz v3, :cond_4

    .line 1121
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-lez v3, :cond_3

    .line 1122
    add-int/lit8 v2, v2, -0x1

    .line 1124
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1126
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .line 1127
    .local v1, "emptyItems":I
    sub-int/2addr v2, v1

    .line 1128
    int-to-double v4, v0

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 1150
    .end local v1    # "emptyItems":I
    :cond_4
    :goto_2
    new-instance v3, Lcom/letv/leui/widget/picker/ItemsRange;

    invoke-direct {v3, v2, v0}, Lcom/letv/leui/widget/picker/ItemsRange;-><init>(II)V

    return-object v3

    .line 1131
    :cond_5
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v3

    if-nez v3, :cond_6

    .line 1132
    return-object v4

    .line 1134
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v3

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsWidth:I

    if-ge v3, v4, :cond_7

    .line 1135
    add-int/lit8 v2, v2, -0x1

    .line 1136
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 1139
    :cond_7
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-eqz v3, :cond_4

    .line 1140
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-lez v3, :cond_8

    .line 1141
    add-int/lit8 v2, v2, -0x1

    .line 1143
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 1145
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .line 1146
    .restart local v1    # "emptyItems":I
    sub-int/2addr v2, v1

    .line 1147
    int-to-double v4, v0

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_2
.end method

.method public getLabelOffset()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    return v0
.end method

.method public getLabelTextSize()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    return v0
.end method

.method public getLable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalTextColor()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->normalColor:I

    return v0
.end method

.method public getScroller()Lcom/letv/leui/widget/picker/WheelScroller;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    return-object v0
.end method

.method public getScrollingOffset()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    return v0
.end method

.method public getUOffset()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    return v0
.end method

.method public getViewAdapter()Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    return v0
.end method

.method public invalidateWheel(Z)V
    .locals 4
    .param p1, "clearCaches"    # Z

    .prologue
    .line 628
    if-eqz p1, :cond_2

    .line 629
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelRecycle;->clearAll()V

    .line 630
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->removeAllViews()V

    .line 633
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 639
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    .line 627
    return-void

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    new-instance v3, Lcom/letv/leui/widget/picker/ItemsRange;

    invoke-direct {v3}, Lcom/letv/leui/widget/picker/ItemsRange;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/picker/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/letv/leui/widget/picker/ItemsRange;)I

    goto :goto_0
.end method

.method public isCyclic()Z
    .locals 1

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(I)V
    .locals 3
    .param p1, "diff"    # I

    .prologue
    .line 486
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/picker/OnWheelChangedListener;

    .line 487
    .local v0, "listener":Lcom/letv/leui/widget/picker/OnWheelChangedListener;
    invoke-virtual {v0, p0, p1}, Lcom/letv/leui/widget/picker/OnWheelChangedListener;->onChangedDiff(Lcom/letv/leui/widget/picker/WheelView;I)V

    goto :goto_0

    .line 485
    .end local v0    # "listener":Lcom/letv/leui/widget/picker/OnWheelChangedListener;
    :cond_0
    return-void
.end method

.method protected notifyChangingListeners(II)V
    .locals 3
    .param p1, "oldValue"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 480
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/picker/OnWheelChangedListener;

    .line 481
    .local v0, "listener":Lcom/letv/leui/widget/picker/OnWheelChangedListener;
    invoke-virtual {v0, p0, p1, p2}, Lcom/letv/leui/widget/picker/OnWheelChangedListener;->onChanged(Lcom/letv/leui/widget/picker/WheelView;II)V

    goto :goto_0

    .line 479
    .end local v0    # "listener":Lcom/letv/leui/widget/picker/OnWheelChangedListener;
    :cond_0
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 545
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/picker/OnWheelClickedListener;

    .line 546
    .local v0, "listener":Lcom/letv/leui/widget/picker/OnWheelClickedListener;
    invoke-interface {v0, p0, p1}, Lcom/letv/leui/widget/picker/OnWheelClickedListener;->onItemClicked(Lcom/letv/leui/widget/picker/WheelView;I)V

    goto :goto_0

    .line 544
    .end local v0    # "listener":Lcom/letv/leui/widget/picker/OnWheelClickedListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 3

    .prologue
    .line 520
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/picker/OnWheelScrollListener;

    .line 521
    .local v0, "listener":Lcom/letv/leui/widget/picker/OnWheelScrollListener;
    invoke-interface {v0, p0}, Lcom/letv/leui/widget/picker/OnWheelScrollListener;->onScrollingFinished(Lcom/letv/leui/widget/picker/WheelView;)V

    goto :goto_0

    .line 519
    .end local v0    # "listener":Lcom/letv/leui/widget/picker/OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 3

    .prologue
    .line 511
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/picker/OnWheelScrollListener;

    .line 512
    .local v0, "listener":Lcom/letv/leui/widget/picker/OnWheelScrollListener;
    invoke-interface {v0, p0}, Lcom/letv/leui/widget/picker/OnWheelScrollListener;->onScrollingStarted(Lcom/letv/leui/widget/picker/WheelView;)V

    goto :goto_0

    .line 510
    .end local v0    # "listener":Lcom/letv/leui/widget/picker/OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 834
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 835
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 836
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->updateView()V

    .line 837
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 838
    :cond_0
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 833
    :cond_1
    :goto_0
    return-void

    .line 840
    :cond_2
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 841
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->drawLabel(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 820
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsWidth:I

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->layout(II)V

    .line 819
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 782
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 783
    .local v7, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 784
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 785
    .local v8, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 787
    .local v2, "heightSize":I
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->buildViewForMeasuring()V

    .line 789
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getPaddingRight()I

    move-result v4

    .line 790
    .local v4, "paddingRight":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getPaddingLeft()I

    move-result v3

    .line 791
    .local v3, "paddingLeft":I
    invoke-direct {p0, v8, v7}, Lcom/letv/leui/widget/picker/WheelView;->calculateLayoutWidth(II)I

    move-result v9

    add-int/2addr v9, v4

    add-int v6, v9, v3

    .line 792
    .local v6, "width":I
    iput v6, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsWidth:I

    .line 795
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v1, v9, :cond_2

    .line 796
    move v0, v2

    .line 805
    .local v0, "height":I
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v9, :cond_1

    .line 806
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 807
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    iget-object v11, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v12, v11, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 808
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/letv/leui/widget/picker/WheelView;->labelHeight:F

    .line 809
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/letv/leui/widget/picker/WheelView;->labelWidth:F

    .line 810
    int-to-float v9, v6

    iget v10, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    int-to-float v10, v10

    iget v11, p0, Lcom/letv/leui/widget/picker/WheelView;->labelWidth:F

    add-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v6, v9

    .line 812
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_1
    iget-boolean v9, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v9, :cond_3

    .line 813
    add-int/lit8 v6, v6, 0x0

    invoke-virtual {p0, v6, v0}, Lcom/letv/leui/widget/picker/WheelView;->setMeasuredDimension(II)V

    .line 781
    :goto_1
    return-void

    .line 798
    .end local v0    # "height":I
    :cond_2
    iget-object v9, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/picker/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    .line 800
    .restart local v0    # "height":I
    const/high16 v9, -0x80000000

    if-ne v1, v9, :cond_0

    .line 801
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 815
    :cond_3
    invoke-virtual {p0, v6, v0}, Lcom/letv/leui/widget/picker/WheelView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 911
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getViewAdapter()Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 912
    :cond_0
    return v3

    .line 915
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 949
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/picker/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 917
    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 918
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 923
    :pswitch_1
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isScrollingPerformed:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v2, :cond_4

    .line 924
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 925
    .local v0, "distance":I
    if-lez v0, :cond_3

    .line 926
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 930
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v2

    div-int v1, v0, v2

    .line 931
    .local v1, "items":I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/picker/WheelView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 932
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/picker/WheelView;->notifyClickListenersAboutClick(I)V

    goto :goto_0

    .line 928
    .end local v1    # "items":I
    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_1

    .line 934
    .end local v0    # "distance":I
    :cond_4
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isScrollingPerformed:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-nez v2, :cond_2

    .line 935
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 936
    .restart local v0    # "distance":I
    if-lez v0, :cond_5

    .line 937
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 941
    :goto_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v2

    div-int v1, v0, v2

    .line 942
    .restart local v1    # "items":I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/picker/WheelView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 943
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/picker/WheelView;->notifyClickListenersAboutClick(I)V

    goto/16 :goto_0

    .line 939
    .end local v1    # "items":I
    :cond_5
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_2

    .line 915
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelChangedListener;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 470
    return-void
.end method

.method public removeClickingListener(Lcom/letv/leui/widget/picker/OnWheelClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelClickedListener;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 537
    return-void
.end method

.method public removeScrollingListener(Lcom/letv/leui/widget/picker/OnWheelScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelScrollListener;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 503
    return-void
.end method

.method public scroll(II)V
    .locals 3
    .param p1, "itemsToScroll"    # I
    .param p2, "time"    # I

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    sub-int v0, v1, v2

    .line 1097
    .local v0, "distance":I
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {v1, v0, p2}, Lcom/letv/leui/widget/picker/WheelScroller;->scroll(II)V

    .line 1095
    return-void
.end method

.method public setCenterTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->centerColor:I

    .line 361
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    .line 362
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    .line 359
    return-void
.end method

.method public setCenterTextColot(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 366
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->centerColor:I

    .line 367
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    .line 368
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    .line 365
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 603
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(IZ)V

    .line 602
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "isNotify"    # Z

    .prologue
    const/4 v3, 0x0

    .line 566
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v2}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 567
    :cond_0
    return-void

    .line 570
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v2}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 571
    .local v0, "itemCount":I
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_4

    .line 572
    :cond_2
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    if-eqz v2, :cond_6

    .line 573
    :goto_0
    if-gez p1, :cond_3

    .line 574
    add-int/2addr p1, v0

    goto :goto_0

    .line 576
    :cond_3
    rem-int/2addr p1, v0

    .line 582
    :cond_4
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    if-eq p1, v2, :cond_5

    .line 583
    if-eqz p2, :cond_7

    .line 584
    iput v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 585
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 586
    .local v1, "old":I
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 587
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    invoke-virtual {p0, v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->notifyChangingListeners(II)V

    .line 588
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    .line 565
    .end local v1    # "old":I
    :cond_5
    :goto_1
    return-void

    .line 578
    :cond_6
    return-void

    .line 590
    :cond_7
    iput v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 591
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 592
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    goto :goto_1
.end method

.method public setCyclic(Z)V
    .locals 1
    .param p1, "isCyclic"    # Z

    .prologue
    .line 619
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    .line 620
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/WheelView;->invalidateWheel(Z)V

    .line 618
    return-void
.end method

.method public setFirstItemUnCyclic(I)V
    .locals 0
    .param p1, "first"    # I

    .prologue
    .line 1161
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    .line 1160
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 263
    return-void
.end method

.method public setIsVertical(Z)V
    .locals 4
    .param p1, "direction"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    .line 175
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 176
    .local v1, "orientation":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setOrientation(I)V

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v2, v2, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v2, :cond_1

    .line 179
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    check-cast v0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    .line 180
    .local v0, "adapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setOritentation(Z)V

    .line 182
    .end local v0    # "adapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    iget-boolean v3, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/picker/WheelScroller;->setOrientation(Z)V

    .line 173
    :cond_2
    return-void

    .line 175
    .end local v1    # "orientation":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "orientation":I
    goto :goto_0
.end method

.method public setItemHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 681
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v0, v0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    check-cast v0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setTextViewHeight(I)V

    .line 680
    :cond_0
    return-void
.end method

.method public setItemStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 319
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 320
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemStrokeWidth:F

    .line 321
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initItem()V

    .line 318
    :cond_0
    return-void
.end method

.method public setItemTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 333
    if-lez p1, :cond_0

    .line 334
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    .line 335
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initItem()V

    .line 332
    :cond_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 293
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    .line 295
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    goto :goto_0
.end method

.method public setLabelOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 392
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    .line 391
    return-void
.end method

.method public setLabelStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 326
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 327
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelStrokeWidth:F

    .line 328
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    .line 325
    :cond_0
    return-void
.end method

.method public setLabelTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 340
    if-lez p1, :cond_0

    .line 341
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    .line 342
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    .line 339
    :cond_0
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 355
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->normalColor:I

    .line 356
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    .line 354
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 308
    if-lez p1, :cond_0

    .line 309
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    .line 310
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    .line 311
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initItem()V

    .line 307
    :cond_0
    return-void
.end method

.method public setUOffset(I)V
    .locals 0
    .param p1, "uOffset"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    .line 150
    return-void
.end method

.method public setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V
    .locals 5
    .param p1, "viewAdapter"    # Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    .prologue
    .line 437
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v3, v4}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 440
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    .line 441
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v3, :cond_1

    .line 442
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v3, v4}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 445
    :cond_1
    instance-of v3, p1, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 446
    check-cast v0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    .line 447
    .local v0, "adapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->getOritentaion()Z

    move-result v1

    .line 448
    .local v1, "adapterIsVertical":Z
    iget-boolean v3, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eq v3, v1, :cond_2

    .line 449
    iget-boolean v3, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    invoke-virtual {v0, v3}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setOritentation(Z)V

    .line 450
    :cond_2
    iget-boolean v3, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    .line 451
    .local v2, "orientation":I
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v3, :cond_3

    .line 452
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v3, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setOrientation(I)V

    .line 454
    .end local v0    # "adapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    .end local v1    # "adapterIsVertical":Z
    .end local v2    # "orientation":I
    :cond_3
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initItem()V

    .line 455
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/WheelView;->invalidateWheel(Z)V

    .line 436
    return-void

    .line 450
    .restart local v0    # "adapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    .restart local v1    # "adapterIsVertical":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "orientation":I
    goto :goto_0
.end method

.method public setVisibleItems(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 284
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    .line 283
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelScroller;->stopScrolling()V

    .line 1321
    return-void
.end method
