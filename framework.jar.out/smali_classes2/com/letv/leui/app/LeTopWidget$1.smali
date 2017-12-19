.class Lcom/letv/leui/app/LeTopWidget$1;
.super Ljava/lang/Object;
.source "LeTopWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/app/LeTopWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/app/LeTopWidget;


# direct methods
.method constructor <init>(Lcom/letv/leui/app/LeTopWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/app/LeTopWidget;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/letv/leui/app/LeTopWidget$1;->this$0:Lcom/letv/leui/app/LeTopWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v1, p0, Lcom/letv/leui/app/LeTopWidget$1;->this$0:Lcom/letv/leui/app/LeTopWidget;

    invoke-static {v1}, Lcom/letv/leui/app/LeTopWidget;->-get0(Lcom/letv/leui/app/LeTopWidget;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 303
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 301
    :cond_0
    return-void
.end method
