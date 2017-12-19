.class final Lcom/letv/leui/util/LeLinkify$4;
.super Ljava/lang/Object;
.source "LeLinkify.java"

# interfaces
.implements Lcom/letv/leui/util/LeLinkify$TransformFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/LeLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "match"    # Ljava/util/regex/Matcher;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-static {p1}, Landroid/util/Patterns;->digitsAndPlusOnly(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
