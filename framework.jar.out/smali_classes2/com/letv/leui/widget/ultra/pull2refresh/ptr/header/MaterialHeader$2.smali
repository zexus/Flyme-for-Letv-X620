.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$2;
.super Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;
.source "MaterialHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->setPtrFrameLayout(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$2;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$2;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$2;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    invoke-static {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->-get2(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51
    return-void
.end method
