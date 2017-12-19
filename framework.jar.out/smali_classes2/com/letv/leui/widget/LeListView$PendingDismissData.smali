.class Lcom/letv/leui/widget/LeListView$PendingDismissData;
.super Ljava/lang/Object;
.source "LeListView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingDismissData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/letv/leui/widget/LeListView$PendingDismissData;",
        ">;"
    }
.end annotation


# instance fields
.field public position:I

.field final synthetic this$0:Lcom/letv/leui/widget/LeListView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/LeListView;ILandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeListView;
    .param p2, "position"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 991
    iput-object p1, p0, Lcom/letv/leui/widget/LeListView$PendingDismissData;->this$0:Lcom/letv/leui/widget/LeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    iput p2, p0, Lcom/letv/leui/widget/LeListView$PendingDismissData;->position:I

    .line 993
    iput-object p3, p0, Lcom/letv/leui/widget/LeListView$PendingDismissData;->view:Landroid/view/View;

    .line 991
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/letv/leui/widget/LeListView$PendingDismissData;)I
    .locals 2
    .param p1, "other"    # Lcom/letv/leui/widget/LeListView$PendingDismissData;

    .prologue
    .line 999
    iget v0, p1, Lcom/letv/leui/widget/LeListView$PendingDismissData;->position:I

    iget v1, p0, Lcom/letv/leui/widget/LeListView$PendingDismissData;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 997
    check-cast p1, Lcom/letv/leui/widget/LeListView$PendingDismissData;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeListView$PendingDismissData;->compareTo(Lcom/letv/leui/widget/LeListView$PendingDismissData;)I

    move-result v0

    return v0
.end method
