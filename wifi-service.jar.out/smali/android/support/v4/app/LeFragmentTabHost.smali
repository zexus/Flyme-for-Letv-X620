.class public Landroid/support/v4/app/LeFragmentTabHost;
.super Landroid/widget/TabHost;
.source "LeFragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/LeFragmentTabHost$TabInfo;,
        Landroid/support/v4/app/LeFragmentTabHost$DummyTabFactory;,
        Landroid/support/v4/app/LeFragmentTabHost$SavedState;,
        Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;,
        Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_CLICK_TIME_MS:I = 0x15e


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mHideFragment:Z

.field private mLastClickTime:J

.field private mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

.field private mOnClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;

.field private mOnDoubleClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/LeFragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0, p1, v2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mHideFragment:Z

    .line 515
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    .line 126
    invoke-direct {p0, p1, v2}, Landroid/support/v4/app/LeFragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mHideFragment:Z

    .line 515
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/LeFragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6
    .param p1, "tabId"    # Ljava/lang/String;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, "newTab":Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    const/4 v0, 0x0

    .end local v1    # "newTab":Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 396
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    .line 397
    .local v2, "tab":Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    invoke-static {v2}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get3(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    move-object v1, v2

    .line 395
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    .end local v2    # "tab":Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    :cond_1
    if-nez v1, :cond_2

    .line 402
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No tab known for tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 404
    :cond_2
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    if-eq v3, v1, :cond_6

    .line 405
    if-nez p2, :cond_3

    .line 406
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 408
    :cond_3
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    if-eqz v3, :cond_4

    .line 409
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 410
    iget-boolean v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mHideFragment:Z

    if-nez v3, :cond_7

    .line 411
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 417
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 418
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_8

    .line 419
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContext:Landroid/content/Context;

    .line 420
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get1(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get0(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/os/Bundle;

    move-result-object v5

    .line 419
    invoke-static {v3, v4, v5}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-set2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 421
    iget v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get3(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 431
    :cond_5
    :goto_2
    iput-object v1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    .line 433
    :cond_6
    return-object p2

    .line 413
    :cond_7
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 423
    :cond_8
    iget-boolean v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mHideFragment:Z

    if-nez v3, :cond_9

    .line 424
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2

    .line 426
    :cond_9
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2
.end method

.method private ensureContent()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 208
    iget v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/LeFragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 209
    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    return-void
.end method

.method private ensureHierarchy(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x1020013

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 146
    invoke-virtual {p0, v4}, Landroid/support/v4/app/LeFragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 147
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 148
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 149
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Landroid/support/v4/app/LeFragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v2, Landroid/widget/TabWidget;

    invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 154
    .local v2, "tw":Landroid/widget/TabWidget;
    invoke-virtual {v2, v4}, Landroid/widget/TabWidget;->setId(I)V

    .line 155
    invoke-virtual {v2, v6}, Landroid/widget/TabWidget;->setOrientation(I)V

    .line 156
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    const/4 v4, -0x2

    .line 156
    invoke-direct {v3, v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 161
    .local v0, "fl":Landroid/widget/FrameLayout;
    const v3, 0x1020011

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 162
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v0, Landroid/widget/FrameLayout;

    .end local v0    # "fl":Landroid/widget/FrameLayout;
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .restart local v0    # "fl":Landroid/widget/FrameLayout;
    iput-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 165
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 166
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 167
    const/high16 v4, 0x3f800000    # 1.0f

    .line 166
    invoke-direct {v3, v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .end local v0    # "fl":Landroid/widget/FrameLayout;
    .end local v1    # "ll":Landroid/widget/LinearLayout;
    .end local v2    # "tw":Landroid/widget/TabWidget;
    :cond_0
    return-void
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 136
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100f3

    aput v2, v1, v3

    .line 135
    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 134
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "tabSpec"    # Landroid/widget/TabHost$TabSpec;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 222
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Landroid/support/v4/app/LeFragmentTabHost$DummyTabFactory;

    iget-object v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/LeFragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 223
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "tag":Ljava/lang/String;
    new-instance v1, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    invoke-direct {v1, v2, p2, p3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 227
    .local v1, "info":Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    iget-boolean v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mAttached:Z

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-set2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 232
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p0, p1}, Landroid/support/v4/app/LeFragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 221
    return-void

    .line 233
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 234
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-boolean v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mHideFragment:Z

    if-nez v3, :cond_2

    .line 235
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 240
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 237
    :cond_2
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 297
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 299
    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "currentTab":Ljava/lang/String;
    const/4 v1, 0x0

    .line 304
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/4 v2, 0x0

    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 305
    iget-object v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    .line 306
    .local v3, "tab":Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    iget-object v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get3(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-set2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 309
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 327
    :cond_0
    :goto_1
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 304
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    :cond_2
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get1(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get1(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 313
    :cond_3
    if-nez v1, :cond_4

    .line 314
    iget-object v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 321
    :cond_4
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 322
    invoke-static {v3, v6}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-set2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    goto :goto_1

    .line 328
    :cond_5
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get3(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 332
    iput-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    goto :goto_2

    .line 336
    :cond_6
    if-nez v1, :cond_7

    .line 337
    iget-object v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 340
    :cond_7
    iget-boolean v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mHideFragment:Z

    if-nez v4, :cond_8

    .line 341
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2

    .line 343
    :cond_8
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2

    .line 351
    .end local v3    # "tab":Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    :cond_9
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mAttached:Z

    .line 352
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/LeFragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 353
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-eqz v1, :cond_a

    .line 354
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 355
    iget-object v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 296
    :cond_a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 361
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mAttached:Z

    .line 360
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 375
    check-cast v0, Landroid/support/v4/app/LeFragmentTabHost$SavedState;

    .line 376
    .local v0, "ss":Landroid/support/v4/app/LeFragmentTabHost$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/app/LeFragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 377
    iget-object v1, v0, Landroid/support/v4/app/LeFragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/LeFragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 367
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 368
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/app/LeFragmentTabHost$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/app/LeFragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 369
    .local v0, "ss":Landroid/support/v4/app/LeFragmentTabHost$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/app/LeFragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    .line 370
    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 382
    iget-boolean v1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mAttached:Z

    if-eqz v1, :cond_0

    .line 383
    invoke-direct {p0, p1, v2}, Landroid/support/v4/app/LeFragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 384
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 388
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v1, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 381
    :cond_1
    return-void
.end method

.method public replaceTab(ILjava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "position"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 249
    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    .line 250
    :cond_0
    return-void

    .line 249
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 253
    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    .line 254
    .local v1, "tab":Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    if-nez v1, :cond_2

    .line 255
    return-void

    .line 257
    :cond_2
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get1(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p3, :cond_3

    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get0(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_3

    .line 258
    return-void

    .line 260
    :cond_3
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 262
    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 263
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 266
    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getCurrentTab()I

    move-result v2

    if-ne v2, p1, :cond_5

    .line 267
    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContext:Landroid/content/Context;

    .line 268
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-static {v2, v3, p3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-set2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 269
    iget v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-get3(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 274
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 278
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_4
    invoke-static {v1, p2}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-set1(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Ljava/lang/Class;)Ljava/lang/Class;

    .line 279
    invoke-static {v1, p3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-set0(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 248
    return-void

    .line 271
    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_5
    invoke-static {v1, v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->-set2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method public replaceTab(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 283
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 284
    :cond_0
    return-void

    .line 287
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 288
    iget-object v1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 289
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v4/app/LeFragmentTabHost;->replaceTab(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 282
    :cond_2
    return-void

    .line 287
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    const-wide/16 v6, -0x1

    .line 473
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 474
    :cond_0
    return-void

    .line 476
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getCurrentTab()I

    move-result v2

    if-ne p1, v2, :cond_6

    .line 477
    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;

    if-eqz v2, :cond_2

    .line 478
    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;

    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;->onClickTabNotChanged(Ljava/lang/String;)V

    .line 481
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 482
    .local v0, "currentTimeMs":J
    iget-wide v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    .line 483
    iget-wide v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x15e

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    .line 484
    iput-wide v6, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    .line 485
    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnDoubleClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;

    if-eqz v2, :cond_3

    .line 486
    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnDoubleClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;

    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;->onDoubleClickTabNotChanged(Ljava/lang/String;)V

    .line 498
    .end local v0    # "currentTimeMs":J
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 471
    return-void

    .line 489
    .restart local v0    # "currentTimeMs":J
    :cond_4
    iput-wide v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    goto :goto_0

    .line 492
    :cond_5
    iput-wide v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    goto :goto_0

    .line 495
    .end local v0    # "currentTimeMs":J
    :cond_6
    iput-wide v6, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    goto :goto_0
.end method

.method public setFragmentHiddenEnabled(Z)V
    .locals 0
    .param p1, "hideFragment"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mHideFragment:Z

    .line 439
    return-void
.end method

.method public setOnClickTabNotChangeListener(Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;

    .prologue
    .line 518
    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;

    .line 517
    return-void
.end method

.method public setOnDoubleClickTabNotChangeListener(Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;

    .prologue
    .line 522
    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnDoubleClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;

    .line 521
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/TabHost$OnTabChangeListener;

    .prologue
    .line 218
    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 217
    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 179
    const-string/jumbo v1, "Must call setup() that takes a Context and FragmentManager"

    .line 178
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Landroid/support/v4/app/LeFragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 184
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 185
    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContext:Landroid/content/Context;

    .line 186
    iput-object p2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 187
    invoke-direct {p0}, Landroid/support/v4/app/LeFragmentTabHost;->ensureContent()V

    .line 182
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "containerId"    # I

    .prologue
    .line 191
    invoke-direct {p0, p1}, Landroid/support/v4/app/LeFragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 192
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 193
    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContext:Landroid/content/Context;

    .line 194
    iput-object p2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 195
    iput p3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    .line 196
    invoke-direct {p0}, Landroid/support/v4/app/LeFragmentTabHost;->ensureContent()V

    .line 197
    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 201
    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 202
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Landroid/support/v4/app/LeFragmentTabHost;->setId(I)V

    .line 190
    :cond_0
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;ILandroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "containerId"    # I
    .param p4, "realContent"    # Landroid/widget/FrameLayout;

    .prologue
    .line 447
    if-nez p4, :cond_1

    .line 448
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/LeFragmentTabHost;->setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/app/LeFragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 451
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 452
    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContext:Landroid/content/Context;

    .line 453
    iput-object p2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 454
    iput p3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    .line 456
    iput-object p4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 457
    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    if-eq v0, p3, :cond_2

    .line 458
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 459
    const-string/jumbo v1, "mRealTabContent and containerId mismatch"

    .line 458
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 465
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Landroid/support/v4/app/LeFragmentTabHost;->setId(I)V

    goto :goto_0
.end method
