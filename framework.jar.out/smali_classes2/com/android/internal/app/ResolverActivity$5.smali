.class Lcom/android/internal/app/ResolverActivity$5;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->initShareLayout(Ljava/lang/CharSequence;Ljava/util/List;IZ)V
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
    .line 2335
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 2338
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->-get3(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 2339
    add-int/lit8 p3, p3, 0x4

    .line 2341
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->-get3(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3, v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2342
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->-get22(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->-wrap0(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2343
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ResolverActivity;->-wrap1(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2351
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-get5(Lcom/android/internal/app/ResolverActivity;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, p3, v2, v6}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 2337
    return-void

    .line 2344
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2345
    const v3, 0x10404af

    .line 2344
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 2346
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2344
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2348
    return-void
.end method
