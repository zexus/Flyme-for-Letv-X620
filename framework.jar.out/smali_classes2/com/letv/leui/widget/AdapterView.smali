.class public abstract Lcom/letv/leui/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/AdapterView$OnItemClickListener;,
        Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;,
        Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;,
        Lcom/letv/leui/widget/AdapterView$AdapterContextMenuInfo;,
        Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;,
        Lcom/letv/leui/widget/AdapterView$SelectionNotifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/letv/leui/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/letv/leui/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method static synthetic -wrap0(Lcom/letv/leui/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/letv/leui/widget/AdapterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/AdapterView;->fireOnSelected()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/letv/leui/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/letv/leui/widget/AdapterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 225
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 65
    iput v0, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    .line 81
    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    .line 91
    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    .line 123
    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mInLayout:Z

    .line 150
    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedPosition:I

    .line 155
    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    .line 161
    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    .line 166
    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedRowId:J

    .line 198
    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedPosition:I

    .line 203
    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedRowId:J

    .line 222
    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 226
    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView;->mContext:Landroid/content/Context;

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput v0, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    .line 81
    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    .line 91
    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    .line 123
    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mInLayout:Z

    .line 150
    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedPosition:I

    .line 155
    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    .line 161
    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    .line 166
    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedRowId:J

    .line 198
    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedPosition:I

    .line 203
    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedRowId:J

    .line 222
    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 231
    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView;->mContext:Landroid/content/Context;

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput v0, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    .line 81
    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    .line 91
    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    .line 123
    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mInLayout:Z

    .line 150
    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedPosition:I

    .line 155
    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    .line 161
    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    .line 166
    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedRowId:J

    .line 198
    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedPosition:I

    .line 203
    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedRowId:J

    .line 222
    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 236
    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AdapterView;->setImportantForAccessibility(I)V

    .line 234
    :cond_0
    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 886
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemSelectedListener:Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 887
    return-void

    .line 889
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 890
    .local v3, "selection":I
    if-ltz v3, :cond_1

    .line 891
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 892
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemSelectedListener:Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

    .line 893
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    .line 892
    invoke-interface/range {v0 .. v5}, Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Lcom/letv/leui/widget/AdapterView;Landroid/view/View;IJ)V

    .line 885
    .end local v2    # "v":Landroid/view/View;
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemSelectedListener:Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/letv/leui/widget/AdapterView;)V

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 6

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 961
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 962
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_3

    .line 963
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 964
    .local v1, "itemCount":I
    if-lez v1, :cond_2

    .line 965
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getLastVisiblePosition()I

    move-result v4

    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_1

    .line 964
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 965
    goto :goto_0

    :cond_2
    move v2, v3

    .line 964
    goto :goto_0

    .line 967
    .end local v1    # "itemCount":I
    :cond_3
    return v3
.end method

.method private performAccessibilityActionsOnSelected()V
    .locals 2

    .prologue
    .line 903
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 904
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 906
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/AdapterView;->sendAccessibilityEvent(I)V

    .line 899
    :cond_0
    return-void
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .param p1, "empty"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 729
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    const/4 p1, 0x0

    .line 733
    .end local p1    # "empty":Z
    :cond_0
    if-eqz p1, :cond_3

    .line 734
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 735
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 736
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/AdapterView;->setVisibility(I)V

    .line 745
    :goto_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 746
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/AdapterView;->onLayout(ZIIII)V

    .line 728
    :cond_1
    :goto_1
    return-void

    .line 739
    :cond_2
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/AdapterView;->setVisibility(I)V

    goto :goto_0

    .line 749
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 750
    :cond_4
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/AdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 451
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 464
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 492
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 477
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    .line 972
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method checkFocus()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v4, 0x0

    .line 710
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 711
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 712
    .local v1, "empty":Z
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->isInFilterMode()Z

    move-result v2

    .line 716
    :goto_1
    if-eqz v2, :cond_5

    iget-boolean v3, p0, Lcom/letv/leui/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 717
    if-eqz v2, :cond_1

    iget-boolean v4, p0, Lcom/letv/leui/widget/AdapterView;->mDesiredFocusableState:Z

    :cond_1
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 718
    iget-object v3, p0, Lcom/letv/leui/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 719
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    :goto_3
    invoke-direct {p0, v3}, Lcom/letv/leui/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 709
    :cond_2
    return-void

    .line 711
    .end local v1    # "empty":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "empty":Z
    goto :goto_0

    .line 712
    :cond_4
    const/4 v2, 0x1

    .local v2, "focusable":Z
    goto :goto_1

    .end local v2    # "focusable":Z
    :cond_5
    move v3, v4

    .line 716
    goto :goto_2

    .line 719
    :cond_6
    const/4 v3, 0x1

    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 1042
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->selectionChanged()V

    .line 1044
    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedPosition:I

    .line 1045
    iget-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedRowId:J

    .line 1041
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    .line 912
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 913
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 914
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 913
    if-eqz v1, :cond_0

    .line 915
    const/4 v1, 0x1

    return v1

    .line 917
    :cond_0
    return v2
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 789
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 788
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 781
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 780
    return-void
.end method

.method findSyncPosition()I
    .locals 20

    .prologue
    .line 1058
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/AdapterView;->mItemCount:I

    .line 1060
    .local v3, "count":I
    if-nez v3, :cond_0

    .line 1061
    const/16 v16, -0x1

    return v16

    .line 1064
    :cond_0
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    .line 1065
    .local v10, "idToMatch":J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/AdapterView;->mSyncPosition:I

    .line 1068
    .local v13, "seed":I
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v16, v10, v16

    if-nez v16, :cond_1

    .line 1069
    const/16 v16, -0x1

    return v16

    .line 1073
    :cond_1
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1074
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1076
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .line 1081
    .local v4, "endTime":J
    move v6, v13

    .line 1084
    .local v6, "first":I
    move v9, v13

    .line 1087
    .local v9, "last":I
    const/4 v12, 0x0

    .line 1097
    .local v12, "next":Z
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1098
    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v2, :cond_3

    .line 1099
    const/16 v16, -0x1

    return v16

    .line 1119
    .local v7, "hitFirst":Z
    .local v8, "hitLast":Z
    .local v14, "rowId":J
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 1120
    move v13, v9

    .line 1122
    const/4 v12, 0x0

    .line 1102
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gtz v16, :cond_5

    .line 1103
    invoke-interface {v2, v13}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    .line 1104
    .restart local v14    # "rowId":J
    cmp-long v16, v14, v10

    if-nez v16, :cond_4

    .line 1106
    return v13

    .line 1109
    :cond_4
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_6

    const/4 v8, 0x1

    .line 1110
    .restart local v8    # "hitLast":Z
    :goto_1
    if-nez v6, :cond_7

    const/4 v7, 0x1

    .line 1112
    .restart local v7    # "hitFirst":Z
    :goto_2
    if-eqz v8, :cond_8

    if-eqz v7, :cond_8

    .line 1133
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_5
    const/16 v16, -0x1

    return v16

    .line 1109
    .restart local v14    # "rowId":J
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "hitLast":Z
    goto :goto_1

    .line 1110
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "hitFirst":Z
    goto :goto_2

    .line 1117
    :cond_8
    if-nez v7, :cond_2

    if-eqz v12, :cond_9

    if-eqz v8, :cond_2

    .line 1123
    :cond_9
    if-nez v8, :cond_a

    if-nez v12, :cond_3

    if-nez v7, :cond_3

    .line 1125
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 1126
    move v13, v6

    .line 1128
    const/4 v12, 0x1

    goto :goto_0
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 581
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 670
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 624
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v1, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 762
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 766
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 767
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    return-wide v2

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 634
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/letv/leui/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 280
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemClickListener:Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 346
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemLongClickListener:Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 392
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemSelectedListener:Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v6, -0x1

    .line 594
    move-object v3, p1

    .line 597
    .local v3, "listItem":Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 598
    move-object v3, v4

    goto :goto_0

    .line 600
    .end local v4    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/ClassCastException;
    return v6

    .line 606
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v4    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getChildCount()I

    move-result v0

    .line 607
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 608
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 609
    iget v5, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    return v5

    .line 607
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 614
    :cond_2
    return v6
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 4

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v3, 0x0

    .line 565
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 566
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 567
    .local v1, "selection":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 568
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 570
    :cond_0
    return-object v3
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 551
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 542
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 976
    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mItemCount:I

    .line 977
    .local v0, "count":I
    const/4 v1, 0x0

    .line 979
    .local v1, "found":Z
    if-lez v0, :cond_4

    .line 984
    iget-boolean v4, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 987
    iput-boolean v5, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    .line 991
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->findSyncPosition()I

    move-result v2

    .line 992
    .local v2, "newPos":I
    if-ltz v2, :cond_0

    .line 994
    invoke-virtual {p0, v2, v7}, Lcom/letv/leui/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 995
    .local v3, "selectablePos":I
    if-ne v3, v2, :cond_0

    .line 997
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 998
    const/4 v1, 0x1

    .line 1002
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_0
    if-nez v1, :cond_4

    .line 1004
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 1007
    .restart local v2    # "newPos":I
    if-lt v2, v0, :cond_1

    .line 1008
    add-int/lit8 v2, v0, -0x1

    .line 1010
    :cond_1
    if-gez v2, :cond_2

    .line 1011
    const/4 v2, 0x0

    .line 1015
    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/letv/leui/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1016
    .restart local v3    # "selectablePos":I
    if-gez v3, :cond_3

    .line 1018
    invoke-virtual {p0, v2, v5}, Lcom/letv/leui/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1020
    :cond_3
    if-ltz v3, :cond_4

    .line 1021
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1022
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->checkSelectionChanged()V

    .line 1023
    const/4 v1, 0x1

    .line 1027
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_4
    if-nez v1, :cond_5

    .line 1029
    iput v6, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    .line 1030
    iput-wide v8, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedRowId:J

    .line 1031
    iput v6, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedPosition:I

    .line 1032
    iput-wide v8, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    .line 1033
    iput-boolean v5, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    .line 1034
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->checkSelectionChanged()V

    .line 975
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 680
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    .line 1145
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 845
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 846
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectionNotifier:Lcom/letv/leui/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 844
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 947
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 948
    const-class v1, Lcom/letv/leui/widget/AdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 949
    invoke-direct {p0}, Lcom/letv/leui/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 950
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 951
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 954
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 955
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 956
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 957
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 946
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 936
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 937
    const-class v1, Lcom/letv/leui/widget/AdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 938
    invoke-direct {p0}, Lcom/letv/leui/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 939
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 940
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 935
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 532
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/AdapterView;->mLayoutHeight:I

    .line 531
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 922
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 924
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 925
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 927
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 928
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 929
    const/4 v1, 0x1

    return v1

    .line 931
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 293
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemClickListener:Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/AdapterView;->playSoundEffect(I)V

    .line 295
    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemClickListener:Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/letv/leui/widget/AdapterView$OnItemClickListener;->onItemClick(Lcom/letv/leui/widget/AdapterView;Landroid/view/View;IJ)V

    .line 299
    return v6

    .line 302
    :cond_1
    return v1
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1178
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1179
    iput-boolean v5, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    .line 1180
    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncHeight:J

    .line 1181
    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1183
    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1184
    .local v1, "v":Landroid/view/View;
    iget-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    .line 1185
    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncPosition:I

    .line 1186
    if-eqz v1, :cond_0

    .line 1187
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/AdapterView;->mSpecificTop:I

    .line 1189
    :cond_0
    iput v4, p0, Lcom/letv/leui/widget/AdapterView;->mSyncMode:I

    .line 1177
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1192
    :cond_2
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1193
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1194
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1195
    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    .line 1199
    :goto_1
    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncPosition:I

    .line 1200
    if-eqz v1, :cond_3

    .line 1201
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/AdapterView;->mSpecificTop:I

    .line 1203
    :cond_3
    iput v5, p0, Lcom/letv/leui/widget/AdapterView;->mSyncMode:I

    goto :goto_0

    .line 1197
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 527
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 505
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 517
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v1, 0x0

    .line 866
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemSelectedListener:Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 869
    iget-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_3

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectionNotifier:Lcom/letv/leui/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 875
    new-instance v0, Lcom/letv/leui/widget/AdapterView$SelectionNotifier;

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/widget/AdapterView$SelectionNotifier;-><init>(Lcom/letv/leui/widget/AdapterView;Lcom/letv/leui/widget/AdapterView$SelectionNotifier;)V

    iput-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectionNotifier:Lcom/letv/leui/widget/AdapterView$SelectionNotifier;

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectionNotifier:Lcom/letv/leui/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 865
    :cond_2
    :goto_0
    return-void

    .line 879
    :cond_3
    invoke-direct {p0}, Lcom/letv/leui/widget/AdapterView;->fireOnSelected()V

    .line 880
    invoke-direct {p0}, Lcom/letv/leui/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    goto :goto_0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 649
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 652
    if-eqz p1, :cond_0

    .line 653
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 654
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 657
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 658
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v1

    .line 659
    :goto_0
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 648
    return-void

    .line 658
    :cond_1
    const/4 v1, 0x1

    .local v1, "empty":Z
    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 4
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    .line 685
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 686
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 688
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/AdapterView;->mDesiredFocusableState:Z

    .line 689
    if-nez p1, :cond_1

    .line 690
    iput-boolean v2, p0, Lcom/letv/leui/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 693
    :cond_1
    if-eqz p1, :cond_2

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->isInFilterMode()Z

    move-result v2

    :cond_2
    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 684
    return-void

    .line 686
    .end local v1    # "empty":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "empty":Z
    goto :goto_0

    .line 693
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 698
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 699
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 701
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 702
    if-eqz p1, :cond_1

    .line 703
    iput-boolean v2, p0, Lcom/letv/leui/widget/AdapterView;->mDesiredFocusableState:Z

    .line 706
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->isInFilterMode()Z

    move-result v2

    :cond_2
    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 697
    return-void

    .line 699
    .end local v1    # "empty":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "empty":Z
    goto :goto_0

    :cond_4
    move v2, v3

    .line 706
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1163
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iput p1, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedPosition:I

    .line 1164
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    .line 1166
    iget-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1167
    iput p1, p0, Lcom/letv/leui/widget/AdapterView;->mSyncPosition:I

    .line 1168
    iget-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    .line 1162
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 772
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/letv/leui/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 272
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemClickListener:Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

    .line 271
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 335
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AdapterView;->setLongClickable(Z)V

    .line 338
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemLongClickListener:Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;

    .line 334
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 388
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemSelectedListener:Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

    .line 387
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1153
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iput p1, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    .line 1154
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedRowId:J

    .line 1152
    return-void
.end method

.method public abstract setSelection(I)V
.end method
