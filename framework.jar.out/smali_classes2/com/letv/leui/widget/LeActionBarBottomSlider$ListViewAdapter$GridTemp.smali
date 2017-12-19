.class Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;
.super Ljava/lang/Object;
.source "LeActionBarBottomSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridTemp"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

.field tailImg:Landroid/widget/TextView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;-><init>(Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;)V

    return-void
.end method
