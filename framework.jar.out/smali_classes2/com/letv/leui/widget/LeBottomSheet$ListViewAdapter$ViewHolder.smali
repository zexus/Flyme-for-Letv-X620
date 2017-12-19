.class Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LeBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

.field mainText:Landroid/widget/TextView;

.field subText:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->this$1:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;-><init>(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)V

    return-void
.end method
