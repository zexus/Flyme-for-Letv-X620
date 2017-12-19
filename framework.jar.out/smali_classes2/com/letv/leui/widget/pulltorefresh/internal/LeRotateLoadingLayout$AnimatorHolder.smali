.class Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;
.super Ljava/lang/Object;
.source "LeRotateLoadingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorHolder"
.end annotation


# instance fields
.field private angle:F

.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V

    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;->angle:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 539
    iput p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;->angle:F

    .line 538
    return-void
.end method
