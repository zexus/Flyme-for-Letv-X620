.class public Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;
.super Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;
.source "XmlIntegerHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper$1;

    invoke-direct {v0}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper$1;-><init>()V

    invoke-direct {p0, v0}, Lbase/core/java/com/letv/leui/notification/XmlBaseHelper;-><init>(Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;)V

    .line 4
    return-void
.end method
