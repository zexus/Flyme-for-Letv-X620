.class Lcom/letv/leui/widget/LeBottomWidget$TabInfo;
.super Ljava/lang/Object;
.source "LeBottomWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeBottomWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabInfo"
.end annotation


# instance fields
.field public bw:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/letv/leui/widget/LeBottomWidget;",
            ">;"
        }
    .end annotation
.end field

.field public disabledIconId:I

.field public enabledIconId:I

.field public sequence:I

.field public tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/letv/leui/widget/LeBottomWidget;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/LeBottomWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeBottomWidget;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;->this$0:Lcom/letv/leui/widget/LeBottomWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
