.class public Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
.super Landroid/view/ActionMode;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private final mActionModeContext:Landroid/content/Context;

.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/android/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/WindowDecorActionBar;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/app/WindowDecorActionBar;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 976
    iput-object p2, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    .line 977
    iput-object p3, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 978
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 979
    const/4 v1, 0x1

    .line 978
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 980
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 975
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1044
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1046
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1044
    return v0

    .line 1045
    :catchall_0
    move-exception v0

    .line 1046
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1045
    throw v0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 995
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    iget-object v0, v0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    if-eq v0, p0, :cond_0

    .line 997
    return-void

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get7(Lcom/android/internal/app/WindowDecorActionBar;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v1}, Lcom/android/internal/app/WindowDecorActionBar;->-get8(Lcom/android/internal/app/WindowDecorActionBar;)Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/WindowDecorActionBar;->-wrap0(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    iput-object p0, v0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 1008
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iput-object v1, v0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 1012
    :goto_0
    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 1013
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 1016
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->closeMode()V

    .line 1017
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get6(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1018
    const/16 v1, 0x20

    .line 1017
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1019
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get9(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    iget-boolean v1, v1, Lcom/android/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1021
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    iput-object v3, v0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    .line 994
    return-void

    .line 1010
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1099
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 985
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    iget-object v0, v0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    if-eq v0, p0, :cond_0

    .line 1030
    return-void

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1035
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1025
    return-void

    .line 1036
    :catchall_0
    move-exception v0

    .line 1037
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1036
    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1110
    return-void
.end method

.method public onCloseSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1126
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1106
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 1131
    return-void

    .line 1133
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 1134
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    .line 1129
    return-void
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v2, 0x1

    .line 1114
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 1115
    const/4 v0, 0x0

    return v0

    .line 1118
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1119
    return v2

    .line 1122
    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    .line 1123
    return v2
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1053
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 1051
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get3(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1072
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1057
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get3(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 1067
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1062
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 1088
    invoke-super {p0, p1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 1089
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 1087
    return-void
.end method
