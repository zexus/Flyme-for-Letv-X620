.class Lcom/android/server/policy/PhoneWindowManager$22;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isGestureIsolated()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1682
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 1683
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1684
    .local v0, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-eqz v0, :cond_1

    .line 1685
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_1

    .line 1687
    const/4 v1, 0x1

    return v1

    .line 1683
    .end local v0    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .restart local v0    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 1689
    :cond_1
    return v2
.end method


# virtual methods
.method public onDebug()V
    .locals 0

    .prologue
    .line 1668
    return-void
.end method

.method public onDown()V
    .locals 1

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchStart()V

    .line 1672
    return-void
.end method

.method public onSwipeFromBottom()V
    .locals 2

    .prologue
    .line 1652
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$22;->isGestureIsolated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1653
    return-void

    .line 1654
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_1

    .line 1655
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap16(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1650
    :cond_1
    return-void
.end method

.method public onSwipeFromRight()V
    .locals 2

    .prologue
    .line 1661
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$22;->isGestureIsolated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1662
    return-void

    .line 1663
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_2

    .line 1659
    :cond_1
    :goto_0
    return-void

    .line 1664
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap16(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method

.method public onSwipeFromTop()V
    .locals 2

    .prologue
    .line 1643
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$22;->isGestureIsolated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1644
    return-void

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    if-eqz v0, :cond_2

    .line 1641
    :cond_1
    :goto_0
    return-void

    .line 1646
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap16(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method

.method public onUpOrCancel()V
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchEnd()V

    .line 1676
    return-void
.end method
