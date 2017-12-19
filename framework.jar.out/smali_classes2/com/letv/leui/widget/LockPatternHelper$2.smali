.class Lcom/letv/leui/widget/LockPatternHelper$2;
.super Ljava/lang/Object;
.source "LockPatternHelper.java"

# interfaces
.implements Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LockPatternHelper;->doError(Ljava/util/ArrayList;[[Z)V
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
    .line 119
    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternHelper$2;->this$0:Lcom/letv/leui/widget/LockPatternHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorLineAnim(FFI)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "times"    # I

    .prologue
    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternHelper$2;->this$0:Lcom/letv/leui/widget/LockPatternHelper;

    invoke-static {v2}, Lcom/letv/leui/widget/LockPatternHelper;->-get0(Lcom/letv/leui/widget/LockPatternHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 124
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_0

    .line 125
    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternHelper$2;->this$0:Lcom/letv/leui/widget/LockPatternHelper;

    invoke-static {v2}, Lcom/letv/leui/widget/LockPatternHelper;->-get2(Lcom/letv/leui/widget/LockPatternHelper;)[[Lcom/letv/leui/widget/LockPatternRing;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/letv/leui/widget/LockPatternRing;->resetRing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
