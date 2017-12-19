.class Lcom/letv/leui/widget/LeTimePickerDialog$1;
.super Ljava/lang/Object;
.source "LeTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeTimePickerDialog;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeTimePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeTimePickerDialog;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/letv/leui/widget/LeTimePickerDialog$1;->this$0:Lcom/letv/leui/widget/LeTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog$1;->this$0:Lcom/letv/leui/widget/LeTimePickerDialog;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeTimePickerDialog;->dismiss()V

    .line 102
    const/4 v0, 0x0

    return v0
.end method
