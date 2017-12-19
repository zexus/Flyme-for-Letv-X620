.class public Lcom/letv/leui/widget/BaseSwipeListViewListener;
.super Ljava/lang/Object;
.source "BaseSwipeListViewListener.java"

# interfaces
.implements Lcom/letv/leui/widget/SwipeListViewListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeSwipeMode(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    const/4 v0, -0x1

    return v0
.end method

.method public onClosed(IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "fromRight"    # Z

    .prologue
    .line 13
    return-void
.end method

.method public onDismiss([I)V
    .locals 0
    .param p1, "reverseSortedPositions"    # [I

    .prologue
    .line 33
    return-void
.end method

.method public onFirstListItem()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onLastListItem()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onListChanged()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public onMove(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "x"    # F

    .prologue
    .line 21
    return-void
.end method

.method public onOpened(IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "toRight"    # Z

    .prologue
    .line 9
    return-void
.end method

.method public onStartClose(IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "right"    # Z

    .prologue
    .line 29
    return-void
.end method

.method public onStartOpen(IIZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "action"    # I
    .param p3, "right"    # Z

    .prologue
    .line 25
    return-void
.end method
