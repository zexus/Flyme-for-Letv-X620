.class Lcom/letv/leui/widget/LeTitleEditTextExt$1;
.super Ljava/lang/Object;
.source "LeTitleEditTextExt.java"

# interfaces
.implements Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeTitleEditTextExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeTitleEditTextExt;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeTitleEditTextExt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeTitleEditTextExt;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt$1;->this$0:Lcom/letv/leui/widget/LeTitleEditTextExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClear()Z
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt$1;->this$0:Lcom/letv/leui/widget/LeTitleEditTextExt;

    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->-get0(Lcom/letv/leui/widget/LeTitleEditTextExt;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt$1;->this$0:Lcom/letv/leui/widget/LeTitleEditTextExt;

    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->-wrap0(Lcom/letv/leui/widget/LeTitleEditTextExt;)V

    .line 644
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
