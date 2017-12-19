.class public Lcom/letv/leui/widget/LeFlowLayout;
.super Landroid/view/ViewGroup;
.source "LeFlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INFINITE:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private debugDraw:Z

.field private horizontalSpacing:I

.field private mLineNum:I

.field private mMaxLineNum:I

.field private orientation:I

.field private verticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 20
    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->horizontalSpacing:I

    .line 21
    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->verticalSpacing:I

    .line 22
    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->orientation:I

    .line 23
    iput-boolean v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->debugDraw:Z

    .line 25
    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->mLineNum:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->mMaxLineNum:I

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeFlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->horizontalSpacing:I

    .line 21
    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->verticalSpacing:I

    .line 22
    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->orientation:I

    .line 23
    iput-boolean v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->debugDraw:Z

    .line 25
    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->mLineNum:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->mMaxLineNum:I

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeFlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->horizontalSpacing:I

    .line 21
    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->verticalSpacing:I

    .line 22
    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->orientation:I

    .line 23
    iput-boolean v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->debugDraw:Z

    .line 25
    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->mLineNum:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->mMaxLineNum:I

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeFlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private createPaint(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 306
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 307
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 308
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 310
    return-object v0
.end method

.method private drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->debugDraw:Z

    if-nez v0, :cond_0

    .line 255
    return-void

    .line 258
    :cond_0
    const/16 v0, -0x100

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeFlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v5

    .line 259
    .local v5, "childPaint":Landroid/graphics/Paint;
    const v0, -0xff0100

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeFlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v12

    .line 260
    .local v12, "layoutPaint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeFlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v14

    .line 262
    .local v14, "newLinePaint":Landroid/graphics/Paint;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    .line 264
    .local v13, "lp":Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;
    invoke-static {v13}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get0(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v0

    if-lez v0, :cond_4

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    .line 266
    .local v1, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v2, v0, v3

    .line 267
    .local v2, "y":F
    invoke-static {v13}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get0(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    move-object/from16 v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 268
    invoke-static {v13}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get0(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    sub-float v8, v2, v0

    invoke-static {v13}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get0(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 269
    invoke-static {v13}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get0(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    add-float v8, v2, v0

    invoke-static {v13}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get0(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 278
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_1
    :goto_0
    invoke-static {v13}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get2(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v0

    if-lez v0, :cond_5

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v1, v0, v3

    .line 280
    .restart local v1    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    .line 281
    .restart local v2    # "y":F
    invoke-static {v13}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get2(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v4, v2, v0

    move-object/from16 v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 282
    const/high16 v0, 0x40800000    # 4.0f

    sub-float v7, v1, v0

    invoke-static {v13}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get2(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v8, v0, v3

    invoke-static {v13}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get2(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 283
    const/high16 v0, 0x40800000    # 4.0f

    add-float v7, v1, v0

    invoke-static {v13}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get2(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v8, v0, v3

    invoke-static {v13}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get2(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 292
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_2
    :goto_1
    invoke-static {v13}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get1(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->orientation:I

    if-nez v0, :cond_6

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    .line 295
    .restart local v1    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v2, v0, v3

    .line 296
    .restart local v2    # "y":F
    const/high16 v0, 0x40c00000    # 6.0f

    sub-float v8, v2, v0

    const/high16 v0, 0x40c00000    # 6.0f

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v7, v1

    move v9, v1

    move-object v11, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 253
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_3
    :goto_2
    return-void

    .line 270
    :cond_4
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->horizontalSpacing:I

    if-lez v0, :cond_1

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    .line 272
    .restart local v1    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v2, v0, v3

    .line 273
    .restart local v2    # "y":F
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v7, v1

    move v8, v2

    move v10, v2

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 274
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    sub-float v8, v2, v0

    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 275
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    add-float v8, v2, v0

    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 284
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_5
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->verticalSpacing:I

    if-lez v0, :cond_2

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v1, v0, v3

    .line 286
    .restart local v1    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    .line 287
    .restart local v2    # "y":F
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v7, v1

    move v8, v2

    move v9, v1

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 288
    const/high16 v0, 0x40800000    # 4.0f

    sub-float v7, v1, v0

    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v8, v0, v3

    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 289
    const/high16 v0, 0x40800000    # 4.0f

    add-float v7, v1, v0

    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v8, v0, v3

    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 298
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v1, v0, v3

    .line 299
    .restart local v1    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    .line 300
    .restart local v2    # "y":F
    const/high16 v0, 0x40c00000    # 6.0f

    sub-float v7, v1, v0

    const/high16 v0, 0x40c00000    # 6.0f

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v8, v2

    move v10, v2

    move-object v11, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method private getHorizontalSpacing(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I
    .locals 2
    .param p1, "lp"    # Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->horizontalSpacingSpecified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {p1}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get0(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v0

    .line 199
    .local v0, "hSpacing":I
    :goto_0
    return v0

    .line 197
    .end local v0    # "hSpacing":I
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->horizontalSpacing:I

    .restart local v0    # "hSpacing":I
    goto :goto_0
.end method

.method private getVerticalSpacing(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I
    .locals 2
    .param p1, "lp"    # Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->verticalSpacingSpecified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-static {p1}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get2(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v0

    .line 189
    .local v0, "vSpacing":I
    :goto_0
    return v0

    .line 187
    .end local v0    # "vSpacing":I
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->verticalSpacing:I

    .restart local v0    # "vSpacing":I
    goto :goto_0
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 241
    sget-object v1, Lcom/android/internal/R$styleable;->LeFlowLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 243
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeFlowLayout;->horizontalSpacing:I

    .line 244
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeFlowLayout;->verticalSpacing:I

    .line 245
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeFlowLayout;->orientation:I

    .line 246
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeFlowLayout;->debugDraw:Z

    .line 247
    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeFlowLayout;->mMaxLineNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    return-void

    .line 248
    :catchall_0
    move-exception v1

    .line 249
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    throw v1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 222
    instance-of v0, p1, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 216
    .local v0, "more":Z
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeFlowLayout;->drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 217
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeFlowLayout;->generateDefaultLayoutParams()Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 227
    new-instance v0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeFlowLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeFlowLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;
    .locals 2
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 232
    new-instance v0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 237
    new-instance v0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getLineNum()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout;->mLineNum:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeFlowLayout;->getChildCount()I

    move-result v1

    .line 205
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 206
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    .line 208
    .local v3, "lp":Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;
    invoke-virtual {v3}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->isExceedMaxLineNum()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {v3}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get3(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v4

    invoke-static {v3}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get4(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v5

    invoke-static {v3}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get3(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v3}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get4(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 203
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 37
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 59
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v35

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingRight()I

    move-result v36

    sub-int v35, v35, v36

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingLeft()I

    move-result v36

    sub-int v30, v35, v36

    .line 60
    .local v30, "sizeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v35

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingTop()I

    move-result v36

    sub-int v35, v35, v36

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingBottom()I

    move-result v36

    sub-int v29, v35, v36

    .line 62
    .local v29, "sizeHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 63
    .local v23, "modeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 68
    .local v22, "modeHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeFlowLayout;->orientation:I

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 69
    move/from16 v28, v30

    .line 70
    .local v28, "size":I
    move/from16 v21, v23

    .line 76
    .local v21, "mode":I
    :goto_0
    const/16 v18, 0x0

    .line 77
    .local v18, "lineThicknessWithSpacing":I
    const/16 v17, 0x0

    .line 78
    .local v17, "lineThickness":I
    const/4 v15, 0x0

    .line 81
    .local v15, "lineLengthWithSpacing":I
    const/16 v27, 0x0

    .line 83
    .local v27, "prevLinePosition":I
    const/4 v8, 0x0

    .line 84
    .local v8, "controlMaxLength":I
    const/4 v9, 0x0

    .line 86
    .local v9, "controlMaxThickness":I
    const/16 v16, 0x1

    .line 87
    .local v16, "lineNum":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getChildCount()I

    move-result v10

    .line 88
    .local v10, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v10, :cond_9

    .line 89
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/letv/leui/widget/LeFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v35

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1

    .line 88
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 72
    .end local v3    # "child":Landroid/view/View;
    .end local v8    # "controlMaxLength":I
    .end local v9    # "controlMaxThickness":I
    .end local v10    # "count":I
    .end local v12    # "i":I
    .end local v15    # "lineLengthWithSpacing":I
    .end local v16    # "lineNum":I
    .end local v17    # "lineThickness":I
    .end local v18    # "lineThicknessWithSpacing":I
    .end local v21    # "mode":I
    .end local v27    # "prevLinePosition":I
    .end local v28    # "size":I
    :cond_0
    move/from16 v28, v29

    .line 73
    .restart local v28    # "size":I
    move/from16 v21, v22

    .restart local v21    # "mode":I
    goto :goto_0

    .line 93
    .restart local v3    # "child":Landroid/view/View;
    .restart local v8    # "controlMaxLength":I
    .restart local v9    # "controlMaxThickness":I
    .restart local v10    # "count":I
    .restart local v12    # "i":I
    .restart local v15    # "lineLengthWithSpacing":I
    .restart local v16    # "lineNum":I
    .restart local v17    # "lineThickness":I
    .restart local v18    # "lineThicknessWithSpacing":I
    .restart local v27    # "prevLinePosition":I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2}, Lcom/letv/leui/widget/LeFlowLayout;->measureChild(Landroid/view/View;II)V

    .line 95
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    .line 96
    .local v19, "lp":Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;
    const/16 v35, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->setExceedMaxLineNum(Z)V

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeFlowLayout;->getHorizontalSpacing(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v11

    .line 98
    .local v11, "hSpacing":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeFlowLayout;->getVerticalSpacing(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I

    move-result v34

    .line 100
    .local v34, "vSpacing":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 101
    .local v7, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 108
    .local v4, "childHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeFlowLayout;->orientation:I

    move/from16 v35, v0

    if-nez v35, :cond_3

    .line 109
    move v5, v7

    .line 110
    .local v5, "childLength":I
    move v6, v4

    .line 111
    .local v6, "childThickness":I
    move/from16 v31, v11

    .line 112
    .local v31, "spacingLength":I
    move/from16 v32, v34

    .line 120
    .local v32, "spacingThickness":I
    :goto_3
    add-int v14, v15, v5

    .line 121
    .local v14, "lineLength":I
    add-int v15, v14, v31

    .line 123
    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->-get1(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)Z

    move-result v35

    if-nez v35, :cond_2

    if-eqz v21, :cond_4

    move/from16 v0, v28

    if-le v14, v0, :cond_4

    :cond_2
    const/16 v24, 0x1

    .line 125
    .local v24, "newLine":Z
    :goto_4
    if-eqz v24, :cond_7

    .line 126
    add-int/lit8 v16, v16, 0x1

    .line 127
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeFlowLayout;->mMaxLineNum:I

    move/from16 v35, v0

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeFlowLayout;->mMaxLineNum:I

    move/from16 v35, v0

    move/from16 v0, v16

    move/from16 v1, v35

    if-le v0, v1, :cond_6

    .line 128
    move v13, v12

    .local v13, "j":I
    :goto_5
    if-ge v13, v10, :cond_9

    .line 129
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/letv/leui/widget/LeFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    .line 130
    .local v33, "v":Landroid/view/View;
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getVisibility()I

    move-result v35

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    .line 128
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 114
    .end local v5    # "childLength":I
    .end local v6    # "childThickness":I
    .end local v13    # "j":I
    .end local v14    # "lineLength":I
    .end local v24    # "newLine":Z
    .end local v31    # "spacingLength":I
    .end local v32    # "spacingThickness":I
    .end local v33    # "v":Landroid/view/View;
    :cond_3
    move v5, v4

    .line 115
    .restart local v5    # "childLength":I
    move v6, v7

    .line 116
    .restart local v6    # "childThickness":I
    move/from16 v31, v34

    .line 117
    .restart local v31    # "spacingLength":I
    move/from16 v32, v11

    .restart local v32    # "spacingThickness":I
    goto :goto_3

    .line 123
    .restart local v14    # "lineLength":I
    :cond_4
    const/16 v24, 0x0

    .restart local v24    # "newLine":Z
    goto :goto_4

    .line 133
    .restart local v13    # "j":I
    .restart local v33    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    .line 134
    .local v20, "lp2":Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;
    const/16 v35, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->setExceedMaxLineNum(Z)V

    goto :goto_6

    .line 138
    .end local v13    # "j":I
    .end local v20    # "lp2":Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;
    .end local v33    # "v":Landroid/view/View;
    :cond_6
    add-int v27, v27, v18

    .line 140
    move/from16 v17, v6

    .line 141
    move v14, v5

    .line 142
    add-int v18, v6, v32

    .line 143
    add-int v15, v14, v31

    .line 146
    :cond_7
    add-int v35, v6, v32

    move/from16 v0, v18

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 147
    move/from16 v0, v17

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeFlowLayout;->orientation:I

    move/from16 v35, v0

    if-nez v35, :cond_8

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingLeft()I

    move-result v35

    add-int v35, v35, v14

    sub-int v25, v35, v5

    .line 153
    .local v25, "posX":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingTop()I

    move-result v35

    add-int v26, v35, v27

    .line 158
    .local v26, "posY":I
    :goto_7
    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->setPosition(II)V

    .line 160
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 161
    add-int v9, v27, v17

    goto/16 :goto_2

    .line 155
    .end local v25    # "posX":I
    .end local v26    # "posY":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingLeft()I

    move-result v35

    add-int v25, v35, v27

    .line 156
    .restart local v25    # "posX":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingTop()I

    move-result v35

    add-int v35, v35, v14

    sub-int v26, v35, v4

    .restart local v26    # "posY":I
    goto :goto_7

    .line 165
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childHeight":I
    .end local v5    # "childLength":I
    .end local v6    # "childThickness":I
    .end local v7    # "childWidth":I
    .end local v11    # "hSpacing":I
    .end local v14    # "lineLength":I
    .end local v19    # "lp":Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;
    .end local v24    # "newLine":Z
    .end local v25    # "posX":I
    .end local v26    # "posY":I
    .end local v31    # "spacingLength":I
    .end local v32    # "spacingThickness":I
    .end local v34    # "vSpacing":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeFlowLayout;->orientation:I

    move/from16 v35, v0

    if-nez v35, :cond_a

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingLeft()I

    move-result v35

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingRight()I

    move-result v36

    add-int v35, v35, v36

    add-int v8, v8, v35

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingBottom()I

    move-result v35

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingTop()I

    move-result v36

    add-int v35, v35, v36

    add-int v9, v9, v35

    .line 173
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeFlowLayout;->orientation:I

    move/from16 v35, v0

    if-nez v35, :cond_b

    .line 174
    move/from16 v0, p1

    invoke-static {v8, v0}, Lcom/letv/leui/widget/LeFlowLayout;->resolveSize(II)I

    move-result v35

    move/from16 v0, p2

    invoke-static {v9, v0}, Lcom/letv/leui/widget/LeFlowLayout;->resolveSize(II)I

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/LeFlowLayout;->setMeasuredDimension(II)V

    .line 179
    :goto_9
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeFlowLayout;->mLineNum:I

    .line 58
    return-void

    .line 169
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingBottom()I

    move-result v35

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingTop()I

    move-result v36

    add-int v35, v35, v36

    add-int v8, v8, v35

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingLeft()I

    move-result v35

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeFlowLayout;->getPaddingRight()I

    move-result v36

    add-int v35, v35, v36

    add-int v9, v9, v35

    goto :goto_8

    .line 176
    :cond_b
    move/from16 v0, p1

    invoke-static {v9, v0}, Lcom/letv/leui/widget/LeFlowLayout;->resolveSize(II)I

    move-result v35

    move/from16 v0, p2

    invoke-static {v8, v0}, Lcom/letv/leui/widget/LeFlowLayout;->resolveSize(II)I

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/LeFlowLayout;->setMeasuredDimension(II)V

    goto :goto_9
.end method

.method public setMaxLineNum(I)V
    .locals 0
    .param p1, "maxLineNum"    # I

    .prologue
    .line 47
    if-lez p1, :cond_0

    .line 48
    iput p1, p0, Lcom/letv/leui/widget/LeFlowLayout;->mMaxLineNum:I

    .line 49
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeFlowLayout;->requestLayout()V

    .line 46
    :cond_0
    return-void
.end method
