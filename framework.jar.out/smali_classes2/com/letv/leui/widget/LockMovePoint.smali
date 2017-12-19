.class public Lcom/letv/leui/widget/LockMovePoint;
.super Ljava/lang/Object;
.source "LockMovePoint.java"


# instance fields
.field private curX:F

.field private curY:F

.field private moveX:F

.field private moveY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "curX"    # F
    .param p2, "curY"    # F
    .param p3, "moveX"    # F
    .param p4, "moveY"    # F

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/letv/leui/widget/LockMovePoint;->curX:F

    .line 14
    iput p2, p0, Lcom/letv/leui/widget/LockMovePoint;->curY:F

    .line 15
    iput p3, p0, Lcom/letv/leui/widget/LockMovePoint;->moveX:F

    .line 16
    iput p4, p0, Lcom/letv/leui/widget/LockMovePoint;->moveY:F

    .line 12
    return-void
.end method


# virtual methods
.method public getCurX()F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/letv/leui/widget/LockMovePoint;->curX:F

    return v0
.end method

.method public getCurY()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/letv/leui/widget/LockMovePoint;->curY:F

    return v0
.end method

.method public getMoveX()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/letv/leui/widget/LockMovePoint;->moveX:F

    return v0
.end method

.method public getMoveY()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/letv/leui/widget/LockMovePoint;->moveY:F

    return v0
.end method

.method public setCurX(F)V
    .locals 0
    .param p1, "curX"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/letv/leui/widget/LockMovePoint;->curX:F

    .line 26
    return-void
.end method

.method public setCurY(F)V
    .locals 0
    .param p1, "curY"    # F

    .prologue
    .line 35
    iput p1, p0, Lcom/letv/leui/widget/LockMovePoint;->curY:F

    .line 34
    return-void
.end method

.method public setMoveX(F)V
    .locals 0
    .param p1, "moveX"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/letv/leui/widget/LockMovePoint;->moveX:F

    .line 42
    return-void
.end method

.method public setMoveY(F)V
    .locals 0
    .param p1, "moveY"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/letv/leui/widget/LockMovePoint;->moveY:F

    .line 50
    return-void
.end method
