.class Lcom/letv/leui/widget/DragSortHelper$1;
.super Ljava/lang/Object;
.source "DragSortHelper.java"

# interfaces
.implements Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/DragSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/DragSortHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/DragSortHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper$1;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 1
    .param p1, "w"    # F
    .param p2, "t"    # J

    .prologue
    .line 234
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$1;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->-get12(Lcom/letv/leui/widget/DragSortHelper;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method
