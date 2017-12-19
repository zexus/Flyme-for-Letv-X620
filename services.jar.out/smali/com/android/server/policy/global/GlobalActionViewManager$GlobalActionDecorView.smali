.class Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;
.super Landroid/widget/FrameLayout;
.source "GlobalActionViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalActionDecorView"
.end annotation


# instance fields
.field private mCancelOnUp:Z

.field private mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

.field private mIntercepted:Z

.field private final mWindowTouchSlop:I

.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionViewManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/global/GlobalActionViewManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionViewManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    .line 313
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 314
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mWindowTouchSlop:I

    .line 315
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBlurRadiusDp(F)V

    .line 316
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBlurLumaContrast(F)V

    .line 317
    const v0, -0x414ccccd    # -0.35f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBlurLumaBrightness(F)V

    .line 318
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBlurChromaContrast(F)V

    .line 319
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBlurMode(I)V

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 312
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "handle":Z
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-static {v1}, Lcom/android/server/policy/global/GlobalActionViewManager;->-get0(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionHostView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 399
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 417
    .end local v0    # "handle":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 404
    .restart local v0    # "handle":Z
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->handleButtonKey()Z

    move-result v0

    .local v0, "handle":Z
    goto :goto_0

    .line 412
    .local v0, "handle":Z
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->handleMenuKey()Z

    move-result v0

    .local v0, "handle":Z
    goto :goto_0

    .line 417
    .end local v0    # "handle":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 399
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x4f -> :sswitch_1
        0xa4 -> :sswitch_1
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 353
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    if-eqz v2, :cond_4

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 355
    .local v8, "action":I
    if-nez v8, :cond_1

    .line 356
    move-object v9, p0

    .line 357
    .local v9, "decor":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 358
    .local v10, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 359
    .local v11, "eventY":I
    iget v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v10, v2, :cond_0

    .line 360
    iget v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mWindowTouchSlop:I

    neg-int v2, v2

    if-ge v11, v2, :cond_5

    .line 363
    :cond_0
    :goto_0
    iput-boolean v13, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z

    .line 367
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mIntercepted:Z

    if-nez v2, :cond_6

    .line 368
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mIntercepted:Z

    .line 369
    iget-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mIntercepted:Z

    if-eqz v2, :cond_2

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 372
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    .line 371
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 373
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 374
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    .end local v0    # "now":J
    :cond_2
    if-ne v8, v13, :cond_4

    .line 381
    iget-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z

    if-eqz v2, :cond_3

    .line 382
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-static {v2}, Lcom/android/server/policy/global/GlobalActionViewManager;->-get1(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->hiddenWindow()V

    .line 384
    :cond_3
    iput-boolean v12, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z

    .line 385
    iput-boolean v12, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mIntercepted:Z

    .line 389
    .end local v8    # "action":I
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 361
    .restart local v8    # "action":I
    .restart local v9    # "decor":Landroid/view/View;
    .restart local v10    # "eventX":I
    .restart local v11    # "eventY":I
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_0

    .line 362
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_1

    goto :goto_0

    .line 377
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 380
    if-ne v8, v13, :cond_8

    .line 381
    iget-boolean v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z

    if-eqz v3, :cond_7

    .line 382
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-static {v3}, Lcom/android/server/policy/global/GlobalActionViewManager;->-get1(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->hiddenWindow()V

    .line 384
    :cond_7
    iput-boolean v12, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z

    .line 385
    iput-boolean v12, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mIntercepted:Z

    .line 377
    :cond_8
    return v2

    .line 379
    :catchall_0
    move-exception v2

    .line 380
    if-ne v8, v13, :cond_a

    .line 381
    iget-boolean v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z

    if-eqz v3, :cond_9

    .line 382
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-static {v3}, Lcom/android/server/policy/global/GlobalActionViewManager;->-get1(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->hiddenWindow()V

    .line 384
    :cond_9
    iput-boolean v12, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z

    .line 385
    iput-boolean v12, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mIntercepted:Z

    .line 379
    :cond_a
    throw v2
.end method

.method public handleButtonKey()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->-get1(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->-get1(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->hiddenWindow()V

    .line 428
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public handleMenuKey()Z
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->-get1(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->-get1(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->hiddenWindow()V

    .line 435
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 325
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 330
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Lcom/android/server/policy/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mContext:Landroid/content/Context;

    .line 332
    new-instance v2, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView$1;-><init>(Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;)V

    .line 331
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    .line 324
    :goto_0
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 346
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/policy/EnableAccessibilityController;->onDestroy()V

    .line 344
    :cond_0
    return-void
.end method
