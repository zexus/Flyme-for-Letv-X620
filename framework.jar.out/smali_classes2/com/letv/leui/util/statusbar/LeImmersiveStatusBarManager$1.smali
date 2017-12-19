.class Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$1;
.super Lcom/letv/leui/util/statusbar/PickerColorUtils;
.source "LeImmersiveStatusBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;


# direct methods
.method constructor <init>(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$1;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    invoke-direct {p0}, Lcom/letv/leui/util/statusbar/PickerColorUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public update(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$1;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    invoke-static {v0, p1}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->-wrap1(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;I)V

    .line 43
    return-void
.end method
