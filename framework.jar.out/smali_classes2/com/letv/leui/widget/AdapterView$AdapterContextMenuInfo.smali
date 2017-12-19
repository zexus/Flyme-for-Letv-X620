.class public Lcom/letv/leui/widget/AdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/AdapterView;
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
    .line 403
    .local p0, "this":Lcom/letv/leui/widget/AdapterView$AdapterContextMenuInfo;, "Lcom/letv/leui/widget/AdapterView<TT;>.AdapterContextMenuInfo;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 405
    iput p2, p0, Lcom/letv/leui/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 406
    iput-wide p3, p0, Lcom/letv/leui/widget/AdapterView$AdapterContextMenuInfo;->id:J

    .line 403
    return-void
.end method
