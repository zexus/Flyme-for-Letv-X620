.class public Lcom/letv/leui/widget/StaggeredGridView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3644
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 3645
    iput p2, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterContextMenuInfo;->position:I

    .line 3646
    iput-wide p3, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterContextMenuInfo;->id:J

    .line 3643
    return-void
.end method
