.class Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;
.super Ljava/lang/Object;
.source "LeListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HiddenMethodReflector"
.end annotation


# instance fields
.field private hideSelector:Ljava/lang/reflect/Method;

.field private mSelector:Ljava/lang/reflect/Field;

.field private measureHeightOfChildren:Ljava/lang/reflect/Method;

.field private positionSelector:Ljava/lang/reflect/Method;

.field private setSelectedPositionInt:Ljava/lang/reflect/Method;

.field private updateSelectorState:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 7

    .prologue
    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    :try_start_0
    const-class v2, Landroid/widget/AbsListView;

    const-string/jumbo v3, "mSelector"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->mSelector:Ljava/lang/reflect/Field;

    .line 903
    iget-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->mSelector:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    :goto_0
    :try_start_1
    const-class v2, Landroid/widget/AbsListView;

    const-string/jumbo v3, "updateSelectorState"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->updateSelectorState:Ljava/lang/reflect/Method;

    .line 910
    iget-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->updateSelectorState:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 916
    :goto_1
    :try_start_2
    const-class v2, Landroid/widget/AdapterView;

    const-string/jumbo v3, "setSelectedPositionInt"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->setSelectedPositionInt:Ljava/lang/reflect/Method;

    .line 917
    iget-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->setSelectedPositionInt:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 923
    :goto_2
    :try_start_3
    const-class v2, Landroid/widget/AbsListView;

    const-string/jumbo v3, "positionSelector"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/view/View;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->positionSelector:Ljava/lang/reflect/Method;

    .line 924
    iget-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->positionSelector:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    .line 929
    :goto_3
    :try_start_4
    const-class v2, Landroid/widget/ListView;

    const-string/jumbo v3, "measureHeightOfChildren"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    .line 930
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 929
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->measureHeightOfChildren:Ljava/lang/reflect/Method;

    .line 931
    iget-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->measureHeightOfChildren:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4

    .line 900
    :goto_4
    return-void

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 911
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 912
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 918
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 919
    .restart local v1    # "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 925
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 926
    .restart local v1    # "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_3

    .line 932
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 933
    .restart local v1    # "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method public getListSelector(Landroid/widget/AbsListView;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "list"    # Landroid/widget/AbsListView;

    .prologue
    .line 966
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->mSelector:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 971
    const/4 v1, 0x0

    return-object v1
.end method

.method public measureHeightOfChildren(Landroid/widget/ListView;IIIII)I
    .locals 6
    .param p1, "list"    # Landroid/widget/ListView;
    .param p2, "childWidthSpec"    # I
    .param p3, "i"    # I
    .param p4, "j"    # I
    .param p5, "k"    # I
    .param p6, "l"    # I

    .prologue
    const/4 v5, 0x0

    .line 940
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->measureHeightOfChildren:Ljava/lang/reflect/Method;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 945
    return v5
.end method

.method positionSelector(Landroid/widget/AbsListView;ILandroid/view/View;)V
    .locals 5
    .param p1, "list"    # Landroid/widget/AbsListView;
    .param p2, "position"    # I
    .param p3, "sel"    # Landroid/view/View;

    .prologue
    .line 958
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->positionSelector:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :goto_0
    return-void

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSelectedPositionInt(Landroid/widget/ListView;I)V
    .locals 5
    .param p1, "view"    # Landroid/widget/ListView;
    .param p2, "position"    # I

    .prologue
    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->setSelectedPositionInt:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :goto_0
    return-void

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateSelectorState(Landroid/widget/AbsListView;)V
    .locals 3
    .param p1, "list"    # Landroid/widget/AbsListView;

    .prologue
    .line 976
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->hideSelector:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    :goto_0
    return-void

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
