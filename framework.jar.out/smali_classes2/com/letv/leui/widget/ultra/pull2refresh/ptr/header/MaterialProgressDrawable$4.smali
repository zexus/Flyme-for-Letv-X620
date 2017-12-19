.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$4;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

.field final synthetic val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;
    .param p2, "val$ring"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$4;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$4;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 18
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$4;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result v11

    float-to-double v12, v11

    .line 370
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$4;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v14

    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v14, v14, v16

    .line 369
    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 371
    .local v5, "minProgressArc":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$4;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v8

    .line 372
    .local v8, "startingEndTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$4;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v10

    .line 373
    .local v10, "startingTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$4;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v9

    .line 375
    .local v9, "startingRotation":F
    const v11, 0x3f4ccccd    # 0.8f

    sub-float v4, v11, v5

    .line 377
    .local v4, "minArc":F
    invoke-static {}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->-get1()Landroid/view/animation/Interpolator;

    move-result-object v11

    move/from16 v0, p1

    invoke-interface {v11, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v11, v4

    .line 376
    add-float v2, v8, v11

    .line 378
    .local v2, "endTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$4;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v11, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 380
    invoke-static {}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->-get0()Landroid/view/animation/Interpolator;

    move-result-object v11

    move/from16 v0, p1

    invoke-interface {v11, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v11, v12

    .line 379
    add-float v7, v10, v11

    .line 382
    .local v7, "startTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$4;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v11, v7}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 383
    const/high16 v11, 0x3e800000    # 0.25f

    mul-float v11, v11, p1

    add-float v6, v9, v11

    .line 384
    .local v6, "rotation":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$4;->val$ring:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v11, v6}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 385
    const/high16 v11, 0x43100000    # 144.0f

    mul-float v11, v11, p1

    .line 386
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$4;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-static {v12}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->-get4(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;)F

    move-result v12

    const/high16 v13, 0x40a00000    # 5.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x44340000    # 720.0f

    mul-float/2addr v12, v13

    .line 385
    add-float v3, v11, v12

    .line 387
    .local v3, "groupRotation":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$4;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v11, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setRotation(F)V

    .line 366
    return-void
.end method
