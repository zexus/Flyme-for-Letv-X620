.class public Lcom/letv/leui/widget/LePopupWindowController$SheetParams;
.super Ljava/lang/Object;
.source "LePopupWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LePopupWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SheetParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LePopupWindowController$SheetParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public isClickDismiss:Z

.field public isComplexView:Z

.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public mComplexItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;",
            ">;"
        }
    .end annotation
.end field

.field public mComplexOnClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mComplexSwichListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mLicenceListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public mLicenceMessage:Ljava/lang/CharSequence;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonColor:I

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonColor:I

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/letv/leui/widget/LePopupWindowController$SheetParams$OnPrepareListViewListener;

.field public mPositiveButtonColor:I

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I

.field public typeNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIconId:I

    .line 690
    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mPositiveButtonColor:I

    .line 693
    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNegativeButtonColor:I

    .line 696
    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNeutralButtonColor:I

    .line 710
    iput-boolean v2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mViewSpacingSpecified:Z

    .line 714
    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCheckedItem:I

    .line 722
    iput-boolean v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mRecycleOnMeasure:Z

    .line 727
    iput-boolean v2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->isComplexView:Z

    .line 750
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mContext:Landroid/content/Context;

    .line 751
    iput-boolean v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCancelable:Z

    .line 752
    iput-boolean v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->isClickDismiss:Z

    .line 753
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mInflater:Landroid/view/LayoutInflater;

    .line 749
    return-void
.end method

.method private countTypeNum(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "ComplexItems":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;>;"
    const/16 v5, 0x14

    .line 825
    const/4 v2, 0x0

    .line 826
    .local v2, "num":I
    const/4 v1, 0x0

    .line 827
    .local v1, "i":I
    new-array v0, v5, [I

    .line 828
    .local v0, "a":[I
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 829
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getType()I

    move-result v3

    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    .line 828
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 831
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_2

    .line 832
    aget v3, v0, v1

    if-eqz v3, :cond_1

    .line 833
    add-int/lit8 v2, v2, 0x1

    .line 831
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 835
    :cond_2
    return v2
.end method

.method private createListView(Lcom/letv/leui/widget/LePopupWindowController;)V
    .locals 14
    .param p1, "dialog"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    const v6, 0x1020014

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 840
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x10900b9

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 839
    check-cast v5, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;

    .line 843
    .local v5, "listView":Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->isComplexView:Z

    if-eqz v1, :cond_4

    .line 844
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexItems:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->countTypeNum(Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->typeNum:I

    .line 846
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$1;

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexItems:Ljava/util/List;

    iget v4, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->typeNum:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$1;-><init>(Lcom/letv/leui/widget/LePopupWindowController$SheetParams;Landroid/content/Context;Ljava/util/List;ILcom/letv/leui/widget/LePopupWindowController$RecycleListView;)V

    .line 862
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/letv/leui/widget/LePopupWindowController;->-set3(Lcom/letv/leui/widget/LePopupWindowController;I)I

    .line 924
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnPrepareListViewListener:Lcom/letv/leui/widget/LePopupWindowController$SheetParams$OnPrepareListViewListener;

    if-eqz v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnPrepareListViewListener:Lcom/letv/leui/widget/LePopupWindowController$SheetParams$OnPrepareListViewListener;

    invoke-interface {v1, v5}, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 932
    :cond_0
    invoke-static {p1, v0}, Lcom/letv/leui/widget/LePopupWindowController;->-set0(Lcom/letv/leui/widget/LePopupWindowController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 933
    iget v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCheckedItem:I

    invoke-static {p1, v1}, Lcom/letv/leui/widget/LePopupWindowController;->-set1(Lcom/letv/leui/widget/LePopupWindowController;I)I

    .line 935
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_a

    .line 936
    new-instance v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$4;

    invoke-direct {v1, p0, p1}, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$4;-><init>(Lcom/letv/leui/widget/LePopupWindowController$SheetParams;Lcom/letv/leui/widget/LePopupWindowController;)V

    invoke-virtual {v5, v1}, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 988
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    .line 989
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v1}, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 992
    :cond_2
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_c

    .line 993
    invoke-virtual {v5, v12}, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->setChoiceMode(I)V

    .line 997
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mRecycleOnMeasure:Z

    iput-boolean v1, v5, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->mRecycleOnMeasure:Z

    .line 998
    invoke-static {p1, v5}, Lcom/letv/leui/widget/LePopupWindowController;->-set2(Lcom/letv/leui/widget/LePopupWindowController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 838
    return-void

    .line 865
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_6

    .line 867
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_5

    .line 868
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$2;

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    move v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$2;-><init>(Lcom/letv/leui/widget/LePopupWindowController$SheetParams;Landroid/content/Context;[Ljava/lang/CharSequence;ILcom/letv/leui/widget/LePopupWindowController$RecycleListView;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 884
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$3;

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCursor:Landroid/database/Cursor;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$3;-><init>(Lcom/letv/leui/widget/LePopupWindowController$SheetParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/letv/leui/widget/LePopupWindowController$RecycleListView;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 912
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_6
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_7

    .line 913
    const v8, 0x1090012

    .line 914
    .local v8, "layout":I
    :goto_3
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_9

    .line 915
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 913
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v8    # "layout":I
    :cond_7
    const v8, 0x1090011

    .restart local v8    # "layout":I
    goto :goto_3

    .line 916
    :cond_8
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v8, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 918
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_9
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v7, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mContext:Landroid/content/Context;

    .line 919
    iget-object v9, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCursor:Landroid/database/Cursor;

    new-array v10, v12, [Ljava/lang/String;

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mLabelColumn:Ljava/lang/String;

    aput-object v1, v10, v4

    new-array v11, v12, [I

    aput v6, v11, v4

    move-object v6, v0

    .line 918
    invoke-direct/range {v6 .. v11}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto/16 :goto_0

    .line 945
    .end local v8    # "layout":I
    :cond_a
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_b

    .line 946
    new-instance v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$5;

    invoke-direct {v1, p0, v5, p1}, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$5;-><init>(Lcom/letv/leui/widget/LePopupWindowController$SheetParams;Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;Lcom/letv/leui/widget/LePopupWindowController;)V

    invoke-virtual {v5, v1}, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 957
    :cond_b
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexOnClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    .line 959
    new-instance v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;

    invoke-direct {v1, p0, v5, p1}, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;-><init>(Lcom/letv/leui/widget/LePopupWindowController$SheetParams;Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;Lcom/letv/leui/widget/LePopupWindowController;)V

    invoke-virtual {v5, v1}, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_1

    .line 994
    :cond_c
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    .line 995
    invoke-virtual {v5, v13}, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/letv/leui/widget/LePopupWindowController;)V
    .locals 6
    .param p1, "dialog"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 757
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 758
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/letv/leui/widget/LePopupWindowController;->setCustomTitle(Landroid/view/View;)V

    .line 770
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/letv/leui/widget/LePopupWindowController;->setMessage(Ljava/lang/CharSequence;)V

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mLicenceMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 774
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mLicenceMessage:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mLicenceListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/letv/leui/widget/LePopupWindowController;->setLicence(Ljava/lang/CharSequence;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 776
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 777
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 778
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 777
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/letv/leui/widget/LePopupWindowController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 780
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 781
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 782
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 781
    invoke-virtual {p1, v5, v0, v1, v2}, Lcom/letv/leui/widget/LePopupWindowController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 784
    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 785
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 786
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 785
    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/letv/leui/widget/LePopupWindowController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 788
    :cond_5
    iget v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mPositiveButtonColor:I

    if-eq v0, v3, :cond_6

    .line 789
    iget v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mPositiveButtonColor:I

    invoke-virtual {p1, v3, v0}, Lcom/letv/leui/widget/LePopupWindowController;->setButtonColor(II)V

    .line 791
    :cond_6
    iget v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNegativeButtonColor:I

    if-eq v0, v3, :cond_7

    .line 792
    iget v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNegativeButtonColor:I

    invoke-virtual {p1, v5, v0}, Lcom/letv/leui/widget/LePopupWindowController;->setButtonColor(II)V

    .line 794
    :cond_7
    iget v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNeutralButtonColor:I

    if-eq v0, v3, :cond_8

    .line 795
    iget v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNeutralButtonColor:I

    invoke-virtual {p1, v4, v0}, Lcom/letv/leui/widget/LePopupWindowController;->setButtonColor(II)V

    .line 797
    :cond_8
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_9

    .line 798
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/letv/leui/widget/LePopupWindowController;->setInverseBackgroundForced(Z)V

    .line 802
    :cond_9
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 803
    :cond_a
    :goto_1
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->createListView(Lcom/letv/leui/widget/LePopupWindowController;)V

    .line 805
    :cond_b
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 806
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_11

    .line 807
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mViewSpacingRight:I

    .line 808
    iget v5, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mViewSpacingBottom:I

    move-object v0, p1

    .line 807
    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/LePopupWindowController;->setView(Landroid/view/View;IIII)V

    .line 756
    :cond_c
    :goto_2
    return-void

    .line 760
    :cond_d
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 761
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/letv/leui/widget/LePopupWindowController;->setTitle(Ljava/lang/CharSequence;)V

    .line 763
    :cond_e
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 764
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/letv/leui/widget/LePopupWindowController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 766
    :cond_f
    iget v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIconId:I

    if-ltz v0, :cond_0

    .line 767
    iget v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/letv/leui/widget/LePopupWindowController;->setIcon(I)V

    goto/16 :goto_0

    .line 802
    :cond_10
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexItems:Ljava/util/List;

    if-eqz v0, :cond_b

    goto :goto_1

    .line 810
    :cond_11
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/letv/leui/widget/LePopupWindowController;->setView(Landroid/view/View;)V

    goto :goto_2
.end method
