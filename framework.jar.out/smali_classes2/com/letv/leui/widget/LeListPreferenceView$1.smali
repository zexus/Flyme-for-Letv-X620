.class Lcom/letv/leui/widget/LeListPreferenceView$1;
.super Ljava/lang/Object;
.source "LeListPreferenceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeListPreferenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeListPreferenceView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListPreferenceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeListPreferenceView;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView$1;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$1;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->-get1(Lcom/letv/leui/widget/LeListPreferenceView;)Lcom/letv/leui/widget/LeBottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->disappear()V

    .line 423
    return-void
.end method
