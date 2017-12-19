.class public Lcom/letv/leui/widget/slide/LeSlide;
.super Ljava/lang/Object;
.source "LeSlide.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Landroid/app/Activity;)Lcom/letv/leui/widget/slide/LeSlideInterface;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-static {p0, v0, v0}, Lcom/letv/leui/widget/slide/LeSlide;->attach(Landroid/app/Activity;II)Lcom/letv/leui/widget/slide/LeSlideInterface;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Landroid/app/Activity;II)Lcom/letv/leui/widget/slide/LeSlideInterface;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "statusBarColor1"    # I
    .param p2, "statusBarColor2"    # I

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 41
    .local v0, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, "oldScreen":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 45
    new-instance v2, Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-direct {v2, p0, v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 46
    .local v2, "panel":Lcom/letv/leui/widget/slide/LeSlideLayout;
    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->addView(Landroid/view/View;)V

    .line 47
    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 50
    new-instance v4, Lcom/letv/leui/widget/slide/LeSlide$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/letv/leui/widget/slide/LeSlide$1;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v2, v4}, Lcom/letv/leui/widget/slide/LeSlideLayout;->setOnPanelSlideListener(Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;)V

    .line 80
    new-instance v3, Lcom/letv/leui/widget/slide/LeSlide$2;

    invoke-direct {v3, v2}, Lcom/letv/leui/widget/slide/LeSlide$2;-><init>(Lcom/letv/leui/widget/slide/LeSlideLayout;)V

    .line 115
    .local v3, "slidrInterface":Lcom/letv/leui/widget/slide/LeSlideInterface;
    return-object v3
.end method

.method public static attach(Landroid/app/Activity;Lcom/letv/leui/widget/slide/LeSlideConfig;)Lcom/letv/leui/widget/slide/LeSlideInterface;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "config"    # Lcom/letv/leui/widget/slide/LeSlideConfig;

    .prologue
    const/4 v5, 0x0

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 131
    .local v0, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, "oldScreen":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 135
    new-instance v2, Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-direct {v2, p0, v1, p1}, Lcom/letv/leui/widget/slide/LeSlideLayout;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/letv/leui/widget/slide/LeSlideConfig;)V

    .line 136
    .local v2, "panel":Lcom/letv/leui/widget/slide/LeSlideLayout;
    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->addView(Landroid/view/View;)V

    .line 137
    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 140
    new-instance v4, Lcom/letv/leui/widget/slide/LeSlide$3;

    invoke-direct {v4, p1, p0}, Lcom/letv/leui/widget/slide/LeSlide$3;-><init>(Lcom/letv/leui/widget/slide/LeSlideConfig;Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Lcom/letv/leui/widget/slide/LeSlideLayout;->setOnPanelSlideListener(Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;)V

    .line 188
    new-instance v3, Lcom/letv/leui/widget/slide/LeSlide$4;

    invoke-direct {v3, v2}, Lcom/letv/leui/widget/slide/LeSlide$4;-><init>(Lcom/letv/leui/widget/slide/LeSlideLayout;)V

    .line 224
    .local v3, "slideInterface":Lcom/letv/leui/widget/slide/LeSlideInterface;
    return-object v3
.end method
