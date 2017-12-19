.class public Lcom/letv/leui/widget/DragSortController;
.super Lcom/letv/leui/widget/SimpleFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static final MISS:I = -0x1

.field public static final ON_DOWN:I = 0x0

.field public static final ON_DRAG:I = 0x1

.field public static final ON_LONG_PRESS:I = 0x2


# instance fields
.field private mCanDrag:Z

.field private mCurrX:I

.field private mCurrY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private mDslv:Lcom/letv/leui/widget/LeListView;

.field private mFlingHandleId:I

.field private mFlingHitPos:I

.field private mFlingSpeed:F

.field private mHitPos:I

.field private mItemX:I

.field private mItemY:I

.field private mPositionX:I

.field private mSortEnabled:Z

.field private mTempLoc:[I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/LeListView;)V
    .locals 1
    .param p1, "dslv"    # Lcom/letv/leui/widget/LeListView;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0, v0}, Lcom/letv/leui/widget/DragSortController;-><init>(Lcom/letv/leui/widget/LeListView;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LeListView;II)V
    .locals 1
    .param p1, "dslv"    # Lcom/letv/leui/widget/LeListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/DragSortController;-><init>(Lcom/letv/leui/widget/LeListView;III)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LeListView;III)V
    .locals 3
    .param p1, "dslv"    # Lcom/letv/leui/widget/LeListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "flingHandleId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 89
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    .line 32
    iput v2, p0, Lcom/letv/leui/widget/DragSortController;->mDragInitMode:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortController;->mSortEnabled:Z

    .line 42
    iput v1, p0, Lcom/letv/leui/widget/DragSortController;->mHitPos:I

    .line 43
    iput v1, p0, Lcom/letv/leui/widget/DragSortController;->mFlingHitPos:I

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortController;->mTempLoc:[I

    .line 53
    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortController;->mDragging:Z

    .line 55
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/letv/leui/widget/DragSortController;->mFlingSpeed:F

    .line 90
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortController;->mDslv:Lcom/letv/leui/widget/LeListView;

    .line 91
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/letv/leui/widget/LeListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortController;->mDetector:Landroid/view/GestureDetector;

    .line 92
    invoke-virtual {p1}, Lcom/letv/leui/widget/LeListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/DragSortController;->mTouchSlop:I

    .line 93
    iput p2, p0, Lcom/letv/leui/widget/DragSortController;->mDragHandleId:I

    .line 94
    iput p4, p0, Lcom/letv/leui/widget/DragSortController;->mFlingHandleId:I

    .line 95
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/DragSortController;->setDragInitMode(I)V

    .line 88
    return-void
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 233
    iget v0, p0, Lcom/letv/leui/widget/DragSortController;->mDragHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public flingHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 237
    iget v0, p0, Lcom/letv/leui/widget/DragSortController;->mFlingHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getDragInitMode()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/letv/leui/widget/DragSortController;->mDragInitMode:I

    return v0
.end method

.method public isSortEnabled()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortController;->mSortEnabled:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 280
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/DragSortController;->mHitPos:I

    .line 281
    iget v0, p0, Lcom/letv/leui/widget/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/DragSortController;->mDragInitMode:I

    if-nez v0, :cond_0

    .line 282
    iget v0, p0, Lcom/letv/leui/widget/DragSortController;->mHitPos:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/letv/leui/widget/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/letv/leui/widget/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/widget/DragSortController;->startDrag(III)Z

    .line 285
    :cond_0
    iput-boolean v5, p0, Lcom/letv/leui/widget/DragSortController;->mCanDrag:Z

    .line 286
    iput v4, p0, Lcom/letv/leui/widget/DragSortController;->mPositionX:I

    .line 287
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortController;->startFlingPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/DragSortController;->mFlingHitPos:I

    .line 289
    return v5
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "touch"    # Landroid/graphics/Point;

    .prologue
    .line 198
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 321
    iget v0, p0, Lcom/letv/leui/widget/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/DragSortController;->mDragInitMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortController;->mDslv:Lcom/letv/leui/widget/LeListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListView;->performHapticFeedback(I)Z

    .line 323
    iget v0, p0, Lcom/letv/leui/widget/DragSortController;->mHitPos:I

    iget v1, p0, Lcom/letv/leui/widget/DragSortController;->mCurrX:I

    iget v2, p0, Lcom/letv/leui/widget/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/DragSortController;->mCurrY:I

    iget v3, p0, Lcom/letv/leui/widget/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/widget/DragSortController;->startDrag(III)Z

    .line 319
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 296
    .local v2, "x1":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 297
    .local v4, "y1":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 298
    .local v3, "x2":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 299
    .local v5, "y2":I
    iget v6, p0, Lcom/letv/leui/widget/DragSortController;->mItemX:I

    sub-int v0, v3, v6

    .line 300
    .local v0, "deltaX":I
    iget v6, p0, Lcom/letv/leui/widget/DragSortController;->mItemY:I

    sub-int v1, v5, v6

    .line 302
    .local v1, "deltaY":I
    iget-boolean v6, p0, Lcom/letv/leui/widget/DragSortController;->mCanDrag:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/letv/leui/widget/DragSortController;->mDragging:Z

    if-eqz v6, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v8

    .line 302
    :cond_1
    iget v6, p0, Lcom/letv/leui/widget/DragSortController;->mHitPos:I

    if-ne v6, v7, :cond_2

    iget v6, p0, Lcom/letv/leui/widget/DragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_0

    .line 303
    :cond_2
    iget v6, p0, Lcom/letv/leui/widget/DragSortController;->mHitPos:I

    if-eq v6, v7, :cond_3

    .line 304
    iget v6, p0, Lcom/letv/leui/widget/DragSortController;->mDragInitMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    sub-int v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_0

    iget-boolean v6, p0, Lcom/letv/leui/widget/DragSortController;->mSortEnabled:Z

    if-eqz v6, :cond_0

    .line 305
    iget v6, p0, Lcom/letv/leui/widget/DragSortController;->mHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcom/letv/leui/widget/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 307
    :cond_3
    iget v6, p0, Lcom/letv/leui/widget/DragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_0

    .line 308
    sub-int v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_0

    .line 309
    iput-boolean v8, p0, Lcom/letv/leui/widget/DragSortController;->mCanDrag:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 341
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortController;->mDslv:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeListView;->getDragSortHelper()Lcom/letv/leui/widget/DragSortHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/widget/DragSortHelper;->isDragSortEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortController;->mDslv:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeListView;->getDragSortHelper()Lcom/letv/leui/widget/DragSortHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/widget/DragSortHelper;->isListViewIntercepted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    return v2

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 179
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 180
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 191
    :goto_0
    :pswitch_0
    return v2

    .line 182
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/DragSortController;->mCurrX:I

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/DragSortController;->mCurrY:I

    goto :goto_0

    .line 187
    :pswitch_2
    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortController;->mDragging:Z

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDragHandleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/letv/leui/widget/DragSortController;->mDragHandleId:I

    .line 134
    return-void
.end method

.method public setDragInitMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/letv/leui/widget/DragSortController;->mDragInitMode:I

    .line 109
    return-void
.end method

.method public setFlingHandleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/letv/leui/widget/DragSortController;->mFlingHandleId:I

    .line 144
    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/letv/leui/widget/DragSortController;->mSortEnabled:Z

    .line 120
    return-void
.end method

.method public startDrag(III)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "dragFlags":I
    iget-boolean v1, p0, Lcom/letv/leui/widget/DragSortController;->mSortEnabled:Z

    if-eqz v1, :cond_0

    .line 163
    const/16 v0, 0xc

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortController;->mDslv:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeListView;->getDragSortHelper()Lcom/letv/leui/widget/DragSortHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortController;->mDslv:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/letv/leui/widget/DragSortHelper;->startDrag(IIII)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/DragSortController;->mDragging:Z

    .line 168
    iget-boolean v1, p0, Lcom/letv/leui/widget/DragSortController;->mDragging:Z

    return v1
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public startFlingPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 219
    const/4 v0, -0x1

    return v0
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "id"    # I

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 242
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 244
    .local v9, "y":I
    iget-object v10, p0, Lcom/letv/leui/widget/DragSortController;->mDslv:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v10, v8, v9}, Lcom/letv/leui/widget/LeListView;->pointToPosition(II)I

    move-result v7

    .line 246
    .local v7, "touchPos":I
    iget-object v10, p0, Lcom/letv/leui/widget/DragSortController;->mDslv:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v10}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v4

    .line 247
    .local v4, "numHeaders":I
    iget-object v10, p0, Lcom/letv/leui/widget/DragSortController;->mDslv:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v10}, Lcom/letv/leui/widget/LeListView;->getFooterViewsCount()I

    move-result v3

    .line 248
    .local v3, "numFooters":I
    iget-object v10, p0, Lcom/letv/leui/widget/DragSortController;->mDslv:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v10}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v0

    .line 253
    .local v0, "count":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    if-lt v7, v4, :cond_1

    .line 254
    sub-int v10, v0, v3

    if-ge v7, v10, :cond_1

    .line 255
    iget-object v10, p0, Lcom/letv/leui/widget/DragSortController;->mDslv:Lcom/letv/leui/widget/LeListView;

    iget-object v11, p0, Lcom/letv/leui/widget/DragSortController;->mDslv:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v11}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v10, v11}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 256
    .local v2, "item":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v5, v10

    .line 257
    .local v5, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v6, v10

    .line 259
    .local v6, "rawY":I
    if-nez p2, :cond_0

    move-object v1, v2

    .line 260
    .local v1, "dragBox":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_1

    .line 261
    iget-object v10, p0, Lcom/letv/leui/widget/DragSortController;->mTempLoc:[I

    invoke-virtual {v1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 263
    iget-object v10, p0, Lcom/letv/leui/widget/DragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-le v5, v10, :cond_1

    iget-object v10, p0, Lcom/letv/leui/widget/DragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    if-le v6, v10, :cond_1

    .line 264
    iget-object v10, p0, Lcom/letv/leui/widget/DragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v5, v10, :cond_1

    .line 265
    iget-object v10, p0, Lcom/letv/leui/widget/DragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v6, v10, :cond_1

    .line 267
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, p0, Lcom/letv/leui/widget/DragSortController;->mItemX:I

    .line 268
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcom/letv/leui/widget/DragSortController;->mItemY:I

    .line 270
    return v7

    .line 259
    .end local v1    # "dragBox":Landroid/view/View;
    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "dragBox":Landroid/view/View;
    goto :goto_0

    .line 275
    .end local v1    # "dragBox":Landroid/view/View;
    .end local v2    # "item":Landroid/view/View;
    .end local v5    # "rawX":I
    .end local v6    # "rawY":I
    :cond_1
    const/4 v10, -0x1

    return v10
.end method
