.class public Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "LeSlidePager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/slide/LeSlidePager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field childIndex:I

.field public gravity:I

.field public isDecor:Z

.field needsMeasure:Z

.field position:I

.field widthFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2825
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2806
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->widthFactor:F

    .line 2824
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2829
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2806
    const/4 v1, 0x0

    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->widthFactor:F

    .line 2831
    invoke-static {}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get0()[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2832
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->gravity:I

    .line 2833
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2828
    return-void
.end method
