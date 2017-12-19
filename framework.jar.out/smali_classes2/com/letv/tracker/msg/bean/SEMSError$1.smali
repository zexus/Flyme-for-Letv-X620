.class Lcom/letv/tracker/msg/bean/SEMSError$1;
.super Ljava/util/ArrayList;
.source "SEMSError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/tracker/msg/bean/SEMSError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "appName"

    invoke-virtual {p0, v0}, Lcom/letv/tracker/msg/bean/SEMSError$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
