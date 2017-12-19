.class public abstract Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;
.super Ljava/lang/Object;
.source "ScrollBarAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/ScrollBarAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ScrollBarAnimChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;


# direct methods
.method public constructor <init>(Lcom/letv/leui/util/ScrollBarAnimHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/util/ScrollBarAnimHelper;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 153
    return-void
.end method
