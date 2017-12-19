.class Lcom/android/internal/app/ResolverActivity$10;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->showTextShareDialog(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;

.field final synthetic val$platId:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "val$platId"    # I

    .prologue
    .line 2744
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$10;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput p2, p0, Lcom/android/internal/app/ResolverActivity$10;->val$platId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2747
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.letv.android.note.ACTION_SHARE_PICTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2748
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$10;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-get23(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2749
    const-string/jumbo v1, "com.letv.android.extra.WHICH_APP_TO_SHARE"

    iget v2, p0, Lcom/android/internal/app/ResolverActivity$10;->val$platId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2750
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$10;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 2751
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$10;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2746
    return-void
.end method
