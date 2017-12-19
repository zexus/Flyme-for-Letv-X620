.class Lcom/letv/tracker/agnes/ReportManager$SavedMsg;
.super Ljava/lang/Object;
.source "ReportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/tracker/agnes/ReportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedMsg"
.end annotation


# instance fields
.field private msg:Ljava/lang/Object;

.field private type:I


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->type:I

    .line 25
    iput-object p2, p0, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->msg:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method getMsg()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->msg:Ljava/lang/Object;

    return-object v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->type:I

    return v0
.end method
