.class Lcom/letv/leui/widget/WifiConnectView$2;
.super Ljava/lang/Object;
.source "WifiConnectView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 165
    iput-object p1, p0, Lcom/letv/leui/widget/WifiConnectView$2;->this$0:Lcom/letv/leui/widget/WifiConnectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/letv/leui/widget/WifiConnectView$2;->this$0:Lcom/letv/leui/widget/WifiConnectView;

    invoke-static {v1}, Lcom/letv/leui/widget/WifiConnectView;->-get0(Lcom/letv/leui/widget/WifiConnectView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/letv/leui/widget/WifiConnectView$2;->this$0:Lcom/letv/leui/widget/WifiConnectView;

    invoke-static {v1}, Lcom/letv/leui/widget/WifiConnectView;->-get1(Lcom/letv/leui/widget/WifiConnectView;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 167
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/WifiConnectView$2;->this$0:Lcom/letv/leui/widget/WifiConnectView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/WifiConnectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 172
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/letv/leui/widget/WifiConnectView$2;->this$0:Lcom/letv/leui/widget/WifiConnectView;

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/WifiConnectView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0
.end method
