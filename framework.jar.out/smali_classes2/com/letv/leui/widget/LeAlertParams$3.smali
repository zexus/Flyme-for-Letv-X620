.class Lcom/letv/leui/widget/LeAlertParams$3;
.super Ljava/lang/Object;
.source "LeAlertParams.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeAlertParams;->setStyle(Landroid/content/DialogInterface$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeAlertParams;

.field final synthetic val$onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeAlertParams;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeAlertParams;
    .param p2, "val$onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/letv/leui/widget/LeAlertParams$3;->this$0:Lcom/letv/leui/widget/LeAlertParams;

    iput-object p2, p0, Lcom/letv/leui/widget/LeAlertParams$3;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams$3;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 179
    return-void
.end method
