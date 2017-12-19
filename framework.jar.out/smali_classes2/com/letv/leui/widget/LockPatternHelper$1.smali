.class Lcom/letv/leui/widget/LockPatternHelper$1;
.super Ljava/lang/Object;
.source "LockPatternHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LockPatternHelper;->patternErrorDetected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LockPatternHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LockPatternHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LockPatternHelper;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternHelper$1;->this$0:Lcom/letv/leui/widget/LockPatternHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper$1;->this$0:Lcom/letv/leui/widget/LockPatternHelper;

    invoke-static {v0}, Lcom/letv/leui/widget/LockPatternHelper;->-get1(Lcom/letv/leui/widget/LockPatternHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper$1;->this$0:Lcom/letv/leui/widget/LockPatternHelper;

    invoke-static {v0}, Lcom/letv/leui/widget/LockPatternHelper;->-get3(Lcom/letv/leui/widget/LockPatternHelper;)Lcom/letv/leui/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LockPatternView;->getHelper()Lcom/letv/leui/widget/LockPatternHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/letv/leui/widget/LockPatternHelper;->-wrap0(Lcom/letv/leui/widget/LockPatternHelper;)V

    .line 97
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper$1;->this$0:Lcom/letv/leui/widget/LockPatternHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/letv/leui/widget/LockPatternHelper;->-set0(Lcom/letv/leui/widget/LockPatternHelper;Z)Z

    .line 94
    :cond_0
    return-void
.end method
