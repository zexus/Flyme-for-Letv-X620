.class public Lcom/letv/leui/util/ScrollBarAnimHelper;
.super Ljava/lang/Object;
.source "ScrollBarAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollBarAnimHelper"


# instance fields
.field private actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private begin:F

.field private changedListener:Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;

.field private end:F

.field private isSupport:Z

.field private mColor:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/util/ScrollBarAnimHelper;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/util/ScrollBarAnimHelper;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->begin:F

    return v0
.end method

.method static synthetic -get2(Lcom/letv/leui/util/ScrollBarAnimHelper;)Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->changedListener:Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/util/ScrollBarAnimHelper;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->end:F

    return v0
.end method

.method static synthetic -get4(Lcom/letv/leui/util/ScrollBarAnimHelper;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->mColor:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/letv/leui/util/ScrollBarAnimHelper;Landroid/view/Window;Landroid/app/ActionBar;I)V
    .locals 0
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "actionBar"    # Landroid/app/ActionBar;
    .param p3, "color"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/util/ScrollBarAnimHelper;->init(Landroid/view/Window;Landroid/app/ActionBar;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/letv/leui/util/ScrollBarAnimHelper;Landroid/view/Window;Landroid/app/ActionBar;IFF)V
    .locals 0
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "actionBar"    # Landroid/app/ActionBar;
    .param p3, "color"    # I
    .param p4, "beginPx"    # F
    .param p5, "endPx"    # F

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/letv/leui/util/ScrollBarAnimHelper;->init(Landroid/view/Window;Landroid/app/ActionBar;IFF)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/letv/leui/util/ScrollBarAnimHelper;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/util/ScrollBarAnimHelper;->make(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/letv/leui/util/ScrollBarAnimHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/util/ScrollBarAnimHelper;->setStatusBarWithSameColor()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getInternalId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IdName"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    .local v0, "resources":Landroid/content/res/Resources;
    const-string/jumbo v2, "id"

    const-string/jumbo v3, "android"

    .line 112
    invoke-virtual {v0, p2, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, "statusBarIdentifier":I
    return v1
.end method

.method private init(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "color"    # I

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/letv/leui/util/ScrollBarAnimHelper;->init(Landroid/view/Window;Landroid/app/ActionBar;I)V

    .line 31
    return-void
.end method

.method private init(Landroid/view/Window;Landroid/app/ActionBar;I)V
    .locals 6
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "actionBar"    # Landroid/app/ActionBar;
    .param p3, "color"    # I

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43080000    # 136.0f

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/util/ScrollBarAnimHelper;->dipToPixels(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->begin:F

    .line 37
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43260000    # 166.0f

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/util/ScrollBarAnimHelper;->dipToPixels(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->end:F

    .line 38
    iget v4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->begin:F

    iget v5, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->end:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/util/ScrollBarAnimHelper;->init(Landroid/view/Window;Landroid/app/ActionBar;IFF)V

    .line 35
    return-void
.end method

.method private init(Landroid/view/Window;Landroid/app/ActionBar;IFF)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "actionBar"    # Landroid/app/ActionBar;
    .param p3, "color"    # I
    .param p4, "beginPx"    # F
    .param p5, "endPx"    # F

    .prologue
    const/4 v1, 0x0

    .line 42
    iput p3, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->mColor:I

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->isSupport:Z

    .line 44
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 48
    iget-boolean v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->isSupport:Z

    if-eqz v0, :cond_0

    .line 49
    iput-object p1, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->mWindow:Landroid/view/Window;

    .line 50
    invoke-direct {p0}, Lcom/letv/leui/util/ScrollBarAnimHelper;->setStatusBarWithSameColor()V

    .line 58
    :cond_0
    if-eqz p2, :cond_1

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/ActionBar;->setElevation(F)V

    .line 60
    iget-object v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_1
    iput p4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->begin:F

    .line 64
    iput p5, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->end:F

    .line 41
    return-void

    :cond_2
    move v0, v1

    .line 43
    goto :goto_0
.end method

.method private make(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/letv/leui/util/ScrollBarAnimHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/letv/leui/util/ScrollBarAnimHelper$1;-><init>(Lcom/letv/leui/util/ScrollBarAnimHelper;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 73
    return-void
.end method

.method private setStatusBarWithSameColor()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 68
    return-void
.end method


# virtual methods
.method public dipToPixels(Landroid/content/Context;F)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dipValue"    # F

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 159
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    invoke-static {v1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public getChangedListener()Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->changedListener:Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;

    return-object v0
.end method

.method public prepare(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "color"    # I

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/letv/leui/util/ScrollBarAnimHelper;->prepare(Landroid/view/Window;Landroid/app/ActionBar;Landroid/view/View;I)V

    .line 117
    return-void
.end method

.method public prepare(Landroid/view/Window;Landroid/app/ActionBar;Landroid/view/View;I)V
    .locals 6
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "actionBar"    # Landroid/app/ActionBar;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "color"    # I

    .prologue
    .line 122
    new-instance v0, Lcom/letv/leui/util/ScrollBarAnimHelper$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/util/ScrollBarAnimHelper$2;-><init>(Lcom/letv/leui/util/ScrollBarAnimHelper;Landroid/view/Window;Landroid/app/ActionBar;ILandroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method public prepare(Landroid/view/Window;Landroid/app/ActionBar;Landroid/view/View;IFF)V
    .locals 8
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "actionBar"    # Landroid/app/ActionBar;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "color"    # I
    .param p5, "beginPx"    # F
    .param p6, "endPx"    # F

    .prologue
    .line 133
    new-instance v0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/letv/leui/util/ScrollBarAnimHelper$3;-><init>(Lcom/letv/leui/util/ScrollBarAnimHelper;Landroid/view/Window;Landroid/app/ActionBar;IFFLandroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method

.method public setChangedListener(Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;)V
    .locals 0
    .param p1, "changedListener"    # Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/letv/leui/util/ScrollBarAnimHelper;->changedListener:Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;

    .line 148
    return-void
.end method
