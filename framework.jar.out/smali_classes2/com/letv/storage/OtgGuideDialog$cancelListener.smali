.class Lcom/letv/storage/OtgGuideDialog$cancelListener;
.super Ljava/lang/Object;
.source "OtgGuideDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/storage/OtgGuideDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "cancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/storage/OtgGuideDialog;


# direct methods
.method private constructor <init>(Lcom/letv/storage/OtgGuideDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/storage/OtgGuideDialog;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/letv/storage/OtgGuideDialog$cancelListener;->this$0:Lcom/letv/storage/OtgGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/storage/OtgGuideDialog;Lcom/letv/storage/OtgGuideDialog$cancelListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/storage/OtgGuideDialog;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/storage/OtgGuideDialog$cancelListener;-><init>(Lcom/letv/storage/OtgGuideDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog$cancelListener;->this$0:Lcom/letv/storage/OtgGuideDialog;

    iget-object v0, v0, Lcom/letv/storage/OtgGuideDialog;->mHandler:Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->sendEmptyMessage(I)Z

    .line 162
    return-void
.end method
