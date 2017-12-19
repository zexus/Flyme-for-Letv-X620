.class Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;
.super Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
.source "LeListPreferenceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeListPreferenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field arrowDrawable:Landroid/graphics/drawable/Drawable;

.field private isAbove:Z

.field private mAdapter:Landroid/widget/ListAdapter;

.field overlayDrawable:Landroid/graphics/drawable/Drawable;

.field private promptView:Landroid/view/View;

.field final synthetic this$0:Lcom/letv/leui/widget/LeListPreferenceView;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->isAbove:Z

    return v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->promptView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->isAbove:Z

    return p1
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LeListPreferenceView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeListPreferenceView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 628
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    .line 629
    const v1, 0x10102ff

    invoke-direct {p0, p2, p3, v1, p4}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 622
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->isAbove:Z

    .line 631
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setModal(Z)V

    .line 632
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setPromptPosition(I)V

    .line 633
    new-instance v1, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;-><init>(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;)V

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 660
    invoke-static {p1}, Lcom/letv/leui/widget/LeListPreferenceView;->-get16(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/letv/leui/widget/LeListPreferenceView;->-get16(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/widget/TextView;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 662
    invoke-virtual {p1}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {p1}, Lcom/letv/leui/widget/LeListPreferenceView;->-get18(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->promptView:Landroid/view/View;

    .line 665
    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->promptView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setPromptView(Landroid/view/View;)V

    .line 667
    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->promptView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 668
    .local v0, "overlayTitle":Landroid/widget/TextView;
    invoke-static {p1}, Lcom/letv/leui/widget/LeListPreferenceView;->-get4(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    invoke-static {p1}, Lcom/letv/leui/widget/LeListPreferenceView;->-get4(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 670
    :cond_0
    invoke-static {p1}, Lcom/letv/leui/widget/LeListPreferenceView;->-get9(Lcom/letv/leui/widget/LeListPreferenceView;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/letv/leui/widget/LeListPreferenceView;->getValueIndex()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Lcom/letv/leui/widget/LeListPreferenceView;->getValueIndex()I

    move-result v1

    invoke-static {p1}, Lcom/letv/leui/widget/LeListPreferenceView;->-get9(Lcom/letv/leui/widget/LeListPreferenceView;)[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 671
    invoke-static {p1}, Lcom/letv/leui/widget/LeListPreferenceView;->-get9(Lcom/letv/leui/widget/LeListPreferenceView;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lcom/letv/leui/widget/LeListPreferenceView;->getValueIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->promptView:Landroid/view/View;

    new-instance v2, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$2;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$2;-><init>(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    .end local v0    # "overlayTitle":Landroid/widget/TextView;
    :cond_2
    new-instance v1, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$3;-><init>(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;)V

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setOnShowListener(Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;)V

    .line 628
    return-void
.end method


# virtual methods
.method measureContentWidth(Landroid/widget/ListAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 730
    if-nez p1, :cond_0

    .line 731
    const/4 v10, 0x0

    return v10

    .line 734
    :cond_0
    const/4 v8, 0x0

    .line 735
    .local v8, "width":I
    const/4 v5, 0x0

    .line 736
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 737
    .local v4, "itemType":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 738
    .local v9, "widthMeasureSpec":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 740
    .local v2, "heightMeasureSpec":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->getSelectedItemPosition()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 741
    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 742
    .local v1, "end":I
    sub-int v0, v1, v7

    .line 743
    .local v0, "count":I
    rsub-int/lit8 v10, v0, 0xf

    sub-int v10, v7, v10

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 744
    move v3, v7

    .end local v5    # "itemView":Landroid/view/View;
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 745
    invoke-interface {p1, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    .line 746
    .local v6, "positionType":I
    if-eq v6, v4, :cond_1

    .line 747
    move v4, v6

    .line 748
    const/4 v5, 0x0

    .line 751
    :cond_1
    const/4 v10, 0x0

    invoke-interface {p1, v3, v5, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 752
    .local v5, "itemView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_2

    .line 753
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    .line 754
    const/4 v12, -0x2

    .line 753
    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    :cond_2
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 757
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 744
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 760
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "positionType":I
    :cond_3
    if-eqz p2, :cond_4

    .line 761
    iget-object v10, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v10}, Lcom/letv/leui/widget/LeListPreferenceView;->-get15(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 762
    iget-object v10, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v10}, Lcom/letv/leui/widget/LeListPreferenceView;->-get15(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v11}, Lcom/letv/leui/widget/LeListPreferenceView;->-get15(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 765
    :cond_4
    return v8
.end method

.method public preBuildListView(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 724
    invoke-super {p0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->preBuildListView(Landroid/widget/ListView;)V

    .line 725
    const/high16 v0, 0x2000000

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 723
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 718
    invoke-super {p0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 719
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 717
    return-void
.end method

.method public show()V
    .locals 23

    .prologue
    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1080540

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 774
    .local v7, "background":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    .line 776
    .local v10, "hOffset":I
    if-eqz v7, :cond_a

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get15(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get2(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get15(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v10, v0, Landroid/graphics/Rect;->right:I

    .line 783
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get5(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 784
    .local v4, "anchorViewPaddingLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get5(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 785
    .local v5, "anchorViewPaddingRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get5(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 789
    .local v6, "anchorViewWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get8(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v20

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get8(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 790
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->measureContentWidth(Landroid/widget/ListAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v8

    .line 791
    .local v8, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/letv/leui/widget/LeListPreferenceView;->-get15(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 791
    sub-int v20, v20, v21

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/letv/leui/widget/LeListPreferenceView;->-get15(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    .line 791
    sub-int v9, v20, v21

    .line 793
    .local v9, "contentWidthLimit":I
    if-le v8, v9, :cond_1

    .line 794
    move v8, v9

    .line 796
    :cond_1
    sub-int v20, v6, v4

    sub-int v20, v20, v5

    move/from16 v0, v20

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setContentWidth(I)V

    .line 803
    .end local v8    # "contentWidth":I
    .end local v9    # "contentWidthLimit":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get2(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 804
    sub-int v20, v6, v5

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->getWidth()I

    move-result v21

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/letv/leui/widget/LeListPreferenceView;->-get15(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    add-int v10, v10, v20

    .line 805
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "isLayoutRtl hOffset="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setHorizontalOffset(I)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->promptView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get8(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v20

    const/high16 v21, -0x80000000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 817
    .local v19, "widthSpec":I
    const/4 v11, 0x0

    .line 818
    .local v11, "heightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->promptView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Landroid/view/View;->measure(II)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get5(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->promptView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setVerticalOffset(I)V

    .line 825
    .end local v11    # "heightSpec":I
    .end local v19    # "widthSpec":I
    :cond_2
    const/4 v15, 0x0

    .line 826
    .local v15, "listHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/ListAdapter;->getCount()I

    move-result v20

    if-lez v20, :cond_5

    .line 827
    const/16 v17, 0x0

    .line 829
    .local v17, "position":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 830
    .local v13, "itemView":Landroid/view/View;
    if-eqz v13, :cond_4

    .line 831
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 832
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v15, v15, v20

    .line 834
    :cond_4
    add-int/lit8 v17, v17, 0x1

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/ListAdapter;->getCount()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 841
    .end local v13    # "itemView":Landroid/view/View;
    .end local v17    # "position":I
    :cond_5
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 842
    .local v16, "location":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get5(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get11(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v20

    move/from16 v0, v20

    if-le v15, v0, :cond_d

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get11(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setHeight(I)V

    .line 851
    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mMaxDropDownHeight="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/letv/leui/widget/LeListPreferenceView;->-get11(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setInputMethodMode(I)V

    .line 855
    const-string/jumbo v20, "mPopup"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    .line 857
    .local v12, "innerPopup":Lcom/letv/leui/preference/LeListPreferencePopupWindow;
    if-eqz v12, :cond_7

    .line 858
    const-string/jumbo v20, "mAboveAnchorBackgroundDrawable"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 861
    :cond_7
    invoke-super/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->show()V

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->getValueIndex()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setSelection(I)V

    .line 869
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/letv/leui/widget/LeListPreferenceView;->getValueIndex()I

    move-result v21

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get5(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v18

    .line 872
    .local v18, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v18, :cond_8

    .line 873
    new-instance v14, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$4;-><init>(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;)V

    .line 889
    .local v14, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 891
    new-instance v20, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$5;-><init>(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setOnDismissListener(Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;)V

    .line 769
    .end local v14    # "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_8
    return-void

    .line 778
    .end local v4    # "anchorViewPaddingLeft":I
    .end local v5    # "anchorViewPaddingRight":I
    .end local v6    # "anchorViewWidth":I
    .end local v12    # "innerPopup":Lcom/letv/leui/preference/LeListPreferencePopupWindow;
    .end local v15    # "listHeight":I
    .end local v16    # "location":[I
    .end local v18    # "vto":Landroid/view/ViewTreeObserver;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get15(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v10, v0

    goto/16 :goto_0

    .line 780
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get15(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/letv/leui/widget/LeListPreferenceView;->-get15(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/graphics/Rect;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 798
    .restart local v4    # "anchorViewPaddingLeft":I
    .restart local v5    # "anchorViewPaddingRight":I
    .restart local v6    # "anchorViewWidth":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get8(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setContentWidth(I)V

    goto/16 :goto_1

    .line 807
    :cond_c
    add-int/2addr v10, v4

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "hOffset="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 845
    .restart local v15    # "listHeight":I
    .restart local v16    # "location":[I
    :cond_d
    const/16 v20, 0x1

    aget v20, v16, v20

    move/from16 v0, v20

    if-gt v15, v0, :cond_6

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/LeListPreferenceView;->-get16(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getHeight()I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setHeight(I)V

    goto/16 :goto_3
.end method
