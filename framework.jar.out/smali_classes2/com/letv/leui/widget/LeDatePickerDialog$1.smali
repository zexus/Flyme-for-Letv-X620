.class Lcom/letv/leui/widget/LeDatePickerDialog$1;
.super Ljava/lang/Object;
.source "LeDatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeDatePickerDialog;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeDatePickerDialog;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeDatePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeDatePickerDialog;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/letv/leui/widget/LeDatePickerDialog$1;->this$0:Lcom/letv/leui/widget/LeDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog$1;->this$0:Lcom/letv/leui/widget/LeDatePickerDialog;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeDatePickerDialog;->dismiss()V

    .line 215
    const/4 v0, 0x0

    return v0
.end method
