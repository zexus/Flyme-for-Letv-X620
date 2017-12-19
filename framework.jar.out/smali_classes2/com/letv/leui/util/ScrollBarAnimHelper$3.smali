.class Lcom/letv/leui/util/ScrollBarAnimHelper$3;
.super Ljava/lang/Object;
.source "ScrollBarAnimHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/util/ScrollBarAnimHelper;->prepare(Landroid/view/Window;Landroid/app/ActionBar;Landroid/view/View;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

.field final synthetic val$actionBar:Landroid/app/ActionBar;

.field final synthetic val$beginPx:F

.field final synthetic val$color:I

.field final synthetic val$endPx:F

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/letv/leui/util/ScrollBarAnimHelper;Landroid/view/Window;Landroid/app/ActionBar;IFFLandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/util/ScrollBarAnimHelper;
    .param p2, "val$window"    # Landroid/view/Window;
    .param p3, "val$actionBar"    # Landroid/app/ActionBar;
    .param p4, "val$color"    # I
    .param p5, "val$beginPx"    # F
    .param p6, "val$endPx"    # F
    .param p7, "val$view"    # Landroid/view/View;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    iput-object p2, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;->val$window:Landroid/view/Window;

    iput-object p3, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;->val$actionBar:Landroid/app/ActionBar;

    iput p4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;->val$color:I

    iput p5, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;->val$beginPx:F

    iput p6, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;->val$endPx:F

    iput-object p7, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 137
    iget-object v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    iget-object v1, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;->val$window:Landroid/view/Window;

    iget-object v2, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;->val$actionBar:Landroid/app/ActionBar;

    iget v3, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;->val$color:I

    iget v4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;->val$beginPx:F

    iget v5, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;->val$endPx:F

    invoke-static/range {v0 .. v5}, Lcom/letv/leui/util/ScrollBarAnimHelper;->-wrap1(Lcom/letv/leui/util/ScrollBarAnimHelper;Landroid/view/Window;Landroid/app/ActionBar;IFF)V

    .line 138
    iget-object v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    iget-object v1, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$3;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/letv/leui/util/ScrollBarAnimHelper;->-wrap2(Lcom/letv/leui/util/ScrollBarAnimHelper;Landroid/view/View;)V

    .line 135
    return-void
.end method
