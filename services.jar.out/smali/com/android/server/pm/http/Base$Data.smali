.class public Lcom/android/server/pm/http/Base$Data;
.super Ljava/lang/Object;
.source "Base.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/http/Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field public imei:Ljava/lang/String;

.field public sale_area:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/http/Base;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/http/Base;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/http/Base;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/server/pm/http/Base$Data;->this$0:Lcom/android/server/pm/http/Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
