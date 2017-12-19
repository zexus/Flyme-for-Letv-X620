.class public Lcom/letv/leui/util/ActionBarDoubleClickHelper;
.super Ljava/lang/Object;
.source "ActionBarDoubleClickHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;,
        Lcom/letv/leui/util/ActionBarDoubleClickHelper$OnDoubleClickListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_START_SCROLL_POSITION:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionBarView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mSimpleOnClickListener:Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/letv/leui/util/ActionBarDoubleClickHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/ActionBarDoubleClickHelper;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper;->mActivity:Landroid/app/Activity;

    .line 29
    iget-object v0, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/letv/leui/util/ActionBarDoubleClickHelper;->getActionBarView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper;->mActionBarView:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;

    invoke-direct {v0}, Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper;->mSimpleOnClickListener:Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;

    .line 32
    iget-object v0, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    const-string/jumbo v1, "ActionBarDoubleClickHelper constructor paramter must be an Activity object"

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    return-void
.end method

.method public static getActionBarView(Landroid/app/Activity;)Landroid/view/View;
    .locals 8
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 40
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-nez v4, :cond_1

    .line 41
    :cond_0
    return-object v5

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 45
    .local v0, "actionBarView":Landroid/view/View;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, "decorView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "action_bar"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 47
    .local v3, "resId":I
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "actionBarView":Landroid/view/View;
    sget-object v4, Lcom/letv/leui/util/ActionBarDoubleClickHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "actionBarView is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    return-object v0

    .line 49
    .end local v0    # "actionBarView":Landroid/view/View;
    .end local v1    # "decorView":Landroid/view/View;
    .end local v3    # "resId":I
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    return-object v0

    .line 51
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 52
    return-object v0
.end method


# virtual methods
.method public backToTop(Landroid/widget/ListView;I)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "startScrollPosition"    # I

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 126
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 128
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 124
    return-void
.end method

.method public setOnDoubleClickListener(Lcom/letv/leui/util/ActionBarDoubleClickHelper$OnDoubleClickListener;)V
    .locals 4
    .param p1, "l"    # Lcom/letv/leui/util/ActionBarDoubleClickHelper$OnDoubleClickListener;

    .prologue
    const/4 v3, 0x0

    .line 57
    sget-object v0, Lcom/letv/leui/util/ActionBarDoubleClickHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mActionBarView is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper;->mActionBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper;->mActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper;->mSimpleOnClickListener:Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;

    invoke-virtual {v0, p1}, Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;->setOnDoubleClickListener(Lcom/letv/leui/util/ActionBarDoubleClickHelper$OnDoubleClickListener;)V

    .line 62
    if-nez p1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper;->mActionBarView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper;->mActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper;->mSimpleOnClickListener:Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
