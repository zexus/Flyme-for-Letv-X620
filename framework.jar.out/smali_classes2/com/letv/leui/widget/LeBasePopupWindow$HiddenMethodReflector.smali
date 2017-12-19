.class Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;
.super Ljava/lang/Object;
.source "LeBasePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeBasePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HiddenMethodReflector"
.end annotation


# instance fields
.field private getMaxAvailableHeight:Ljava/lang/reflect/Method;

.field private mAboveAnchorBackgroundDrawable:Ljava/lang/reflect/Field;

.field private mBelowAnchorBackgroundDrawable:Ljava/lang/reflect/Field;

.field private pointInView:Ljava/lang/reflect/Method;

.field private setAllowScrollingAnchorParent:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 7

    .prologue
    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    .line 756
    const-string/jumbo v3, "setAllowScrollingAnchorParent"

    .line 755
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 757
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 755
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->setAllowScrollingAnchorParent:Ljava/lang/reflect/Method;

    .line 758
    iget-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->setAllowScrollingAnchorParent:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :goto_0
    :try_start_1
    const-class v2, Landroid/widget/PopupWindow;

    .line 765
    const-string/jumbo v3, "getMaxAvailableHeight"

    .line 764
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    .line 765
    const-class v5, Landroid/view/View;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 764
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->getMaxAvailableHeight:Ljava/lang/reflect/Method;

    .line 766
    iget-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->getMaxAvailableHeight:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 772
    :goto_1
    :try_start_2
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "pointInView"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    .line 773
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 772
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->pointInView:Ljava/lang/reflect/Method;

    .line 774
    iget-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->pointInView:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 780
    :goto_2
    :try_start_3
    const-class v2, Landroid/widget/PopupWindow;

    const-string/jumbo v3, "mAboveAnchorBackgroundDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->mAboveAnchorBackgroundDrawable:Ljava/lang/reflect/Field;

    .line 781
    iget-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->mAboveAnchorBackgroundDrawable:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    .line 786
    :goto_3
    :try_start_4
    const-class v2, Landroid/widget/PopupWindow;

    const-string/jumbo v3, "mBelowAnchorBackgroundDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->mBelowAnchorBackgroundDrawable:Ljava/lang/reflect/Field;

    .line 787
    iget-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->mBelowAnchorBackgroundDrawable:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4

    .line 753
    :goto_4
    return-void

    .line 759
    :catch_0
    move-exception v1

    .line 760
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 767
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 768
    .restart local v1    # "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 775
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 776
    .restart local v1    # "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 782
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3

    .line 788
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_4
    move-exception v0

    .line 789
    .restart local v0    # "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method getMaxAvailableHeight(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I
    .locals 5
    .param p1, "popup"    # Landroid/widget/PopupWindow;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "yOffset"    # I
    .param p4, "ignoreBottomDecorations"    # Z

    .prologue
    .line 825
    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->getMaxAvailableHeight:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 827
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->getMaxAvailableHeight:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 833
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method setAboveAnchorBackgroundDrawable(Landroid/widget/PopupWindow;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "popup"    # Landroid/widget/PopupWindow;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 805
    :try_start_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->mAboveAnchorBackgroundDrawable:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :goto_0
    return-void

    .line 808
    :catch_0
    move-exception v1

    .line 809
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 806
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method setAllowScrollingAnchorParent(Landroid/widget/PopupWindow;Z)V
    .locals 5
    .param p1, "popup"    # Landroid/widget/PopupWindow;
    .param p2, "enabled"    # Z

    .prologue
    .line 814
    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->setAllowScrollingAnchorParent:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->setAllowScrollingAnchorParent:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method setBelowAnchorBackgroundDrawable(Landroid/widget/PopupWindow;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "popup"    # Landroid/widget/PopupWindow;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 795
    :try_start_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->mBelowAnchorBackgroundDrawable:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    :goto_0
    return-void

    .line 798
    :catch_0
    move-exception v1

    .line 799
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 796
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
