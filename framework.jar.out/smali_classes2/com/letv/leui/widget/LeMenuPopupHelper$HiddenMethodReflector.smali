.class public Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;
.super Ljava/lang/Object;
.source "LeMenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeMenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HiddenMethodReflector"
.end annotation


# instance fields
.field getNonActionItems:Ljava/lang/reflect/Method;

.field getVisibleItems:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    :try_start_0
    const-class v1, Lcom/android/internal/view/menu/MenuBuilder;

    const-string/jumbo v2, "getNonActionItems"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;->getNonActionItems:Ljava/lang/reflect/Method;

    .line 446
    iget-object v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;->getNonActionItems:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    :try_start_1
    const-class v1, Lcom/android/internal/view/menu/MenuBuilder;

    const-string/jumbo v2, "getVisibleItems"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;->getVisibleItems:Ljava/lang/reflect/Method;

    .line 452
    iget-object v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;->getVisibleItems:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 442
    :goto_1
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 453
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 454
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getNonActionItems(Lcom/android/internal/view/menu/MenuBuilder;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/view/menu/MenuBuilder;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    :try_start_0
    iget-object v3, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;->getNonActionItems:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 465
    :catch_0
    move-exception v2

    .line 466
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 468
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 463
    :catch_1
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 461
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVisibleItems(Lcom/android/internal/view/menu/MenuBuilder;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/view/menu/MenuBuilder;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    :try_start_0
    iget-object v3, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;->getVisibleItems:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 477
    :catch_0
    move-exception v2

    .line 478
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 480
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 475
    :catch_1
    move-exception v1

    .line 476
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 473
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
