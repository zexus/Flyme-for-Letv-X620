.class Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareActivityInfo"
.end annotation


# instance fields
.field mAppClickCounts:Ljava/lang/String;

.field mAppName:Ljava/lang/String;

.field mMimeType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "appClickCounts"    # Ljava/lang/String;

    .prologue
    .line 2651
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2652
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;->mMimeType:Ljava/lang/String;

    .line 2653
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;->mAppName:Ljava/lang/String;

    .line 2654
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;->mAppClickCounts:Ljava/lang/String;

    .line 2651
    return-void
.end method
