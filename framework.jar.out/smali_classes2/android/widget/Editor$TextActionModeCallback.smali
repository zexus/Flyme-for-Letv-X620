.class Landroid/widget/Editor$TextActionModeCallback;
.super Landroid/view/ActionMode$Callback2;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextActionModeCallback"
.end annotation


# instance fields
.field private mHandleHeight:I

.field private final mHasSelection:Z

.field private final mSelectionBounds:Landroid/graphics/RectF;

.field private final mSelectionPath:Landroid/graphics/Path;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Z)V
    .locals 4
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "hasSelection"    # Z

    .prologue
    .line 3186
    iput-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 3180
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 3181
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 3187
    iput-boolean p2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    .line 3188
    iget-boolean v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v2, :cond_2

    .line 3189
    invoke-virtual {p1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    .line 3190
    .local v1, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-get0(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3192
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-wrap0(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 3193
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-wrap1(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 3194
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 3197
    :cond_0
    invoke-static {p1}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    .line 3198
    invoke-static {p1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 3196
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 3186
    .end local v1    # "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    :cond_1
    :goto_0
    return-void

    .line 3200
    :cond_2
    invoke-virtual {p1}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    .line 3201
    .local v0, "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v0, :cond_1

    .line 3202
    invoke-static {v0}, Landroid/widget/Editor$InsertionPointCursorController;->-wrap0(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    .line 3203
    invoke-static {p1}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    goto :goto_0
.end method

.method private getCustomCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 3238
    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v0, :cond_0

    .line 3239
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 3238
    :goto_0
    return-object v0

    .line 3240
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method private populateMenuWithItems(Landroid/view/Menu;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3244
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3245
    const v0, 0x1020020

    .line 3246
    const v1, 0x1040003

    .line 3245
    invoke-interface {p1, v6, v0, v7, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3247
    const/16 v1, 0x78

    .line 3245
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3251
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3252
    const v0, 0x1020021

    .line 3253
    const v1, 0x1040001

    .line 3252
    invoke-interface {p1, v6, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3254
    const/16 v1, 0x63

    .line 3252
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3258
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3259
    const v0, 0x1020022

    const/4 v1, 0x3

    .line 3260
    const v2, 0x104000b

    .line 3259
    invoke-interface {p1, v6, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3261
    const/16 v1, 0x76

    .line 3259
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3265
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canShare()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3266
    const v0, 0x1020035

    const/4 v1, 0x4

    .line 3267
    const v2, 0x104044c

    .line 3266
    invoke-interface {p1, v6, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3271
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 3272
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 3274
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 3275
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v0, :cond_7

    :cond_4
    move v3, v6

    .line 3276
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v0, :cond_8

    :cond_5
    move v5, v6

    .line 3275
    :goto_1
    const v2, 0x1020032

    .line 3276
    const v4, 0x1020033

    move-object v0, p1

    .line 3274
    invoke-static/range {v0 .. v5}, Lcom/letv/leui/text/LeTextOpt;->updateUndoRedoItem(Landroid/view/Menu;Landroid/widget/TextView;IZIZ)V

    .line 3277
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 3278
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 3279
    :goto_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isInSectionMode()Z

    move-result v6

    .line 3277
    :cond_6
    invoke-static {p1, v0, v7, v6}, Lcom/letv/leui/text/LeTextOpt;->updateSectionItem(Landroid/view/Menu;Landroid/widget/TextView;ZZ)V

    .line 3243
    return-void

    :cond_7
    move v3, v7

    .line 3275
    goto :goto_0

    :cond_8
    move v5, v7

    .line 3276
    goto :goto_1

    :cond_9
    move v7, v6

    .line 3278
    goto :goto_2
.end method

.method private updateReplaceItem(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x1020034

    .line 3317
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-wrap10(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3318
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 3319
    .local v0, "canReplace":Z
    :goto_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    .line 3320
    .local v1, "replaceItemExists":Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_5

    .line 3324
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 3325
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 3316
    :cond_1
    :goto_2
    return-void

    .line 3318
    .end local v0    # "canReplace":Z
    .end local v1    # "replaceItemExists":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "canReplace":Z
    goto :goto_0

    .line 3317
    .end local v0    # "canReplace":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "canReplace":Z
    goto :goto_0

    .line 3319
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "replaceItemExists":Z
    goto :goto_1

    .line 3321
    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 3322
    const v4, 0x104033c

    .line 3321
    invoke-interface {p1, v2, v5, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 3323
    const/4 v3, 0x1

    .line 3321
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2
.end method

.method private updateSelectAllItem(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x102001f

    .line 3305
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v0

    .line 3306
    .local v0, "canSelectAll":Z
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 3307
    .local v1, "selectAllItemExists":Z
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_3

    .line 3311
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 3312
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 3304
    :cond_1
    :goto_1
    return-void

    .line 3306
    .end local v1    # "selectAllItemExists":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "selectAllItemExists":Z
    goto :goto_0

    .line 3308
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 3309
    const v4, 0x104000d

    .line 3308
    invoke-interface {p1, v2, v5, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 3310
    const/4 v3, 0x1

    .line 3308
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 3331
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v1, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performMenuItemAction(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3332
    return v2

    .line 3334
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 3335
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3336
    return v2

    .line 3340
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Lcom/letv/leui/text/LeTextOpt;->isSectionItem(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3341
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3342
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isInSectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3343
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->startWordsSelection()V

    .line 3347
    :goto_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 3348
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;)V

    .line 3349
    return v2

    .line 3345
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->startSectionSelection()V

    goto :goto_0

    .line 3353
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    return v1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3210
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 3211
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3212
    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 3213
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->populateMenuWithItems(Landroid/view/Menu;)V

    .line 3215
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 3216
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_0

    .line 3217
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3219
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 3220
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 3219
    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3221
    return v3

    .line 3225
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canProcessText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3226
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v1, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeMenu(Landroid/view/Menu;)V

    .line 3229
    :cond_1
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3230
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 3231
    return v2

    .line 3233
    :cond_3
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v3, 0x0

    .line 3358
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 3359
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_0

    .line 3360
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 3368
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    if-nez v1, :cond_1

    .line 3369
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 3370
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 3369
    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3371
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 3374
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    .line 3375
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 3378
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iput-object v3, v1, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 3357
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 19
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3383
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    if-nez v13, :cond_1

    .line 3384
    :cond_0
    invoke-super/range {p0 .. p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3385
    return-void

    .line 3387
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v14

    if-eq v13, v14, :cond_4

    .line 3389
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 3395
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v3

    .line 3396
    .local v3, "firstVisibleLine":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 3397
    .local v4, "firstVisibleOffset":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 3398
    .local v8, "offsetStart":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    .line 3399
    .local v7, "offsetEnd":I
    if-ge v8, v4, :cond_2

    .line 3400
    move v8, v4

    .line 3402
    :cond_2
    if-ge v7, v4, :cond_3

    .line 3403
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 3406
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    .line 3407
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 3406
    invoke-virtual {v13, v8, v7, v14}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 3408
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3409
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v14, v13, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    sub-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/RectF;->top:F

    .line 3410
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v14, v13, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/RectF;->bottom:F

    .line 3437
    .end local v3    # "firstVisibleLine":I
    .end local v4    # "firstVisibleOffset":I
    .end local v7    # "offsetEnd":I
    .end local v8    # "offsetStart":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v11

    .line 3438
    .local v11, "textHorizontalOffset":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v12

    .line 3440
    .local v12, "textVerticalOffset":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    int-to-float v14, v11

    add-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v13, v14

    .line 3441
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    int-to-float v15, v12

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    .line 3442
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    int-to-float v0, v11

    move/from16 v16, v0

    add-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    .line 3443
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    int-to-float v0, v12

    move/from16 v17, v0

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    .line 3439
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3382
    return-void

    .line 3413
    .end local v11    # "textHorizontalOffset":I
    .end local v12    # "textVerticalOffset":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget v13, v13, Landroid/widget/Editor;->mCursorCount:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    .line 3416
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v13, v13, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3417
    .local v2, "firstCursorBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v13, v13, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 3418
    .local v10, "secondCursorBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 3419
    iget v14, v2, Landroid/graphics/Rect;->left:I

    iget v15, v10, Landroid/graphics/Rect;->left:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-float v14, v14

    .line 3420
    iget v15, v2, Landroid/graphics/Rect;->top:I

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    int-to-float v15, v15

    .line 3421
    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    .line 3422
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 3423
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    move/from16 v18, v0

    .line 3422
    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    .line 3418
    invoke-virtual/range {v13 .. v17}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 3426
    .end local v2    # "firstCursorBounds":Landroid/graphics/Rect;
    .end local v10    # "secondCursorBounds":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v5

    .line 3427
    .local v5, "layout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 3429
    .local v6, "line":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 3430
    .local v9, "primaryHorizontal":F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 3432
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v14

    int-to-float v14, v14

    .line 3434
    add-int/lit8 v15, v6, 0x1

    invoke-virtual {v5, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    move/from16 v16, v0

    add-int v15, v15, v16

    int-to-float v15, v15

    .line 3430
    invoke-virtual {v13, v9, v14, v9, v15}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3285
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 3286
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 3289
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 3290
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v0, :cond_3

    :cond_0
    move v3, v7

    .line 3291
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v0, :cond_4

    :cond_1
    move v5, v7

    .line 3290
    :goto_1
    const v2, 0x1020032

    .line 3291
    const v4, 0x1020033

    move-object v0, p2

    .line 3289
    invoke-static/range {v0 .. v5}, Lcom/letv/leui/text/LeTextOpt;->updateUndoRedoItem(Landroid/view/Menu;Landroid/widget/TextView;IZIZ)V

    .line 3292
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 3293
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_5

    move v0, v8

    .line 3294
    :goto_2
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isInSectionMode()Z

    move-result v7

    .line 3292
    :cond_2
    invoke-static {p2, v1, v0, v7}, Lcom/letv/leui/text/LeTextOpt;->updateSectionItem(Landroid/view/Menu;Landroid/widget/TextView;ZZ)V

    .line 3297
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v6

    .line 3298
    .local v6, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v6, :cond_6

    .line 3299
    invoke-interface {v6, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0

    .end local v6    # "customCallback":Landroid/view/ActionMode$Callback;
    :cond_3
    move v3, v8

    .line 3290
    goto :goto_0

    :cond_4
    move v5, v8

    .line 3291
    goto :goto_1

    :cond_5
    move v0, v7

    .line 3293
    goto :goto_2

    .line 3301
    .restart local v6    # "customCallback":Landroid/view/ActionMode$Callback;
    :cond_6
    return v8
.end method
