.class Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;
.super Ljava/lang/Object;
.source "ScreenRecordingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/ScreenRecordingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeHolder"
.end annotation


# instance fields
.field db:F

.field final synthetic this$0:Lcom/letv/leui/widget/ScreenRecordingView;

.field timeMillis:J


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/ScreenRecordingView;JF)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/ScreenRecordingView;
    .param p2, "timeMillis"    # J
    .param p4, "db"    # F

    .prologue
    .line 196
    iput-object p1, p0, Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;->this$0:Lcom/letv/leui/widget/ScreenRecordingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-wide p2, p0, Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;->timeMillis:J

    .line 198
    iput p4, p0, Lcom/letv/leui/widget/ScreenRecordingView$TimeHolder;->db:F

    .line 196
    return-void
.end method
