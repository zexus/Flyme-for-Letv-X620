.class public Lcom/letv/leui/util/LeAnimationUtils;
.super Ljava/lang/Object;
.source "LeAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/LeAnimationUtils$AnimationListener;
    }
.end annotation


# static fields
.field private static mAnimationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/letv/leui/util/LeAnimationUtils;->mAnimationHandler:Landroid/os/Handler;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static play(Landroid/widget/ImageView;ILcom/letv/leui/util/LeAnimationUtils$AnimationListener;)V
    .locals 10
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "animationDrawableResId"    # I
    .param p2, "listener"    # Lcom/letv/leui/util/LeAnimationUtils$AnimationListener;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    return-void

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    .local v2, "duration":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 33
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 34
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v5, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v5, :cond_1

    .line 35
    new-instance v5, Ljava/security/InvalidParameterException;

    .line 36
    const-string/jumbo v6, "You should pass a AnimationDrawable Resource Id to paramater animationDrawableResId."

    .line 35
    invoke-direct {v5, v6}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v1, v0

    .line 39
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 40
    .local v1, "drawable":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 41
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 46
    sget-object v5, Lcom/letv/leui/util/LeAnimationUtils;->mAnimationHandler:Landroid/os/Handler;

    new-instance v6, Lcom/letv/leui/util/LeAnimationUtils$1;

    invoke-direct {v6, p2}, Lcom/letv/leui/util/LeAnimationUtils$1;-><init>(Lcom/letv/leui/util/LeAnimationUtils$AnimationListener;)V

    .line 53
    int-to-long v8, v2

    .line 46
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    return-void
.end method
