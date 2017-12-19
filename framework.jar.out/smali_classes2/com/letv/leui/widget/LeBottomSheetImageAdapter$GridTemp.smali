.class Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;
.super Ljava/lang/Object;
.source "LeBottomSheetImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeBottomSheetImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridTemp"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/letv/leui/widget/LeBottomSheetImageAdapter;

.field topTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/LeBottomSheetImageAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeBottomSheetImageAdapter;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;->this$0:Lcom/letv/leui/widget/LeBottomSheetImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/LeBottomSheetImageAdapter;Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeBottomSheetImageAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;-><init>(Lcom/letv/leui/widget/LeBottomSheetImageAdapter;)V

    return-void
.end method
