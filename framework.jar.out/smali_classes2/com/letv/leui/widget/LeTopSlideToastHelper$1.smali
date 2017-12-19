.class Lcom/letv/leui/widget/LeTopSlideToastHelper$1;
.super Ljava/lang/Object;
.source "LeTopSlideToastHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeTopSlideToastHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeTopSlideToastHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeTopSlideToastHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeTopSlideToastHelper;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper$1;->this$0:Lcom/letv/leui/widget/LeTopSlideToastHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper$1;->this$0:Lcom/letv/leui/widget/LeTopSlideToastHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->removeView()V

    .line 45
    return-void
.end method
