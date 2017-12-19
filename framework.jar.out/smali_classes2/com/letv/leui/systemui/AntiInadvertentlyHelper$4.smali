.class Lcom/letv/leui/systemui/AntiInadvertentlyHelper$4;
.super Landroid/database/ContentObserver;
.source "AntiInadvertentlyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->initSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$4;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    iput-object p3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$4;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$4;->val$cr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "leui_anti_inadvertently"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->-set0(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 87
    return-void

    :cond_0
    move v0, v1

    .line 88
    goto :goto_0
.end method
