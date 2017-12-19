.class final Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper$1;
.super Ljava/lang/Object;
.source "XmlIntegerHelper.java"

# interfaces
.implements Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbase/core/java/com/letv/leui/notification/XmlBaseHelper$TypeConvers",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic KToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Ljava/lang/String;

    .end local p1    # "k":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper$1;->KToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public KToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    .line 13
    return-object p1
.end method

.method public bridge synthetic StringToK(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper$1;->StringToK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public StringToK(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 23
    return-object p1
.end method

.method public StringToV(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic StringToV(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper$1;->StringToV(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public VToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "v"    # Ljava/lang/Integer;

    .prologue
    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic VToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper$1;->VToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public canItemIgnore(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "v"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic canItemIgnore(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 7
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper$1;->canItemIgnore(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method
