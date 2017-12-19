.class public Lcom/letv/leui/widget/LeMenuPopupHelper;
.super Ljava/lang/Object;
.source "LeMenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;,
        Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;
    }
.end annotation


# static fields
.field private static final HIDDEN_REFLECTOR:Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;

.field static final ITEM_LAYOUT:I = 0x1090113

.field private static final TAG:Ljava/lang/String; = "MenuPopupHelper"


# instance fields
.field private final mAdapter:Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field mForceShowIcon:Z

.field private mHasContentWidth:Z

.field private mHorizontalOffset:I

.field private mIgnoreGlobalLayout:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private final mOverflowOnly:Z

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private final mPopupMaxWidth:I

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mVerticalOffset:I


# direct methods
.method static synthetic -get0()Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;
    .locals 1

    sget-object v0, Lcom/letv/leui/widget/LeMenuPopupHelper;->HIDDEN_REFLECTOR:Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/LeMenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/LeMenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/LeMenuPopupHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 437
    new-instance v0, Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;

    invoke-direct {v0}, Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/LeMenuPopupHelper;->HIDDEN_REFLECTOR:Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/letv/leui/widget/LeMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mDropDownGravity:I

    .line 93
    iput-object p1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    iput-object p2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 96
    new-instance v1, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;

    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, p0, v2}, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;-><init>(Lcom/letv/leui/widget/LeMenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mAdapter:Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;

    .line 97
    iput-boolean p4, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mOverflowOnly:Z

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    .line 101
    const v2, 0x105000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 100
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopupMaxWidth:I

    .line 103
    iput-object p3, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 105
    invoke-virtual {p2, p0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 92
    return-void
.end method

.method private measureContentWidth()I
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 210
    const/4 v7, 0x0

    .line 211
    .local v7, "maxWidth":I
    const/4 v5, 0x0

    .line 212
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 214
    .local v4, "itemType":I
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mAdapter:Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;

    .line 215
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 216
    .local v9, "widthMeasureSpec":I
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 217
    .local v2, "heightMeasureSpec":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 218
    .local v1, "count":I
    const/4 v3, 0x0

    .end local v5    # "itemView":Landroid/view/View;
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 219
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 220
    .local v8, "positionType":I
    if-eq v8, v4, :cond_0

    .line 221
    move v4, v8

    .line 222
    const/4 v5, 0x0

    .line 225
    :cond_0
    iget-object v10, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v10, :cond_1

    .line 226
    new-instance v10, Landroid/widget/FrameLayout;

    iget-object v11, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 229
    :cond_1
    iget-object v10, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {v0, v3, v5, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 230
    .local v5, "itemView":Landroid/view/View;
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 232
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 233
    .local v6, "itemWidth":I
    iget v10, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopupMaxWidth:I

    if-lt v6, v10, :cond_2

    .line 234
    iget v10, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopupMaxWidth:I

    return v10

    .line 235
    :cond_2
    if-le v6, v7, :cond_3

    .line 236
    move v7, v6

    .line 218
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "itemWidth":I
    .end local v8    # "positionType":I
    :cond_4
    return v7
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeMenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 173
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 270
    return-void
.end method

.method public isIgnoreGlobalLayout()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mIgnoreGlobalLayout:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 323
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeMenuPopupHelper;->dismiss()V

    .line 326
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 321
    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    iput-object v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 181
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 182
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 185
    iput-object v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 179
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeMenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 247
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeMenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 244
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 247
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mIgnoreGlobalLayout:Z

    if-nez v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeMenuPopupHelper;->dismiss()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mAdapter:Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;

    .line 197
    .local v0, "adapter":Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;
    invoke-static {v0}, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->-get0(Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 195
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 201
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeMenuPopupHelper;->dismiss()V

    .line 203
    return v1

    .line 205
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 355
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 8
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v7, 0x0

    .line 295
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 296
    new-instance v4, Lcom/letv/leui/widget/LeMenuPopupHelper;

    iget-object v5, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v6, v7}, Lcom/letv/leui/widget/LeMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 297
    .local v4, "subPopup":Lcom/letv/leui/widget/LeMenuPopupHelper;
    iget-object v5, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeMenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 299
    const/4 v3, 0x0

    .line 300
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 301
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 302
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 303
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 304
    const/4 v3, 0x1

    .line 308
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/letv/leui/widget/LeMenuPopupHelper;->setForceShowIcon(Z)V

    .line 310
    invoke-virtual {v4}, Lcom/letv/leui/widget/LeMenuPopupHelper;->tryShow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 311
    iget-object v5, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 312
    iget-object v5, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 314
    :cond_1
    const/4 v5, 0x1

    return v5

    .line 301
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "childItem":Landroid/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/letv/leui/widget/LeMenuPopupHelper;
    :cond_3
    return v7
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 257
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 266
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 261
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 108
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 289
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mForceShowIcon:Z

    .line 112
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mDropDownGravity:I

    .line 116
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mHorizontalOffset:I

    .line 136
    return-void
.end method

.method public setIgnoreGlobalLayoutShowing(Z)V
    .locals 0
    .param p1, "isIgnore"    # Z

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mIgnoreGlobalLayout:Z

    .line 429
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mVerticalOffset:I

    .line 131
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeMenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 141
    new-instance v2, Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mContext:Landroid/content/Context;

    const v4, 0x1010300

    invoke-direct {v2, v3, v6, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 142
    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, p0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 143
    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mAdapter:Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 147
    iget-object v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 148
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 149
    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 150
    .local v0, "addGlobalListener":Z
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 151
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 152
    :cond_0
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 153
    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 154
    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v3, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 159
    iget-boolean v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mHasContentWidth:Z

    if-nez v2, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/letv/leui/widget/LeMenuPopupHelper;->measureContentWidth()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mContentWidth:I

    .line 161
    iput-boolean v5, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mHasContentWidth:Z

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v3, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mContentWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 165
    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 166
    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v3, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mHorizontalOffset:I

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 167
    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget v3, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mVerticalOffset:I

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 168
    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->show()V

    .line 169
    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 170
    return v5

    .line 149
    .end local v0    # "addGlobalListener":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "addGlobalListener":Z
    goto :goto_0

    .line 156
    .end local v0    # "addGlobalListener":Z
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mHasContentWidth:Z

    .line 283
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mAdapter:Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper;->mAdapter:Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 280
    :cond_0
    return-void
.end method
