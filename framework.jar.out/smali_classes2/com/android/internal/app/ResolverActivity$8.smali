.class Lcom/android/internal/app/ResolverActivity$8;
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

.field final synthetic val$j:I

.field final synthetic val$resolveItem:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "val$j"    # I

    .prologue
    .line 2481
    .local p3, "val$resolveItem":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$8;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput p2, p0, Lcom/android/internal/app/ResolverActivity$8;->val$j:I

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$8;->val$resolveItem:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2484
    iget v1, p0, Lcom/android/internal/app/ResolverActivity$8;->val$j:I

    if-gez v1, :cond_0

    .line 2486
    return-void

    .line 2488
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$8;->val$resolveItem:Ljava/util/List;

    iget v2, p0, Lcom/android/internal/app/ResolverActivity$8;->val$j:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get1(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2489
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$8;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->-get22(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$8;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->-wrap0(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2490
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$8;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ResolverActivity;->-wrap1(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2497
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$8;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget v2, p0, Lcom/android/internal/app/ResolverActivity$8;->val$j:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$8;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get5(Lcom/android/internal/app/ResolverActivity;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 2483
    return-void

    .line 2491
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$8;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$8;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2492
    const v3, 0x10404af

    .line 2491
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 2493
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$8;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 2491
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2495
    return-void
.end method
