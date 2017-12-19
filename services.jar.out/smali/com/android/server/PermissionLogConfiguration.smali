.class public Lcom/android/server/PermissionLogConfiguration;
.super Ljava/lang/Object;
.source "PermissionLogConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PermissionLogConfiguration$TableConfiguration;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.providers.permissionlog"

.field public static final DATABASE_NAME:Ljava/lang/String; = "permissionlog_db"

.field public static final DATABASE_VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
