.class public Lcom/letv/leui/widget/LePopupWindowController;
.super Ljava/lang/Object;
.source "LePopupWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LePopupWindowController$ButtonHandler;,
        Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;,
        Lcom/letv/leui/widget/LePopupWindowController$SheetParams;,
        Lcom/letv/leui/widget/LePopupWindowController$1;
    }
.end annotation


# static fields
.field private static final MATCH_PARENT:I = -0x1

.field private static density:F

.field public static m_MyAlertContentViewId:I


# instance fields
.field private NegativeGapline:Landroid/widget/ImageView;

.field private NeutralGapline:Landroid/widget/ImageView;

.field private PositiveGapline:Landroid/widget/ImageView;

.field private mAdapter:Landroid/widget/ListAdapter;

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Lcom/letv/leui/widget/LeButton;

.field private mButtonNegativeColor:I

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Lcom/letv/leui/widget/LeButton;

.field private mButtonNeutralColor:I

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Lcom/letv/leui/widget/LeButton;

.field private mButtonPositiveColor:I

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field protected final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field protected mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

.field private mLicenceListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLicenceMessage:Ljava/lang/CharSequence;

.field private mListView:Landroid/widget/ListView;

.field private mListViewItemnum:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeButton;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeButton;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    return-object v0
.end method

.method static synthetic -get4(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get5(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeButton;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    return-object v0
.end method

.method static synthetic -get6(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get7(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic -get8(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/LePopupWindowController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/letv/leui/widget/LePopupWindowController;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCheckedItem:I

    return p1
.end method

.method static synthetic -set2(Lcom/letv/leui/widget/LePopupWindowController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic -set3(Lcom/letv/leui/widget/LePopupWindowController;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListViewItemnum:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const v0, 0x10900b7

    sput v0, Lcom/letv/leui/widget/LePopupWindowController;->m_MyAlertContentViewId:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingSpecified:Z

    .line 92
    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveColor:I

    .line 98
    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeColor:I

    .line 103
    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralColor:I

    .line 109
    iput v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconId:I

    .line 125
    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCheckedItem:I

    .line 133
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowController$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LePopupWindowController$1;-><init>(Lcom/letv/leui/widget/LePopupWindowController;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 181
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mContext:Landroid/content/Context;

    .line 182
    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 183
    iput-object p3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    .line 184
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/letv/leui/widget/LePopupWindowController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mHandler:Landroid/os/Handler;

    .line 185
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/letv/leui/widget/LePopupWindowController;->density:F

    .line 180
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    return v4

    .line 197
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 198
    return v3

    :cond_1
    move-object v1, p0

    .line 201
    check-cast v1, Landroid/view/ViewGroup;

    .line 202
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 203
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 204
    add-int/lit8 v0, v0, -0x1

    .line 205
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 206
    invoke-static {p0}, Lcom/letv/leui/widget/LePopupWindowController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    return v4

    .line 211
    :cond_3
    return v3
.end method

.method private static dip2px(F)I
    .locals 2
    .param p0, "dp"    # F

    .prologue
    .line 189
    sget v0, Lcom/letv/leui/widget/LePopupWindowController;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 8
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;
    .param p2, "contentPanel"    # Landroid/widget/LinearLayout;
    .param p3, "customPanel"    # Landroid/view/View;
    .param p4, "hasButtons"    # Z
    .param p5, "axxd"    # Landroid/content/res/TypedArray;
    .param p6, "hasTitle"    # Z
    .param p7, "buttonPanel"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 636
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 637
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 638
    iget v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCheckedItem:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 639
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCheckedItem:I

    invoke-virtual {v3, v4, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 640
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCheckedItem:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 643
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 644
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lcom/letv/leui/widget/LePopupWindowController;->dip2px(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 647
    iget v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListViewItemnum:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_1

    .line 648
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    invoke-interface {v3, v5, v6, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 649
    .local v2, "mView":Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 650
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 649
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 652
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v0, v3

    .line 653
    .local v0, "height":F
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 654
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v3, 0x40b00000    # 5.5f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 655
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    .end local v0    # "height":F
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "mView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setupButtons()Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, "whichButtons":I
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v3, 0x1020464

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LeButton;

    iput-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    .line 568
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeButton;->setHasStroke(Z)V

    .line 570
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    sget-object v3, Lcom/letv/leui/widget/LeButton$DefStyle;->WHITE_BG_BLK:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeButton;->setDefBGStyleMode(Lcom/letv/leui/widget/LeButton$DefStyle;)V

    .line 571
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v3, 0x1020463

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->PositiveGapline:Landroid/widget/ImageView;

    .line 573
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v1, v4}, Lcom/letv/leui/widget/LeButton;->setVisibility(I)V

    .line 575
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->PositiveGapline:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v3, 0x1020466

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LeButton;

    iput-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    .line 587
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeButton;->setHasStroke(Z)V

    .line 589
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    sget-object v3, Lcom/letv/leui/widget/LeButton$DefStyle;->WHITE_BG_BLK:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeButton;->setDefBGStyleMode(Lcom/letv/leui/widget/LeButton$DefStyle;)V

    .line 590
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v3, 0x1020465

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->NegativeGapline:Landroid/widget/ImageView;

    .line 592
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 593
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v1, v4}, Lcom/letv/leui/widget/LeButton;->setVisibility(I)V

    .line 594
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->NegativeGapline:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 605
    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v3, 0x1020462

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LeButton;

    iput-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    .line 606
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeButton;->setHasStroke(Z)V

    .line 608
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    sget-object v3, Lcom/letv/leui/widget/LeButton$DefStyle;->WHITE_BG_BLK:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeButton;->setDefBGStyleMode(Lcom/letv/leui/widget/LeButton$DefStyle;)V

    .line 609
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v3, 0x1020461

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->NeutralGapline:Landroid/widget/ImageView;

    .line 611
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 612
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v1, v4}, Lcom/letv/leui/widget/LeButton;->setVisibility(I)V

    .line 613
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->NeutralGapline:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 624
    :goto_2
    if-eqz v0, :cond_6

    const/4 v1, 0x1

    :goto_3
    return v1

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeButton;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeButton;->setVisibility(I)V

    .line 579
    iget v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveColor:I

    if-eq v1, v5, :cond_1

    .line 580
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    iget v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveColor:I

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeButton;->setTextColor(I)V

    .line 583
    :cond_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 596
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeButton;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeButton;->setVisibility(I)V

    .line 598
    iget v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeColor:I

    if-eq v1, v5, :cond_3

    .line 599
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    iget v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeColor:I

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeButton;->setTextColor(I)V

    .line 602
    :cond_3
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 615
    :cond_4
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeButton;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeButton;->setVisibility(I)V

    .line 617
    iget v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralColor:I

    if-eq v1, v5, :cond_5

    .line 618
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    iget v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralColor:I

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeButton;->setTextColor(I)V

    .line 621
    :cond_5
    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_6
    move v1, v2

    .line 624
    goto :goto_3
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const v5, 0x102045d

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 514
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mScrollView:Landroid/widget/ScrollView;

    .line 515
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 518
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v1, 0x102045e

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessageView:Landroid/widget/TextView;

    .line 519
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 520
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 529
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 531
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    .line 532
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 531
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 535
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupLicence()Z
    .locals 3

    .prologue
    .line 541
    const/4 v0, 0x1

    .line 542
    .local v0, "hasLicence":Z
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v2, 0x10203de

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    .line 543
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 544
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeCheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v1, :cond_0

    .line 548
    new-instance v1, Lcom/letv/leui/widget/LePopupWindowController$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LePopupWindowController$3;-><init>(Lcom/letv/leui/widget/LePopupWindowController;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 559
    :goto_0
    return v0

    .line 555
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeCheckBox;->setVisibility(I)V

    .line 556
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const v6, 0x1020455

    const/16 v9, 0x8

    .line 458
    const/4 v1, 0x1

    .line 460
    .local v1, "hasTitle":Z
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 462
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 463
    const/4 v4, -0x1

    const/4 v5, -0x2

    .line 462
    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 465
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 469
    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 510
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 471
    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    .line 473
    .local v0, "hasTextTitle":Z
    :goto_1
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v5, 0x1020456

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    .line 474
    if-eqz v0, :cond_5

    .line 477
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v5, 0x1020457

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitleView:Landroid/widget/TextView;

    .line 479
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconId:I

    if-lez v4, :cond_3

    .line 487
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 471
    .end local v0    # "hasTextTitle":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "hasTextTitle":Z
    goto :goto_1

    .line 488
    :cond_3
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 489
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 490
    :cond_4
    iget v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconId:I

    if-nez v4, :cond_0

    .line 495
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    .line 496
    iget-object v6, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    .line 497
    iget-object v7, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    .line 498
    iget-object v8, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    .line 495
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 499
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 504
    :cond_5
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 505
    .restart local v3    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 17

    .prologue
    .line 394
    const/4 v4, 0x0

    .line 395
    .local v4, "customPanel":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x1020459

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "customPanel":Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .line 397
    .local v4, "customPanel":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x102045a

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 398
    .local v10, "custom":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v14 .. v16}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v1, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingSpecified:Z

    if-eqz v1, :cond_0

    .line 400
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingTop:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingRight:I

    .line 401
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingBottom:I

    move/from16 v16, v0

    .line 400
    move/from16 v0, v16

    invoke-virtual {v10, v1, v14, v15, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 403
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 404
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 410
    .end local v4    # "customPanel":Landroid/widget/FrameLayout;
    .end local v10    # "custom":Landroid/widget/FrameLayout;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x102045c

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 411
    .local v3, "contentPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/letv/leui/widget/LePopupWindowController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LePopupWindowController;->setupButtons()Z

    move-result v5

    .line 414
    .local v5, "hasButtons":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x1020454

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 417
    .local v2, "topPanel":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    .line 418
    .local v6, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/letv/leui/widget/LePopupWindowController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v7

    .line 420
    .local v7, "hasTitle":Z
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LePopupWindowController;->setupLicence()Z

    move-result v11

    .line 421
    .local v11, "hasLicence":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x102045f

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 422
    .local v12, "licencePanel":Landroid/widget/LinearLayout;
    if-eqz v11, :cond_6

    .line 423
    new-instance v1, Lcom/letv/leui/widget/LePopupWindowController$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/letv/leui/widget/LePopupWindowController$2;-><init>(Lcom/letv/leui/widget/LePopupWindowController;)V

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x1020460

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 438
    .local v8, "buttonPanel":Landroid/view/View;
    if-nez v5, :cond_2

    .line 439
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v14, 0x8

    if-eq v1, v14, :cond_7

    .line 443
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x1020458

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 444
    .local v13, "titleGapLine":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    .end local v13    # "titleGapLine":Landroid/widget/ImageView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v14, 0x8

    if-eq v1, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_4

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x102045b

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 449
    .local v9, "contentGapLine":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .end local v9    # "contentGapLine":Landroid/widget/ImageView;
    :cond_4
    move-object/from16 v1, p0

    .line 453
    invoke-direct/range {v1 .. v8}, Lcom/letv/leui/widget/LePopupWindowController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 392
    return-void

    .line 407
    .end local v2    # "topPanel":Landroid/widget/LinearLayout;
    .end local v3    # "contentPanel":Landroid/widget/LinearLayout;
    .end local v5    # "hasButtons":Z
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "hasTitle":Z
    .end local v8    # "buttonPanel":Landroid/view/View;
    .end local v11    # "hasLicence":Z
    .end local v12    # "licencePanel":Landroid/widget/LinearLayout;
    .local v4, "customPanel":Landroid/widget/FrameLayout;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x1020459

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 434
    .end local v4    # "customPanel":Landroid/widget/FrameLayout;
    .restart local v2    # "topPanel":Landroid/widget/LinearLayout;
    .restart local v3    # "contentPanel":Landroid/widget/LinearLayout;
    .restart local v5    # "hasButtons":Z
    .restart local v6    # "a":Landroid/content/res/TypedArray;
    .restart local v7    # "hasTitle":Z
    .restart local v11    # "hasLicence":Z
    .restart local v12    # "licencePanel":Landroid/widget/LinearLayout;
    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 442
    .restart local v8    # "buttonPanel":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    goto :goto_2
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 372
    packed-switch p1, :pswitch_data_0

    .line 380
    const/4 v0, 0x0

    return-object v0

    .line 374
    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    return-object v0

    .line 376
    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    return-object v0

    .line 378
    :pswitch_2
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    return-object v0

    .line 372
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLicenceCheckBox()Lcom/letv/leui/widget/LeCheckBox;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public install()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    .line 216
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 218
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/letv/leui/widget/LePopupWindowController;->m_MyAlertContentViewId:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 223
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 225
    invoke-direct {p0}, Lcom/letv/leui/widget/LePopupWindowController;->setupView()V

    .line 214
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 293
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 294
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 297
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :pswitch_0
    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 301
    iput-object p4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 291
    :goto_0
    return-void

    .line 305
    :pswitch_1
    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 306
    iput-object p4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 310
    :pswitch_2
    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 311
    iput-object p4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonColor(II)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "color"    # I

    .prologue
    .line 320
    packed-switch p1, :pswitch_data_0

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :pswitch_0
    iput p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveColor:I

    .line 319
    :goto_0
    return-void

    .line 326
    :pswitch_1
    iput p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeColor:I

    goto :goto_0

    .line 329
    :pswitch_2
    iput p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralColor:I

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCustomTitleView:Landroid/view/View;

    .line 238
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 342
    iput p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconId:I

    .line 343
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 344
    if-lez p1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    if-nez p1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 354
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mForceInverseBackground:Z

    .line 359
    return-void
.end method

.method public setLicence(Ljava/lang/CharSequence;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "licenceMessage"    # Ljava/lang/CharSequence;
    .param p2, "licenceListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceMessage:Ljava/lang/CharSequence;

    .line 251
    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 252
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeCheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessage:Ljava/lang/CharSequence;

    .line 244
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitle:Ljava/lang/CharSequence;

    .line 230
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingSpecified:Z

    .line 260
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 270
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingSpecified:Z

    .line 272
    iput p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingLeft:I

    .line 273
    iput p3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingTop:I

    .line 274
    iput p4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingRight:I

    .line 275
    iput p5, p0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingBottom:I

    .line 269
    return-void
.end method
