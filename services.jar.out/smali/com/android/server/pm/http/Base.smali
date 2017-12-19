.class public Lcom/android/server/pm/http/Base;
.super Ljava/lang/Object;
.source "Base.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/http/Base$Data;
    }
.end annotation


# instance fields
.field public data:Lcom/android/server/pm/http/Base$Data;

.field public errmsg:Ljava/lang/String;

.field public errno:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
