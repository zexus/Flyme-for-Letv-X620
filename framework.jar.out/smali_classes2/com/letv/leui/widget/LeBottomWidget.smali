.class public Lcom/letv/leui/widget/LeBottomWidget;
.super Lcom/letv/leui/widget/BlurLinearLayout;
.source "LeBottomWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeBottomWidget$TabInfo;,
        Lcom/letv/leui/widget/LeBottomWidget$OnClickAndLongClickListener;,
        Lcom/letv/leui/widget/LeBottomWidget$1;
    }
.end annotation


# static fields
.field protected static MAX_TAB_CNT:I = 0x0

.field protected static MIN_TAB_CNT:I = 0x0

.field public static MODE_ICON_ONLY:I = 0x0

.field public static MODE_ICON_TEXT:I = 0x0

.field public static final MSG_ADD_TAB:I = 0x1

.field public static final MSG_SET_MODE_AND_TAB_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LeBottomWidget"

.field public static mHandler:Landroid/os/Handler;


# instance fields
.field protected mLayoutResId:I

.field protected mListener:Lcom/letv/leui/widget/LeBottomWidget$OnClickAndLongClickListener;

.field protected mMode:I

.field protected mTabCnt:I

.field protected mTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mTopStrip:Landroid/graphics/drawable/Drawable;

.field protected mTopStripHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29
    sput v1, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_ONLY:I

    .line 30
    const/4 v0, 0x2

    sput v0, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_TEXT:I

    .line 32
    sput v1, Lcom/letv/leui/widget/LeBottomWidget;->MIN_TAB_CNT:I

    .line 33
    const/4 v0, 0x5

    sput v0, Lcom/letv/leui/widget/LeBottomWidget;->MAX_TAB_CNT:I

    .line 48
    new-instance v0, Lcom/letv/leui/widget/LeBottomWidget$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/LeBottomWidget$1;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/LeBottomWidget;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 83
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    .line 36
    iput v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    .line 37
    iput v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mLayoutResId:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTags:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTopStrip:Landroid/graphics/drawable/Drawable;

    .line 41
    iput v1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTopStripHeight:I

    .line 84
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeBottomWidget;->setBlurEnabled(Z)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/BlurLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    .line 36
    iput v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    .line 37
    iput v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mLayoutResId:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTags:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTopStrip:Landroid/graphics/drawable/Drawable;

    .line 41
    iput v1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTopStripHeight:I

    .line 79
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeBottomWidget;->setBlurEnabled(Z)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/BlurLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    .line 36
    iput v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    .line 37
    iput v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mLayoutResId:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTags:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTopStrip:Landroid/graphics/drawable/Drawable;

    .line 41
    iput v1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTopStripHeight:I

    .line 74
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeBottomWidget;->setBlurEnabled(Z)V

    .line 72
    return-void
.end method

.method public static addBottomWidgetToPreference(Landroid/app/Activity;Lcom/letv/leui/widget/LeBottomWidget;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bw"    # Lcom/letv/leui/widget/LeBottomWidget;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 567
    if-nez p0, :cond_0

    .line 568
    return-void

    .line 571
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 572
    const v7, 0x1020002

    .line 571
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 573
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v6, v9, :cond_2

    .line 574
    :cond_1
    return-void

    .line 576
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 577
    .local v3, "oldRootView":Landroid/view/ViewGroup;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 584
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 585
    .local v2, "newRootView":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 587
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 588
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 593
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 595
    .local v4, "p1":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 597
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 601
    const/4 v6, -0x2

    .line 600
    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 602
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x50

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 603
    invoke-virtual {v2, p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    return-void
.end method

.method private addIcon(III)V
    .locals 2
    .param p1, "sequence"    # I
    .param p2, "enabledIconId"    # I
    .param p3, "disabledIconId"    # I

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getTabIcon(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 271
    .local v0, "img":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 272
    return-void

    .line 274
    :cond_0
    if-gez p3, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private addIconTitle(IIILjava/lang/String;)V
    .locals 4
    .param p1, "sequence"    # I
    .param p2, "enabledIconId"    # I
    .param p3, "disabledIconId"    # I
    .param p4, "title"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getTabIcon(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 283
    .local v0, "img":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getTabTitle(I)Landroid/widget/TextView;

    move-result-object v1

    .line 285
    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 286
    if-gez p3, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    :cond_1
    :goto_1
    return-void

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 295
    :cond_3
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10600f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method private getChildPos(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 318
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    iget v1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    if-ge v0, v1, :cond_1

    .line 319
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBottomWidget;->getTabView(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 320
    return v0

    .line 318
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getTabPos(Ljava/lang/String;)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 432
    const/4 v1, -0x1

    .line 433
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    if-ge v0, v2, :cond_0

    .line 434
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    move v1, v0

    .line 439
    :cond_0
    return v1

    .line 433
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isValid()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 351
    iget v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    sget v1, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_ONLY:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    sget v1, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_TEXT:I

    if-eq v0, v1, :cond_0

    .line 352
    return v2

    .line 355
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    sget v1, Lcom/letv/leui/widget/LeBottomWidget;->MIN_TAB_CNT:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    sget v1, Lcom/letv/leui/widget/LeBottomWidget;->MAX_TAB_CNT:I

    if-le v0, v1, :cond_2

    .line 356
    :cond_1
    return v2

    .line 359
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private layoutTabs()V
    .locals 3

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomWidget;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    return-void

    .line 558
    :cond_0
    const/4 v0, 0x0

    .line 559
    .local v0, "hasTitle":Z
    iget v1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    sget v2, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_TEXT:I

    if-ne v1, v2, :cond_1

    .line 560
    const/4 v0, 0x1

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Lcom/letv/leui/widget/LeTabWidgetUtils;->setTabWidgetLayout(Landroid/content/Context;Landroid/widget/LinearLayout;ZZ)V

    .line 554
    return-void
.end method

.method private setTabListener()V
    .locals 3

    .prologue
    .line 545
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_1

    .line 546
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBottomWidget;->getTabView(I)Landroid/view/View;

    move-result-object v1

    .line 547
    .local v1, "tab":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 545
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    .end local v1    # "tab":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public addTab(IILjava/lang/String;)V
    .locals 6
    .param p1, "sequence"    # I
    .param p2, "enabledIconId"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/LeBottomWidget;->addTab(ILjava/lang/String;IILjava/lang/String;)V

    .line 214
    return-void
.end method

.method public addTab(ILjava/lang/String;IILjava/lang/String;)V
    .locals 2
    .param p1, "sequence"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "enabledIconId"    # I
    .param p4, "disabledIconId"    # I
    .param p5, "title"    # Ljava/lang/String;

    .prologue
    .line 219
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    if-lt p1, v0, :cond_1

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sequence must be between 0 and mTabCnt-1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    sget v1, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_ONLY:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    sget v1, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_TEXT:I

    if-eq v0, v1, :cond_2

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "please set mMode at first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_2
    if-gez p3, :cond_3

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "enabledIconId must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 235
    :cond_4
    :goto_0
    iget v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    sget v1, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_ONLY:I

    if-ne v0, v1, :cond_7

    .line 236
    invoke-direct {p0, p1, p3, p4}, Lcom/letv/leui/widget/LeBottomWidget;->addIcon(III)V

    .line 218
    :cond_5
    :goto_1
    return-void

    .line 232
    :cond_6
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 237
    :cond_7
    iget v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    sget v1, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_TEXT:I

    if-ne v0, v1, :cond_5

    .line 238
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/letv/leui/widget/LeBottomWidget;->addIconTitle(IIILjava/lang/String;)V

    goto :goto_1
.end method

.method public addTab(ILjava/lang/String;Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .param p1, "sequence"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "v"    # Landroid/view/View;
    .param p4, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 188
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    if-lt p1, v1, :cond_1

    .line 189
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sequence must be between 0 and mTabCnt-1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_1
    iget v1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    sget v2, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_ONLY:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    sget v2, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_TEXT:I

    if-eq v1, v2, :cond_2

    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "please set mMode at first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 197
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "v is null or has a parent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 204
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getTabView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 205
    .local v0, "vg":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 207
    if-nez p4, :cond_7

    .line 208
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 187
    :goto_1
    return-void

    .line 201
    .end local v0    # "vg":Landroid/widget/RelativeLayout;
    :cond_6
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    .restart local v0    # "vg":Landroid/widget/RelativeLayout;
    :cond_7
    invoke-virtual {v0, p3, p4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public addTabAsync(ILjava/lang/String;IILjava/lang/String;)V
    .locals 4
    .param p1, "sequence"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "enabledIconId"    # I
    .param p4, "disabledIconId"    # I
    .param p5, "title"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v1, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;-><init>(Lcom/letv/leui/widget/LeBottomWidget;)V

    .line 258
    .local v1, "tabInfo":Lcom/letv/leui/widget/LeBottomWidget$TabInfo;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;->bw:Ljava/lang/ref/WeakReference;

    .line 259
    iput p1, v1, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;->sequence:I

    .line 260
    iput-object p2, v1, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;->tag:Ljava/lang/String;

    .line 261
    iput p3, v1, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;->enabledIconId:I

    .line 262
    iput p4, v1, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;->disabledIconId:I

    .line 263
    iput-object p5, v1, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;->title:Ljava/lang/String;

    .line 265
    sget-object v2, Lcom/letv/leui/widget/LeBottomWidget;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 266
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 256
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 500
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->removeAllViews()V

    .line 502
    iput v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    .line 503
    iput v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    .line 504
    iput v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mLayoutResId:I

    .line 505
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 499
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 305
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->getLeft()I

    move-result v1

    .line 306
    .local v1, "left":I
    const/4 v3, 0x0

    .line 307
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->getRight()I

    move-result v2

    .line 308
    .local v2, "right":I
    iget v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTopStripHeight:I

    .line 310
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTopStrip:Landroid/graphics/drawable/Drawable;

    .line 311
    .local v4, "topStrip":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    iget v5, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTopStripHeight:I

    if-eqz v5, :cond_0

    .line 312
    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 313
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 302
    :cond_0
    return-void
.end method

.method public getEnable(I)Z
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getTabView(I)Landroid/view/View;

    move-result-object v0

    .line 477
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 478
    const/4 v1, 0x0

    return v1

    .line 480
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    return v1
.end method

.method public getEnable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 484
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getTabPos(Ljava/lang/String;)I

    move-result v0

    .line 485
    .local v0, "pos":I
    if-gez v0, :cond_0

    .line 486
    return v1

    .line 488
    :cond_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBottomWidget;->getEnable(I)Z

    move-result v1

    return v1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    return v0
.end method

.method public getTabIcon(I)Landroid/widget/ImageView;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x0

    .line 363
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getTabView(I)Landroid/view/View;

    move-result-object v1

    .line 364
    .local v1, "tab":Landroid/view/View;
    if-nez v1, :cond_0

    .line 365
    return-object v2

    .line 367
    :cond_0
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 368
    .local v0, "img":Landroid/widget/ImageView;
    return-object v0
.end method

.method public getTabIcon(Ljava/lang/String;)Landroid/widget/ImageView;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 372
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getTabView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 373
    .local v1, "tab":Landroid/view/View;
    if-nez v1, :cond_0

    .line 374
    return-object v2

    .line 376
    :cond_0
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 377
    .local v0, "img":Landroid/widget/ImageView;
    return-object v0
.end method

.method public getTabTitle(I)Landroid/widget/TextView;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x0

    .line 381
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getTabView(I)Landroid/view/View;

    move-result-object v0

    .line 382
    .local v0, "tab":Landroid/view/View;
    if-nez v0, :cond_0

    .line 383
    return-object v2

    .line 385
    :cond_0
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 386
    .local v1, "tv":Landroid/widget/TextView;
    return-object v1
.end method

.method public getTabTitle(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 390
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getTabView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, "tab":Landroid/view/View;
    if-nez v0, :cond_0

    .line 392
    return-object v2

    .line 394
    :cond_0
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 395
    .local v1, "tv":Landroid/widget/TextView;
    return-object v1
.end method

.method public getTabView(I)Landroid/view/View;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 411
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomWidget;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    return-object v1

    .line 414
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    if-lt p1, v0, :cond_2

    .line 415
    :cond_1
    return-object v1

    .line 417
    :cond_2
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabView(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 421
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomWidget;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    return-object v2

    .line 424
    :cond_0
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getTabPos(Ljava/lang/String;)I

    move-result v0

    .line 425
    .local v0, "pos":I
    if-gez v0, :cond_1

    .line 426
    return-object v2

    .line 428
    :cond_1
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBottomWidget;->getTabView(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 328
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mListener:Lcom/letv/leui/widget/LeBottomWidget$OnClickAndLongClickListener;

    if-eqz v1, :cond_0

    .line 329
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getChildPos(Landroid/view/View;)I

    move-result v0

    .line 330
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 331
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomWidget;->mListener:Lcom/letv/leui/widget/LeBottomWidget$OnClickAndLongClickListener;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/letv/leui/widget/LeBottomWidget$OnClickAndLongClickListener;->onClick(ILjava/lang/String;)V

    .line 327
    .end local v0    # "pos":I
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mListener:Lcom/letv/leui/widget/LeBottomWidget$OnClickAndLongClickListener;

    if-eqz v1, :cond_0

    .line 338
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getChildPos(Landroid/view/View;)I

    move-result v0

    .line 339
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 340
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomWidget;->mListener:Lcom/letv/leui/widget/LeBottomWidget$OnClickAndLongClickListener;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/letv/leui/widget/LeBottomWidget$OnClickAndLongClickListener;->onLongClick(ILjava/lang/String;)Z

    move-result v1

    return v1

    .line 343
    .end local v0    # "pos":I
    :cond_0
    return v2
.end method

.method public setEnable(IZ)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "enabled"    # Z

    .prologue
    const v6, 0x3c23d70a    # 0.01f

    .line 444
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getTabView(I)Landroid/view/View;

    move-result-object v2

    .line 445
    .local v2, "tab":Landroid/view/View;
    if-nez v2, :cond_0

    .line 446
    return-void

    .line 449
    :cond_0
    iget v4, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    sget v5, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_ONLY:I

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    sget v5, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_TEXT:I

    if-ne v4, v5, :cond_4

    :cond_1
    move-object v3, v2

    .line 450
    check-cast v3, Landroid/view/ViewGroup;

    .line 452
    .local v3, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .line 453
    .local v0, "alpha":F
    if-eqz p2, :cond_2

    .line 454
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00bf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v4, v6

    .line 459
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 460
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 461
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 456
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v4, v6

    goto :goto_0

    .line 463
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 443
    .end local v0    # "alpha":F
    .end local v1    # "i":I
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :cond_4
    return-void
.end method

.method public setEnable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomWidget;->getTabPos(Ljava/lang/String;)I

    move-result v0

    .line 469
    .local v0, "pos":I
    if-gez v0, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/letv/leui/widget/LeBottomWidget;->setEnable(IZ)V

    .line 467
    return-void
.end method

.method public setEnableAnimation(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomWidget;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 519
    return-void

    .line 521
    :cond_0
    const-string/jumbo v2, "LeBottomWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEnableAnimation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_2

    .line 524
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBottomWidget;->getTabView(I)Landroid/view/View;

    move-result-object v1

    .line 525
    .local v1, "tab":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/letv/leui/widget/LeGlowRelativeLayout;

    if-eqz v2, :cond_1

    .line 526
    check-cast v1, Lcom/letv/leui/widget/LeGlowRelativeLayout;

    .end local v1    # "tab":Landroid/view/View;
    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/LeGlowRelativeLayout;->setEnabledAnimation(Z)V

    .line 523
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_2
    return-void
.end method

.method public setModeAndTabCount(II)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "tabCnt"    # I

    .prologue
    const/4 v6, 0x0

    .line 107
    sget v3, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_ONLY:I

    if-eq p1, v3, :cond_0

    sget v3, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_TEXT:I

    if-eq p1, v3, :cond_0

    .line 108
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "mode must be MODE_ICON_ONLY or MODE_ICON_TEXT"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_0
    sget v3, Lcom/letv/leui/widget/LeBottomWidget;->MIN_TAB_CNT:I

    if-lt p2, v3, :cond_1

    sget v3, Lcom/letv/leui/widget/LeBottomWidget;->MAX_TAB_CNT:I

    if-le p2, v3, :cond_2

    .line 112
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "tabCnt must be between 1 and 5"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    :cond_2
    iget v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    if-ne v3, p1, :cond_3

    iget v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    if-ne v3, p2, :cond_3

    .line 116
    return-void

    .line 118
    :cond_3
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeBottomWidget;->setEnableAnimation(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->clear()V

    .line 121
    iput p1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    .line 122
    iput p2, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_4

    .line 125
    iget-object v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTags:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_4
    iget v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mMode:I

    sget v4, Lcom/letv/leui/widget/LeBottomWidget;->MODE_ICON_ONLY:I

    if-ne v3, v4, :cond_6

    .line 129
    iget v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    packed-switch v3, :pswitch_data_0

    .line 167
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 168
    const-string/jumbo v4, "layout_inflater"

    .line 167
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 169
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mLayoutResId:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "bw":Landroid/view/View;
    if-eqz v0, :cond_5

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 171
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "bw":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 174
    :cond_5
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomWidget;->layoutTabs()V

    .line 176
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomWidget;->setTabListener()V

    .line 177
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeBottomWidget;->setEnableAnimation(Z)V

    .line 106
    return-void

    .line 131
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :pswitch_0
    const v3, 0x1090083

    iput v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mLayoutResId:I

    goto :goto_1

    .line 134
    :pswitch_1
    const v3, 0x1090085

    iput v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mLayoutResId:I

    goto :goto_1

    .line 137
    :pswitch_2
    const v3, 0x1090087

    iput v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mLayoutResId:I

    goto :goto_1

    .line 140
    :pswitch_3
    const v3, 0x1090089

    iput v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mLayoutResId:I

    goto :goto_1

    .line 143
    :pswitch_4
    const v3, 0x109008b

    iput v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mLayoutResId:I

    goto :goto_1

    .line 148
    :cond_6
    iget v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 150
    :pswitch_5
    const v3, 0x1090084

    iput v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mLayoutResId:I

    goto :goto_1

    .line 153
    :pswitch_6
    const v3, 0x1090086

    iput v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mLayoutResId:I

    goto :goto_1

    .line 156
    :pswitch_7
    const v3, 0x1090088

    iput v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mLayoutResId:I

    goto :goto_1

    .line 159
    :pswitch_8
    const v3, 0x109008a

    iput v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mLayoutResId:I

    goto :goto_1

    .line 162
    :pswitch_9
    const v3, 0x109008c

    iput v3, p0, Lcom/letv/leui/widget/LeBottomWidget;->mLayoutResId:I

    goto :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 148
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setModeAndTabCountAsync(II)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "tabCnt"    # I

    .prologue
    .line 181
    new-instance v1, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;-><init>(Lcom/letv/leui/widget/LeBottomWidget;)V

    .line 182
    .local v1, "tabInfo":Lcom/letv/leui/widget/LeBottomWidget$TabInfo;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;->bw:Ljava/lang/ref/WeakReference;

    .line 183
    sget-object v2, Lcom/letv/leui/widget/LeBottomWidget;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 180
    return-void
.end method

.method public setOnClickAndLongClickListener(Lcom/letv/leui/widget/LeBottomWidget$OnClickAndLongClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/LeBottomWidget$OnClickAndLongClickListener;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mListener:Lcom/letv/leui/widget/LeBottomWidget$OnClickAndLongClickListener;

    .line 346
    return-void
.end method

.method public setPressColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 536
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_1

    .line 537
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBottomWidget;->getTabView(I)Landroid/view/View;

    move-result-object v1

    .line 538
    .local v1, "tab":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/letv/leui/widget/LeGlowRelativeLayout;

    if-eqz v2, :cond_0

    .line 539
    check-cast v1, Lcom/letv/leui/widget/LeGlowRelativeLayout;

    .end local v1    # "tab":Landroid/view/View;
    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/LeGlowRelativeLayout;->setPressColor(I)V

    .line 536
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    :cond_1
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTabCnt:I

    if-ge v0, v2, :cond_1

    .line 400
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBottomWidget;->getTabTitle(I)Landroid/widget/TextView;

    move-result-object v1

    .line 401
    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public setTopStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBottomWidget;->setTopStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    return-void
.end method

.method public setTopStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTopStrip:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->invalidate()V

    .line 91
    return-void
.end method

.method public setTopStripHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/letv/leui/widget/LeBottomWidget;->mTopStripHeight:I

    .line 99
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomWidget;->invalidate()V

    .line 97
    return-void
.end method
