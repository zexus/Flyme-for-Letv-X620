.class Lcom/letv/leui/widget/LeLicenceDialog$1;
.super Ljava/lang/Object;
.source "LeLicenceDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeLicenceDialog;->initDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeLicenceDialog;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeLicenceDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeLicenceDialog;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/letv/leui/widget/LeLicenceDialog$1;->this$0:Lcom/letv/leui/widget/LeLicenceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog$1;->this$0:Lcom/letv/leui/widget/LeLicenceDialog;

    invoke-static {v0, p2}, Lcom/letv/leui/widget/LeLicenceDialog;->-set0(Lcom/letv/leui/widget/LeLicenceDialog;Z)Z

    .line 142
    return-void
.end method
