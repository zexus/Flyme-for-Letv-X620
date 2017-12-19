.class public Lcom/letv/leui/text/LeTextOpt;
.super Ljava/lang/Object;
.source "LeTextOpt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/text/LeTextOpt$LeTextInfo;,
        Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;,
        Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;
    }
.end annotation


# static fields
.field private static final ID_SECTION:I = 0x1020076

.field private static final LE_MENU_ITEM_ORDER_BEGIN:I = 0xb

.field private static final LE_MENU_ITEM_ORDER_REDO:I = 0xd

.field private static final LE_MENU_ITEM_ORDER_SECTION:I = 0xe

.field private static final LE_MENU_ITEM_ORDER_UNDO:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLineEndOffset(Landroid/text/Layout;I)Z
    .locals 4
    .param p0, "layout"    # Landroid/text/Layout;
    .param p1, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 112
    if-nez p0, :cond_0

    .line 113
    return v3

    .line 115
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 116
    .local v1, "offsetLine":I
    if-lez v1, :cond_2

    add-int/lit8 v2, v1, -0x1

    :goto_0
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 118
    .local v0, "lineEnd":I
    if-ne v0, p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .end local v0    # "lineEnd":I
    :cond_2
    move v2, v3

    .line 116
    goto :goto_0
.end method

.method public static isSectionItem(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 107
    const v0, 0x1020076

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateSectionItem(Landroid/view/Menu;Landroid/widget/TextView;ZZ)V
    .locals 9
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "isSelectinMode"    # Z
    .param p3, "isInSectionMode"    # Z

    .prologue
    const v3, 0x10405c9

    const v4, 0x10405c8

    const/4 v8, 0x1

    const v7, 0x1020076

    .line 82
    invoke-interface {p0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 83
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 84
    .local v1, "sectionItemExists":Z
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    if-le v5, v8, :cond_3

    const/4 v2, 0x1

    .line 85
    .local v2, "showSectionMode":Z
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 86
    :cond_0
    if-nez v1, :cond_1

    .line 87
    invoke-interface {p0, v7}, Landroid/view/Menu;->removeItem(I)V

    .line 89
    :cond_1
    return-void

    .line 83
    .end local v1    # "sectionItemExists":Z
    .end local v2    # "showSectionMode":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "sectionItemExists":Z
    goto :goto_0

    .line 84
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "showSectionMode":Z
    goto :goto_1

    .line 91
    :cond_4
    if-eqz p2, :cond_5

    if-eqz v1, :cond_7

    .line 97
    :cond_5
    if-eqz p2, :cond_a

    .line 98
    if-eqz p3, :cond_9

    :goto_2
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 81
    :cond_6
    :goto_3
    return-void

    .line 93
    :cond_7
    if-eqz p3, :cond_8

    .line 92
    :goto_4
    const/4 v4, 0x0

    const/16 v5, 0xe

    invoke-interface {p0, v4, v7, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    :cond_8
    move v3, v4

    .line 95
    goto :goto_4

    :cond_9
    move v3, v4

    .line 100
    goto :goto_2

    .line 101
    :cond_a
    if-nez p2, :cond_6

    if-eqz v1, :cond_6

    .line 102
    invoke-interface {p0, v7}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_3
.end method

.method public static updateUndoRedoItem(Landroid/view/Menu;Landroid/widget/TextView;IZIZ)V
    .locals 6
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "undoId"    # I
    .param p3, "canUndo"    # Z
    .param p4, "redoId"    # I
    .param p5, "canRedo"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    invoke-interface {p0, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    .line 60
    .local v1, "canUndoExists":Z
    :goto_0
    if-eqz p3, :cond_0

    if-eqz v1, :cond_5

    .line 64
    :cond_0
    if-nez p3, :cond_1

    if-eqz v1, :cond_1

    .line 65
    invoke-interface {p0, p2}, Landroid/view/Menu;->removeItem(I)V

    .line 70
    :cond_1
    :goto_1
    invoke-interface {p0, p4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v0, 0x1

    .line 71
    .local v0, "canRedoExists":Z
    :goto_2
    if-eqz p5, :cond_2

    if-eqz v0, :cond_7

    .line 75
    :cond_2
    if-nez p5, :cond_3

    if-eqz v0, :cond_3

    .line 76
    invoke-interface {p0, p4}, Landroid/view/Menu;->removeItem(I)V

    .line 55
    :cond_3
    :goto_3
    return-void

    .line 59
    .end local v0    # "canRedoExists":Z
    .end local v1    # "canUndoExists":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "canUndoExists":Z
    goto :goto_0

    .line 61
    :cond_5
    const/16 v2, 0xc

    .line 62
    const v3, 0x10405ca

    .line 61
    invoke-interface {p0, v4, p2, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 70
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "canRedoExists":Z
    goto :goto_2

    .line 72
    :cond_7
    const/16 v2, 0xd

    .line 73
    const v3, 0x10405cb

    .line 72
    invoke-interface {p0, v4, p4, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3
.end method
