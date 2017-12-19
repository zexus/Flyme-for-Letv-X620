.class Lcom/android/internal/app/ResolverActivity$7;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->initFiveLayoutContent(Landroid/widget/LinearLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 2445
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$7;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2448
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$7;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-get1(Lcom/android/internal/app/ResolverActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$7;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get10(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/letv/leui/util/LeResolveUtils;->gvShowAnim(ILandroid/widget/LinearLayout;)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 2449
    .local v6, "animation":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$7;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-get2(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2450
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 2451
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$7;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-get25(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2456
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$7;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$7;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get2(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    :cond_0
    invoke-static {v2, v1}, Lcom/android/internal/app/ResolverActivity;->-set0(Lcom/android/internal/app/ResolverActivity;Z)Z

    .line 2457
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$7;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->-get26(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$7;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-get0(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "more"

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$7;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-get23(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x3

    invoke-static/range {v0 .. v5}, Lcom/letv/leui/util/LeResolveUtils$UV;->reportBigBata(ZLandroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    return-void

    .line 2453
    :cond_1
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->reverse()V

    .line 2454
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$7;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-get25(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method
