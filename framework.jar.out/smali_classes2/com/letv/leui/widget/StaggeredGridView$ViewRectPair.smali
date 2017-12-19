.class Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewRectPair"
.end annotation


# instance fields
.field public final rect:Landroid/graphics/Rect;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "paramRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3163
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;->view:Landroid/view/View;

    .line 3164
    iput-object p2, p0, Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;->rect:Landroid/graphics/Rect;

    .line 3162
    return-void
.end method
