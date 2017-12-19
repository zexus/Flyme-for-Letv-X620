.class public Lcom/letv/leui/util/statusbar/StatusbarColorInfo;
.super Ljava/lang/Object;
.source "StatusbarColorInfo.java"


# instance fields
.field private StatusbarIconColor:I

.field private statusbarBgColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusbarBgColor()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->statusbarBgColor:I

    return v0
.end method

.method public getStatusbarIconColor()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->StatusbarIconColor:I

    return v0
.end method

.method public setStatusbarBgColor(I)V
    .locals 0
    .param p1, "statusbarBgColor"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->statusbarBgColor:I

    .line 14
    return-void
.end method

.method public setStatusbarIconColor(I)V
    .locals 0
    .param p1, "statusbarIconColor"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->StatusbarIconColor:I

    .line 18
    return-void
.end method
