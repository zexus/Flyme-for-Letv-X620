.class public Lcom/letv/leui/widget/picker/MyLinearLayout;
.super Landroid/widget/LinearLayout;
.source "MyLinearLayout.java"


# instance fields
.field private alpha:F

.field private imageMatrix:Landroid/graphics/Matrix;

.field private mCamera:Landroid/graphics/Camera;

.field private whellView:Lcom/letv/leui/widget/picker/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setStaticTransformationsEnabled(Z)V

    .line 36
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/MyLinearLayout;->mCamera:Landroid/graphics/Camera;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    .line 23
    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 46
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getVisibleItems()I

    move-result v39

    .line 60
    .local v39, "visibleItem":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getViewAdapter()Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v24

    .line 61
    .local v24, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v13

    .line 62
    .local v13, "childHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getTextSize()I

    move-result v32

    .line 63
    .local v32, "textSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getItemTextSize()I

    move-result v41

    if-nez v41, :cond_4

    const/16 v41, 0x10

    :goto_0
    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v34, v0

    .line 64
    .local v34, "textSize_ItemColor":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getLabelTextSize()I

    move-result v41

    const/16 v42, 0x10

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_5

    const/16 v41, 0x16

    :goto_1
    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v33, v0

    .line 65
    .local v33, "textSize_CenterColor":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildCount()I

    move-result v15

    .line 67
    .local v15, "cnt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v37

    .line 68
    .local v37, "uScrollingOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getScrollingOffset()I

    move-result v30

    .line 70
    .local v30, "scrollingOffset":I
    if-nez v30, :cond_0

    if-eqz v37, :cond_0

    .line 71
    const/16 v37, 0x0

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/letv/leui/widget/picker/WheelView;->setUOffset(I)V

    .line 74
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getIsVertical()Z

    move-result v41

    if-eqz v41, :cond_15

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v41

    div-int/lit8 v27, v41, 0x2

    .line 76
    .local v27, "pCY":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    move/from16 v0, v22

    if-ge v0, v15, :cond_26

    .line 77
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .line 78
    .local v38, "v":Landroid/view/View;
    move-object/from16 v0, v38

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_3

    .line 79
    const/4 v9, 0x0

    .line 80
    .local v9, "cCY":I
    const/4 v10, 0x0

    .line 81
    .local v10, "cCY_new":I
    const/16 v19, 0x0

    .line 82
    .local v19, "diffPos":I
    const/16 v18, 0x0

    .line 83
    .local v18, "currentItem":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v18

    .line 85
    move/from16 v0, v24

    move/from16 v1, v39

    if-ge v0, v1, :cond_8

    .line 86
    div-int/lit8 v41, v39, 0x2

    move/from16 v0, v18

    move/from16 v1, v41

    if-ge v0, v1, :cond_6

    .line 87
    div-int/lit8 v41, v39, 0x2

    sub-int v41, v41, v18

    mul-int v19, v41, v13

    .line 90
    :goto_3
    if-lez v37, :cond_7

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    add-int v41, v41, v42

    add-int v41, v41, v37

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v42

    .line 91
    sub-int v10, v41, v42

    .line 93
    add-int v9, v10, v19

    .line 119
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->clear()V

    .line 120
    const/16 v41, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 124
    sub-int v41, v9, v27

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    sub-int v42, v9, v27

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->abs(I)I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x40800000    # 4.0f

    mul-float v42, v42, v43

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v43, v0

    div-float v42, v42, v43

    const/high16 v43, 0x40a00000    # 5.0f

    add-float v42, v42, v43

    mul-float v41, v41, v42

    .line 125
    int-to-float v0, v13

    move/from16 v42, v0

    .line 124
    mul-float v41, v41, v42

    .line 125
    const v42, 0x3e4ccccd    # 0.2f

    .line 124
    mul-float v4, v41, v42

    .line 127
    .local v4, "Y":F
    int-to-float v0, v13

    move/from16 v41, v0

    const/high16 v42, 0x40000000    # 2.0f

    div-float v21, v41, v42

    .line 128
    .local v21, "half":F
    sub-int v41, v9, v27

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    mul-float v41, v41, v4

    move/from16 v0, v41

    float-to-int v5, v0

    .line 131
    .local v5, "base_Y":I
    sub-int v41, v9, v27

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v42, v0

    const-wide v44, 0x3fd3333333333333L    # 0.3

    mul-double v42, v42, v44

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    sub-double v42, v44, v42

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Camera;->save()V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v41, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v42

    move/from16 v0, v42

    neg-int v0, v0

    move/from16 v42, v0

    div-int/lit8 v42, v42, 0x2

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v43

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v43, v0

    div-int/lit8 v43, v43, 0x2

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    invoke-virtual/range {v41 .. v43}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v41, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v42

    div-int/lit8 v42, v42, 0x2

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v43

    div-int/lit8 v43, v43, 0x2

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    invoke-virtual/range {v41 .. v43}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Camera;->restore()V

    .line 144
    const v41, 0x10200b3

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 146
    .local v36, "tv":Landroid/widget/TextView;
    const/high16 v41, 0x3f800000    # 1.0f

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    .line 147
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    move/from16 v41, v0

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v41

    div-int/lit8 v31, v41, 0xa

    .line 150
    .local v31, "space":I
    div-int/lit8 v41, v39, 0x2

    add-int/lit8 v41, v41, -0x1

    div-int/lit8 v42, v39, 0x2

    add-int v41, v41, v42

    mul-int v41, v41, v13

    div-int/lit8 v35, v41, 0x2

    .line 151
    .local v35, "topCenter":I
    mul-int v41, v13, v39

    div-int/lit8 v11, v41, 0x2

    .line 152
    .local v11, "center":I
    div-int/lit8 v41, v39, 0x2

    add-int/lit8 v41, v41, 0x1

    div-int/lit8 v42, v39, 0x2

    add-int v41, v41, v42

    add-int/lit8 v41, v41, 0x2

    mul-int v41, v41, v13

    div-int/lit8 v6, v41, 0x2

    .line 153
    .local v6, "bottomCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getCenterTextColot()I

    move-result v12

    .line 154
    .local v12, "centerColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getNormalTextColor()I

    move-result v23

    .line 155
    .local v23, "itemColor":I
    const/16 v16, 0x0

    .line 156
    .local v16, "color":I
    new-instance v17, Landroid/animation/ArgbEvaluator;

    invoke-direct/range {v17 .. v17}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 157
    .local v17, "colorEvaluator":Landroid/animation/ArgbEvaluator;
    const/16 v20, 0x0

    .line 159
    .local v20, "fraction":F
    invoke-virtual/range {v36 .. v36}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 160
    if-ltz v9, :cond_d

    add-int v41, v35, v31

    move/from16 v0, v41

    if-gt v9, v0, :cond_d

    .line 162
    :cond_1
    move/from16 v16, v23

    .line 163
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 209
    :cond_2
    :goto_5
    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .end local v4    # "Y":F
    .end local v5    # "base_Y":I
    .end local v6    # "bottomCenter":I
    .end local v9    # "cCY":I
    .end local v10    # "cCY_new":I
    .end local v11    # "center":I
    .end local v12    # "centerColor":I
    .end local v16    # "color":I
    .end local v17    # "colorEvaluator":Landroid/animation/ArgbEvaluator;
    .end local v18    # "currentItem":I
    .end local v19    # "diffPos":I
    .end local v20    # "fraction":F
    .end local v21    # "half":F
    .end local v23    # "itemColor":I
    .end local v31    # "space":I
    .end local v35    # "topCenter":I
    .end local v36    # "tv":Landroid/widget/TextView;
    :cond_3
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 63
    .end local v15    # "cnt":I
    .end local v22    # "i":I
    .end local v27    # "pCY":I
    .end local v30    # "scrollingOffset":I
    .end local v33    # "textSize_CenterColor":F
    .end local v34    # "textSize_ItemColor":F
    .end local v37    # "uScrollingOffset":I
    .end local v38    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getItemTextSize()I

    move-result v41

    goto/16 :goto_0

    .line 64
    .restart local v34    # "textSize_ItemColor":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getLabelTextSize()I

    move-result v41

    goto/16 :goto_1

    .line 89
    .restart local v9    # "cCY":I
    .restart local v10    # "cCY_new":I
    .restart local v15    # "cnt":I
    .restart local v18    # "currentItem":I
    .restart local v19    # "diffPos":I
    .restart local v22    # "i":I
    .restart local v27    # "pCY":I
    .restart local v30    # "scrollingOffset":I
    .restart local v33    # "textSize_CenterColor":F
    .restart local v37    # "uScrollingOffset":I
    .restart local v38    # "v":Landroid/view/View;
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 95
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    add-int v41, v41, v42

    add-int v10, v41, v37

    .line 96
    add-int v9, v10, v19

    goto/16 :goto_4

    .line 99
    :cond_8
    div-int/lit8 v41, v39, 0x2

    move/from16 v0, v18

    move/from16 v1, v41

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->isCyclic()Z

    move-result v41

    if-eqz v41, :cond_a

    .line 111
    :cond_9
    if-lez v37, :cond_c

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    add-int v41, v41, v42

    add-int v41, v41, v37

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v42

    .line 112
    sub-int v9, v41, v42

    goto/16 :goto_4

    .line 100
    :cond_a
    div-int/lit8 v41, v39, 0x2

    sub-int v41, v41, v18

    mul-int v19, v41, v13

    .line 101
    if-lez v37, :cond_b

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    add-int v41, v41, v42

    add-int v41, v41, v37

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v42

    .line 102
    sub-int v10, v41, v42

    .line 104
    add-int v9, v10, v19

    goto/16 :goto_4

    .line 106
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    add-int v41, v41, v42

    add-int v10, v41, v37

    .line 108
    add-int v9, v10, v19

    goto/16 :goto_4

    .line 115
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    add-int v41, v41, v42

    add-int v9, v41, v37

    goto/16 :goto_4

    .line 161
    .restart local v4    # "Y":F
    .restart local v5    # "base_Y":I
    .restart local v6    # "bottomCenter":I
    .restart local v11    # "center":I
    .restart local v12    # "centerColor":I
    .restart local v16    # "color":I
    .restart local v17    # "colorEvaluator":Landroid/animation/ArgbEvaluator;
    .restart local v20    # "fraction":F
    .restart local v21    # "half":F
    .restart local v23    # "itemColor":I
    .restart local v31    # "space":I
    .restart local v35    # "topCenter":I
    .restart local v36    # "tv":Landroid/widget/TextView;
    :cond_d
    sub-int v41, v6, v31

    move/from16 v0, v41

    if-lt v9, v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v41

    mul-int v41, v41, v39

    move/from16 v0, v41

    if-le v9, v0, :cond_1

    .line 164
    :cond_e
    sub-int v41, v11, v31

    move/from16 v0, v41

    if-lt v9, v0, :cond_f

    add-int v41, v11, v31

    move/from16 v0, v41

    if-gt v9, v0, :cond_f

    .line 165
    move/from16 v16, v12

    .line 167
    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_5

    .line 169
    :cond_f
    add-int v41, v11, v31

    move/from16 v0, v41

    if-le v9, v0, :cond_12

    sub-int v41, v6, v31

    move/from16 v0, v41

    if-ge v9, v0, :cond_12

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-lez v41, :cond_10

    .line 171
    sub-int v41, v9, v11

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v6, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v20, v41, v42

    .line 172
    sub-float v41, v33, v34

    mul-float v41, v41, v20

    sub-float v41, v33, v41

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 175
    sub-int v41, v9, v11

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    .line 176
    sub-int v42, v6, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    .line 175
    div-float v41, v41, v42

    .line 176
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    .line 175
    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_5

    .line 177
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-gez v41, :cond_11

    .line 179
    sub-int v41, v9, v6

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    .line 180
    sub-int v42, v6, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    .line 179
    div-float v20, v41, v42

    .line 181
    sub-float v41, v33, v34

    mul-float v41, v41, v20

    add-float v41, v41, v34

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 182
    sub-int v41, v9, v6

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    .line 183
    sub-int v42, v6, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    .line 182
    div-float v41, v41, v42

    .line 183
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    .line 182
    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_5

    .line 184
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-nez v41, :cond_2

    .line 185
    move/from16 v16, v23

    .line 186
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_5

    .line 188
    :cond_12
    add-int v41, v35, v31

    move/from16 v0, v41

    if-le v9, v0, :cond_2

    sub-int v41, v11, v31

    move/from16 v0, v41

    if-ge v9, v0, :cond_2

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-lez v41, :cond_13

    .line 191
    sub-int v41, v9, v35

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v11, v35

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v20, v41, v42

    .line 192
    sub-float v41, v33, v34

    mul-float v41, v41, v20

    add-float v41, v41, v34

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 193
    sub-int v41, v9, v35

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    .line 194
    sub-int v42, v11, v35

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    .line 193
    div-float v41, v41, v42

    .line 194
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    .line 193
    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_5

    .line 195
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-gez v41, :cond_14

    .line 197
    sub-int v41, v9, v11

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v11, v35

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v20, v41, v42

    .line 198
    sub-float v41, v33, v34

    mul-float v41, v41, v20

    sub-float v41, v33, v41

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 200
    sub-int v41, v9, v11

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    .line 201
    sub-int v42, v11, v35

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    .line 200
    div-float v41, v41, v42

    .line 201
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    .line 200
    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_5

    .line 202
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-nez v41, :cond_2

    .line 203
    move/from16 v16, v23

    .line 204
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_5

    .line 215
    .end local v4    # "Y":F
    .end local v5    # "base_Y":I
    .end local v6    # "bottomCenter":I
    .end local v9    # "cCY":I
    .end local v10    # "cCY_new":I
    .end local v11    # "center":I
    .end local v12    # "centerColor":I
    .end local v16    # "color":I
    .end local v17    # "colorEvaluator":Landroid/animation/ArgbEvaluator;
    .end local v18    # "currentItem":I
    .end local v19    # "diffPos":I
    .end local v20    # "fraction":F
    .end local v21    # "half":F
    .end local v22    # "i":I
    .end local v23    # "itemColor":I
    .end local v27    # "pCY":I
    .end local v31    # "space":I
    .end local v35    # "topCenter":I
    .end local v36    # "tv":Landroid/widget/TextView;
    .end local v38    # "v":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v14

    .line 216
    .local v14, "childWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v40

    .line 217
    .local v40, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v41

    div-int/lit8 v26, v41, 0x2

    .line 218
    .local v26, "pCX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v41

    mul-int v42, v14, v39

    sub-int v41, v41, v42

    div-int/lit8 v28, v41, 0x2

    .line 219
    .local v28, "padding":I
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_6
    move/from16 v0, v22

    if-ge v0, v15, :cond_26

    .line 220
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .line 221
    .restart local v38    # "v":Landroid/view/View;
    move-object/from16 v0, v38

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_18

    .line 222
    const/4 v7, 0x0

    .line 223
    .local v7, "cCX":I
    const/4 v8, 0x0

    .line 224
    .local v8, "cCX_new":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v18

    .line 225
    .restart local v18    # "currentItem":I
    move/from16 v0, v24

    move/from16 v1, v39

    if-ge v0, v1, :cond_19

    .line 226
    sub-int v41, v18, v22

    mul-int v41, v41, v14

    add-int v41, v41, v26

    add-int v7, v41, v28

    .line 249
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->clear()V

    .line 250
    const/16 v41, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 253
    sub-int v41, v7, v26

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    sub-int v42, v7, v26

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->abs(I)I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x40800000    # 4.0f

    mul-float v42, v42, v43

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v43, v0

    div-float v42, v42, v43

    const/high16 v43, 0x40a00000    # 5.0f

    add-float v42, v42, v43

    mul-float v41, v41, v42

    .line 254
    int-to-float v0, v14

    move/from16 v42, v0

    .line 253
    mul-float v41, v41, v42

    .line 254
    const v42, 0x3e4ccccd    # 0.2f

    .line 253
    mul-float v4, v41, v42

    .line 255
    .restart local v4    # "Y":F
    sub-int v41, v7, v26

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    mul-float v41, v41, v4

    move/from16 v0, v41

    float-to-int v5, v0

    .line 258
    .restart local v5    # "base_Y":I
    sub-int v41, v7, v26

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v42, v0

    const-wide v44, 0x3fc999999999999aL    # 0.2

    mul-double v42, v42, v44

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    sub-double v42, v44, v42

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Camera;->save()V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v41, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v42

    move/from16 v0, v42

    neg-int v0, v0

    move/from16 v42, v0

    div-int/lit8 v42, v42, 0x2

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v43

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v43, v0

    div-int/lit8 v43, v43, 0x2

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    invoke-virtual/range {v41 .. v43}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v41, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v42

    div-int/lit8 v42, v42, 0x2

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v43

    div-int/lit8 v43, v43, 0x2

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    invoke-virtual/range {v41 .. v43}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Camera;->restore()V

    .line 271
    const v41, 0x10200b3

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 273
    .restart local v36    # "tv":Landroid/widget/TextView;
    const/high16 v41, 0x3f800000    # 1.0f

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    move/from16 v41, v0

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v41

    div-int/lit8 v31, v41, 0xa

    .line 277
    .restart local v31    # "space":I
    div-int/lit8 v41, v39, 0x2

    add-int/lit8 v41, v41, -0x1

    div-int/lit8 v42, v39, 0x2

    add-int v41, v41, v42

    mul-int v41, v41, v14

    div-int/lit8 v25, v41, 0x2

    .line 278
    .local v25, "leftCenter":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v41

    mul-int v41, v41, v39

    div-int/lit8 v11, v41, 0x2

    .line 279
    .restart local v11    # "center":I
    div-int/lit8 v41, v39, 0x2

    add-int/lit8 v41, v41, 0x1

    div-int/lit8 v42, v39, 0x2

    add-int v41, v41, v42

    add-int/lit8 v41, v41, 0x2

    mul-int v41, v41, v14

    div-int/lit8 v29, v41, 0x2

    .line 280
    .local v29, "rightCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getCenterTextColot()I

    move-result v12

    .line 281
    .restart local v12    # "centerColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getNormalTextColor()I

    move-result v23

    .line 282
    .restart local v23    # "itemColor":I
    const/16 v16, 0x0

    .line 284
    .restart local v16    # "color":I
    const/16 v20, 0x0

    .line 285
    .restart local v20    # "fraction":F
    invoke-virtual/range {v36 .. v36}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 286
    new-instance v17, Landroid/animation/ArgbEvaluator;

    invoke-direct/range {v17 .. v17}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 287
    .restart local v17    # "colorEvaluator":Landroid/animation/ArgbEvaluator;
    if-ltz v7, :cond_1e

    add-int v41, v25, v31

    move/from16 v0, v41

    if-gt v7, v0, :cond_1e

    .line 289
    :cond_16
    move/from16 v16, v23

    .line 290
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 336
    :cond_17
    :goto_8
    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    .end local v4    # "Y":F
    .end local v5    # "base_Y":I
    .end local v7    # "cCX":I
    .end local v8    # "cCX_new":I
    .end local v11    # "center":I
    .end local v12    # "centerColor":I
    .end local v16    # "color":I
    .end local v17    # "colorEvaluator":Landroid/animation/ArgbEvaluator;
    .end local v18    # "currentItem":I
    .end local v20    # "fraction":F
    .end local v23    # "itemColor":I
    .end local v25    # "leftCenter":I
    .end local v29    # "rightCenter":I
    .end local v31    # "space":I
    .end local v36    # "tv":Landroid/widget/TextView;
    :cond_18
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 228
    .restart local v7    # "cCX":I
    .restart local v8    # "cCX_new":I
    .restart local v18    # "currentItem":I
    :cond_19
    div-int/lit8 v41, v39, 0x2

    move/from16 v0, v18

    move/from16 v1, v41

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->isCyclic()Z

    move-result v41

    if-eqz v41, :cond_1b

    .line 240
    :cond_1a
    if-lez v37, :cond_1d

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    add-int v41, v41, v42

    add-int v41, v41, v37

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v42

    .line 241
    sub-int v41, v41, v42

    add-int v7, v41, v28

    goto/16 :goto_7

    .line 229
    :cond_1b
    div-int/lit8 v41, v39, 0x2

    sub-int v41, v41, v18

    mul-int v19, v41, v14

    .line 230
    .restart local v19    # "diffPos":I
    if-lez v37, :cond_1c

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    add-int v41, v41, v42

    add-int v41, v41, v37

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v42

    .line 231
    sub-int v8, v41, v42

    .line 233
    add-int v41, v8, v19

    add-int v7, v41, v28

    goto/16 :goto_7

    .line 235
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    add-int v41, v41, v42

    add-int v8, v41, v37

    .line 237
    add-int v41, v8, v19

    add-int v7, v41, v28

    goto/16 :goto_7

    .line 244
    .end local v19    # "diffPos":I
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    add-int v41, v41, v42

    add-int v41, v41, v37

    add-int v7, v41, v28

    goto/16 :goto_7

    .line 288
    .restart local v4    # "Y":F
    .restart local v5    # "base_Y":I
    .restart local v11    # "center":I
    .restart local v12    # "centerColor":I
    .restart local v16    # "color":I
    .restart local v17    # "colorEvaluator":Landroid/animation/ArgbEvaluator;
    .restart local v20    # "fraction":F
    .restart local v23    # "itemColor":I
    .restart local v25    # "leftCenter":I
    .restart local v29    # "rightCenter":I
    .restart local v31    # "space":I
    .restart local v36    # "tv":Landroid/widget/TextView;
    :cond_1e
    sub-int v41, v29, v31

    move/from16 v0, v41

    if-lt v7, v0, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v41

    mul-int v41, v41, v39

    move/from16 v0, v41

    if-le v7, v0, :cond_16

    .line 291
    :cond_1f
    sub-int v41, v11, v31

    move/from16 v0, v41

    if-lt v7, v0, :cond_20

    add-int v41, v11, v31

    move/from16 v0, v41

    if-gt v7, v0, :cond_20

    .line 292
    move/from16 v16, v12

    .line 294
    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_8

    .line 296
    :cond_20
    add-int v41, v11, v31

    move/from16 v0, v41

    if-le v7, v0, :cond_23

    sub-int v41, v29, v31

    move/from16 v0, v41

    if-ge v7, v0, :cond_23

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-lez v41, :cond_21

    .line 299
    sub-int v41, v7, v11

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v29, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v20, v41, v42

    .line 300
    sub-float v41, v33, v34

    mul-float v41, v41, v20

    sub-float v41, v33, v41

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 302
    sub-int v41, v7, v11

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    .line 303
    sub-int v42, v29, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    .line 302
    div-float v41, v41, v42

    .line 303
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    .line 302
    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_8

    .line 304
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-gez v41, :cond_22

    .line 306
    sub-int v41, v7, v29

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v29, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v20, v41, v42

    .line 307
    sub-float v41, v33, v34

    mul-float v41, v41, v20

    add-float v41, v41, v34

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 308
    sub-int v41, v7, v29

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    .line 309
    sub-int v42, v29, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    .line 308
    div-float v41, v41, v42

    .line 309
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    .line 308
    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_8

    .line 310
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-nez v41, :cond_17

    .line 311
    move/from16 v16, v23

    .line 312
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_8

    .line 315
    :cond_23
    add-int v41, v25, v31

    move/from16 v0, v41

    if-le v7, v0, :cond_17

    sub-int v41, v11, v31

    move/from16 v0, v41

    if-ge v7, v0, :cond_17

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-lez v41, :cond_24

    .line 318
    sub-int v41, v7, v25

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v11, v25

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v20, v41, v42

    .line 319
    sub-float v41, v33, v34

    mul-float v41, v41, v20

    add-float v41, v41, v34

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 320
    sub-int v41, v7, v25

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    .line 321
    sub-int v42, v11, v25

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    .line 320
    div-float v41, v41, v42

    .line 321
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    .line 320
    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_8

    .line 322
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-gez v41, :cond_25

    .line 324
    sub-int v41, v7, v11

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v11, v25

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v20, v41, v42

    .line 325
    sub-float v41, v33, v34

    mul-float v41, v41, v20

    sub-float v41, v33, v41

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 327
    sub-int v41, v7, v11

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    .line 328
    sub-int v42, v11, v25

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    .line 327
    div-float v41, v41, v42

    .line 328
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    .line 327
    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_8

    .line 329
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-nez v41, :cond_17

    .line 330
    move/from16 v16, v23

    .line 331
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_8

    .line 341
    .end local v4    # "Y":F
    .end local v5    # "base_Y":I
    .end local v7    # "cCX":I
    .end local v8    # "cCX_new":I
    .end local v11    # "center":I
    .end local v12    # "centerColor":I
    .end local v14    # "childWidth":I
    .end local v16    # "color":I
    .end local v17    # "colorEvaluator":Landroid/animation/ArgbEvaluator;
    .end local v18    # "currentItem":I
    .end local v20    # "fraction":F
    .end local v23    # "itemColor":I
    .end local v25    # "leftCenter":I
    .end local v26    # "pCX":I
    .end local v28    # "padding":I
    .end local v29    # "rightCenter":I
    .end local v31    # "space":I
    .end local v36    # "tv":Landroid/widget/TextView;
    .end local v38    # "v":Landroid/view/View;
    .end local v40    # "w":I
    :cond_26
    const/16 v41, 0x1

    return v41
.end method

.method public getWhellView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public setWhellView(Lcom/letv/leui/widget/picker/WheelView;)V
    .locals 0
    .param p1, "whellView"    # Lcom/letv/leui/widget/picker/WheelView;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    .line 43
    return-void
.end method
