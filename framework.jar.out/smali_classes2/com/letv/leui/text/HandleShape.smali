.class public Lcom/letv/leui/text/HandleShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "HandleShape.java"


# static fields
.field public static final DEFAULT_BALL_RADIUS:I = 0x8

.field public static final HANDLE_END:I = 0x1

.field public static final HANDLE_INSERT:I = 0x2

.field public static final HANDLE_SECTION:I = 0x3

.field public static final HANDLE_START:I


# instance fields
.field private mBallRadius:F

.field private final mColor:I

.field private mStickHeight:F

.field private final mStickWidth:F

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "color"    # I

    .prologue
    const/4 v5, 0x1

    .line 26
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 27
    iput p2, p0, Lcom/letv/leui/text/HandleShape;->mType:I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 29
    .local v2, "res":Landroid/content/res/Resources;
    iput p3, p0, Lcom/letv/leui/text/HandleShape;->mColor:I

    .line 31
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 32
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v5, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 33
    .local v3, "width":F
    const/high16 v4, 0x42080000    # 34.0f

    invoke-static {v5, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 35
    .local v0, "height":F
    const/high16 v4, 0x40800000    # 4.0f

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mStickWidth:F

    .line 36
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v5, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    .line 37
    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v5, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mStickHeight:F

    .line 39
    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    .line 40
    iget v4, p0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    float-to-double v4, v4

    const-wide v6, 0x4006666666666666L    # 2.8

    mul-double/2addr v4, v6

    double-to-float v0, v4

    .line 41
    iget v4, p0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    float-to-double v4, v4

    const-wide v6, 0x3fdae147ae147ae1L    # 0.42

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mStickHeight:F

    .line 48
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/letv/leui/text/HandleShape;->resize(FF)V

    .line 26
    return-void

    .line 42
    :cond_1
    const/4 v4, 0x3

    if-ne p2, v4, :cond_0

    .line 43
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v5, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    .line 44
    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v5, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 45
    move v0, v3

    .line 46
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    iget v5, p0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mStickHeight:F

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/text/HandleShape;->getWidth()F

    move-result v17

    .line 55
    .local v17, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/text/HandleShape;->getHeight()F

    move-result v14

    .line 56
    .local v14, "height":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/text/HandleShape;->mStickHeight:F

    .line 57
    .local v6, "stickHeight":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/text/HandleShape;->mStickWidth:F

    .line 58
    .local v15, "stickWidth":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    .line 59
    .local v8, "ballRadius":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/text/HandleShape;->mColor:I

    .line 60
    .local v13, "color":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/text/HandleShape;->mType:I

    move/from16 v16, v0

    .line 62
    .local v16, "type":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    if-nez v16, :cond_0

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 65
    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v17, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v14, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 67
    :cond_0
    const/4 v2, 0x2

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    .line 68
    sub-float v2, v17, v15

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v2

    const/4 v4, 0x0

    add-float v2, v17, v15

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v5, v2

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 72
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v17, v2

    sub-float/2addr v2, v8

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    const/high16 v2, -0x3dcc0000    # -45.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 75
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v8, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 76
    const/4 v2, 0x3

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    .line 77
    const/4 v9, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v10, v8, v2

    move-object/from16 v7, p1

    move v11, v8

    move-object/from16 v12, p2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 81
    if-nez v16, :cond_3

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 52
    :cond_3
    return-void
.end method
