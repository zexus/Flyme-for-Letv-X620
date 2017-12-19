.class Lcom/letv/leui/preference/LeListPreference$DropdownPopup;
.super Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
.source "LeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreference;
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

.field promptView:Landroid/view/View;

.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreference;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->isAbove:Z

    return v0
.end method

.method static synthetic -set0(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->isAbove:Z

    return p1
.end method

.method public constructor <init>(Lcom/letv/leui/preference/LeListPreference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreference;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 894
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    .line 895
    const v1, 0x10102ff

    invoke-direct {p0, p2, p3, v1, p4}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 888
    iput-boolean v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->isAbove:Z

    .line 897
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setModal(Z)V

    .line 898
    new-instance v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;-><init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;)V

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 925
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->-get17(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->-get17(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 927
    invoke-virtual {p1}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900c3

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    .line 929
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setPromptView(Landroid/view/View;)V

    .line 931
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 932
    .local v0, "overlayTitle":Landroid/widget/TextView;
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->-get4(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 933
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->-get10(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->-wrap1(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->-wrap1(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v1

    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->-get10(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 934
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->-get12(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 935
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->-get12(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->-get16(Lcom/letv/leui/preference/LeListPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    new-instance v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$2;

    invoke-direct {v2, p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$2;-><init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 951
    .end local v0    # "overlayTitle":Landroid/widget/TextView;
    :cond_1
    new-instance v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;-><init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;)V

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setOnShowListener(Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;)V

    .line 894
    return-void

    .line 937
    .restart local v0    # "overlayTitle":Landroid/widget/TextView;
    :cond_2
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->-get10(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->-get16(Lcom/letv/leui/preference/LeListPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method measureContentWidth(Landroid/widget/ListAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 999
    if-nez p1, :cond_0

    .line 1000
    const/4 v10, 0x0

    return v10

    .line 1003
    :cond_0
    const/4 v8, 0x0

    .line 1004
    .local v8, "width":I
    const/4 v5, 0x0

    .line 1005
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 1006
    .local v4, "itemType":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1007
    .local v9, "widthMeasureSpec":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1009
    .local v2, "heightMeasureSpec":I
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getSelectedItemPosition()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1010
    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1011
    .local v1, "end":I
    sub-int v0, v1, v7

    .line 1012
    .local v0, "count":I
    rsub-int/lit8 v10, v0, 0xf

    sub-int v10, v7, v10

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1013
    move v3, v7

    .end local v5    # "itemView":Landroid/view/View;
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1014
    invoke-interface {p1, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    .line 1015
    .local v6, "positionType":I
    if-eq v6, v4, :cond_1

    .line 1016
    move v4, v6

    .line 1017
    const/4 v5, 0x0

    .line 1020
    :cond_1
    const/4 v10, 0x0

    invoke-interface {p1, v3, v5, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1021
    .local v5, "itemView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_2

    .line 1022
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    .line 1023
    const/4 v12, -0x2

    .line 1022
    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1025
    :cond_2
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 1026
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1013
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1029
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "positionType":I
    :cond_3
    if-eqz p2, :cond_4

    .line 1030
    iget-object v10, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v10}, Lcom/letv/leui/preference/LeListPreference;->-get15(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1031
    iget-object v10, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v10}, Lcom/letv/leui/preference/LeListPreference;->-get15(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v11}, Lcom/letv/leui/preference/LeListPreference;->-get15(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 1034
    :cond_4
    return v8
.end method

.method public preBuildListView(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v1, 0x0

    .line 993
    invoke-super {p0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->preBuildListView(Landroid/widget/ListView;)V

    .line 994
    const/high16 v0, 0x2000000

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 995
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 992
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 987
    invoke-super {p0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 988
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 986
    return-void
.end method

.method public show()V
    .locals 17

    .prologue
    .line 1041
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-virtual {v14}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x1080540

    invoke-virtual {v14, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1042
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1043
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 1045
    .local v7, "hOffset":I
    if-eqz v4, :cond_8

    .line 1046
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get15(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1047
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get2(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get15(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v14

    iget v7, v14, Landroid/graphics/Rect;->right:I

    .line 1052
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get6(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1053
    .local v1, "anchorViewPaddingLeft":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get6(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 1054
    .local v2, "anchorViewPaddingRight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get6(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1058
    .local v3, "anchorViewWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get9(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    const/4 v15, -0x2

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get9(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_9

    .line 1059
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->measureContentWidth(Landroid/widget/ListAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v5

    .line 1060
    .local v5, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-virtual {v14}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1061
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v15}, Lcom/letv/leui/preference/LeListPreference;->-get15(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    .line 1060
    sub-int/2addr v14, v15

    .line 1061
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v15}, Lcom/letv/leui/preference/LeListPreference;->-get15(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->right:I

    .line 1060
    sub-int v6, v14, v15

    .line 1062
    .local v6, "contentWidthLimit":I
    if-le v5, v6, :cond_1

    .line 1063
    move v5, v6

    .line 1065
    :cond_1
    sub-int v14, v3, v1

    sub-int/2addr v14, v2

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setContentWidth(I)V

    .line 1072
    .end local v5    # "contentWidth":I
    .end local v6    # "contentWidthLimit":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get2(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_a

    .line 1073
    sub-int v14, v3, v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v15}, Lcom/letv/leui/preference/LeListPreference;->-get15(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    add-int/2addr v7, v14

    .line 1078
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setHorizontalOffset(I)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    if-eqz v14, :cond_2

    .line 1081
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get9(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    const/high16 v15, -0x80000000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1082
    .local v13, "widthSpec":I
    const/4 v8, 0x0

    .line 1083
    .local v8, "heightSpec":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    invoke-virtual {v14, v13, v8}, Landroid/view/View;->measure(II)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get6(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    neg-int v11, v14

    .line 1085
    .local v11, "verticalOffset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setVerticalOffset(I)V

    .line 1088
    .end local v8    # "heightSpec":I
    .end local v11    # "verticalOffset":I
    .end local v13    # "widthSpec":I
    :cond_2
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setInputMethodMode(I)V

    .line 1090
    const-string/jumbo v14, "mPopup"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    .line 1092
    .local v9, "innerPopup":Lcom/letv/leui/preference/LeListPreferencePopupWindow;
    if-eqz v9, :cond_3

    .line 1093
    const-string/jumbo v14, "mAboveAnchorBackgroundDrawable"

    const/4 v15, 0x0

    invoke-static {v9, v14, v15}, Lcom/letv/leui/util/LeReflectionUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1096
    :cond_3
    invoke-super/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->show()V

    .line 1099
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get19(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 1102
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get5(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get5(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    .line 1103
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v15}, Lcom/letv/leui/preference/LeListPreference;->-get5(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->setSelector(I)V

    .line 1108
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 1109
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-wrap1(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setSelection(I)V

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v15}, Lcom/letv/leui/preference/LeListPreference;->-wrap1(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v15

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get6(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    .line 1115
    .local v12, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v12, :cond_6

    .line 1116
    new-instance v10, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;-><init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;)V

    .line 1132
    .local v10, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v12, v10}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1134
    new-instance v14, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;-><init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setOnDismissListener(Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;)V

    .line 1038
    .end local v10    # "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_6
    return-void

    .line 1047
    .end local v1    # "anchorViewPaddingLeft":I
    .end local v2    # "anchorViewPaddingRight":I
    .end local v3    # "anchorViewWidth":I
    .end local v9    # "innerPopup":Lcom/letv/leui/preference/LeListPreferencePopupWindow;
    .end local v12    # "vto":Landroid/view/ViewTreeObserver;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get15(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->left:I

    neg-int v7, v14

    goto/16 :goto_0

    .line 1049
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get15(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v15}, Lcom/letv/leui/preference/LeListPreference;->-get15(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->right:I

    const/4 v15, 0x0

    iput v15, v14, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 1067
    .restart local v1    # "anchorViewPaddingLeft":I
    .restart local v2    # "anchorViewPaddingRight":I
    .restart local v3    # "anchorViewWidth":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->-get9(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setContentWidth(I)V

    goto/16 :goto_1

    .line 1075
    :cond_a
    add-int/2addr v7, v1

    goto/16 :goto_2
.end method
