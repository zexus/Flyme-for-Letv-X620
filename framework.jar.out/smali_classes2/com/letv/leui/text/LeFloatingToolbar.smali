.class public final Lcom/letv/leui/text/LeFloatingToolbar;
.super Ljava/lang/Object;
.source "LeFloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;,
        Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;,
        Lcom/letv/leui/text/LeFloatingToolbar$1;,
        Lcom/letv/leui/text/LeFloatingToolbar$2;
    }
.end annotation


# static fields
.field private static final NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mMenu:Landroid/view/Menu;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

.field private final mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

.field private final mPreviousContentRect:Landroid/graphics/Rect;

.field private mShowingMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestedWidth:I

.field private mWidthChanged:Z


# direct methods
.method static synthetic -get0(Lcom/letv/leui/text/LeFloatingToolbar;)Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/leui/text/LeFloatingToolbar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mWidthChanged:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    invoke-static {p0, p1}, Lcom/letv/leui/text/LeFloatingToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "content"    # Landroid/view/View;

    .prologue
    invoke-static {p0}, Lcom/letv/leui/text/LeFloatingToolbar;->createPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/letv/leui/text/LeFloatingToolbar$1;

    invoke-direct {v0}, Lcom/letv/leui/text/LeFloatingToolbar$1;-><init>()V

    .line 54
    sput-object v0, Lcom/letv/leui/text/LeFloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    .line 70
    sget-object v0, Lcom/letv/leui/text/LeFloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mWidthChanged:Z

    .line 75
    new-instance v0, Lcom/letv/leui/text/LeFloatingToolbar$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/text/LeFloatingToolbar$2;-><init>(Lcom/letv/leui/text/LeFloatingToolbar;)V

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    .line 92
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iput-object p1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    .line 91
    return-void
.end method

.method private static createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 576
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 577
    const v2, 0x10900e2

    const/4 v3, 0x0

    .line 576
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 578
    .local v0, "menuItemButton":Landroid/widget/TextView;
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 581
    const v1, 0x10805e0

    .line 580
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 582
    return-object v0
.end method

.method private static createPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 7
    .param p0, "content"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 586
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 587
    .local v0, "popupContentHolder":Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 588
    const/4 v3, 0x0

    const v4, 0x10102c8

    .line 587
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 589
    .local v1, "popupWindow":Landroid/widget/PopupWindow;
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 590
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 591
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 595
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 597
    const/16 v2, 0x3ea

    .line 596
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 598
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 599
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 604
    return-object v1
.end method

.method private getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v2, "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "menuItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 242
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    return-object v2
.end method

.method private getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v2, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 226
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 227
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    .line 229
    .local v3, "subMenu":Landroid/view/Menu;
    if-eqz v3, :cond_1

    .line 230
    invoke-direct {p0, v3}, Lcom/letv/leui/text/LeFloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    .end local v3    # "subMenu":Landroid/view/Menu;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .restart local v3    # "subMenu":Landroid/view/Menu;
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    .end local v3    # "subMenu":Landroid/view/Menu;
    :cond_2
    return-object v2
.end method

.method private isCurrentlyShowing(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/letv/leui/text/LeFloatingToolbar;->getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 187
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->dismiss()V

    .line 185
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->hide()V

    .line 194
    return-void
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setContentRect(Landroid/graphics/Rect;)Lcom/letv/leui/text/LeFloatingToolbar;
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 129
    return-object p0
.end method

.method public setMenu(Landroid/view/Menu;)Lcom/letv/leui/text/LeFloatingToolbar;
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 104
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mMenu:Landroid/view/Menu;

    .line 105
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/letv/leui/text/LeFloatingToolbar;
    .locals 1
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iput-object p1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 118
    :goto_0
    return-object p0

    .line 116
    :cond_0
    sget-object v0, Lcom/letv/leui/text/LeFloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    goto :goto_0
.end method

.method public setSuggestedWidth(I)Lcom/letv/leui/text/LeFloatingToolbar;
    .locals 8
    .param p1, "suggestedWidth"    # I

    .prologue
    .line 141
    iget v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mSuggestedWidth:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 142
    .local v0, "difference":I
    int-to-double v2, v0

    iget v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mSuggestedWidth:I

    int-to-double v4, v1

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mWidthChanged:Z

    .line 144
    iput p1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mSuggestedWidth:I

    .line 145
    return-object p0

    .line 142
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public show()Lcom/letv/leui/text/LeFloatingToolbar;
    .locals 4

    .prologue
    .line 152
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 153
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 154
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v1}, Lcom/letv/leui/text/LeFloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v0

    .line 155
    .local v0, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-direct {p0, v0}, Lcom/letv/leui/text/LeFloatingToolbar;->isCurrentlyShowing(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mWidthChanged:Z

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v1}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->dismiss()V

    .line 157
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    iget v3, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mSuggestedWidth:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V

    .line 158
    invoke-direct {p0, v0}, Lcom/letv/leui/text/LeFloatingToolbar;->getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v1}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->show(Landroid/graphics/Rect;)V

    .line 165
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mWidthChanged:Z

    .line 166
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 167
    return-object p0

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->updateCoordinates(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public updateLayout()Lcom/letv/leui/text/LeFloatingToolbar;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/letv/leui/text/LeFloatingToolbar;->show()Lcom/letv/leui/text/LeFloatingToolbar;

    .line 179
    :cond_0
    return-object p0
.end method
