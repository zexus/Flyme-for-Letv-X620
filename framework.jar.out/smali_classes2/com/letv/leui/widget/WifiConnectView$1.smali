.class Lcom/letv/leui/widget/WifiConnectView$1;
.super Ljava/lang/Object;
.source "WifiConnectView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/WifiConnectView;->startAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/WifiConnectView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/WifiConnectView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/WifiConnectView;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/letv/leui/widget/WifiConnectView$1;->this$0:Lcom/letv/leui/widget/WifiConnectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView$1;->this$0:Lcom/letv/leui/widget/WifiConnectView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/WifiConnectView;->invalidate()V

    .line 138
    return-void
.end method
