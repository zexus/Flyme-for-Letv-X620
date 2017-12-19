.class final Lcom/letv/leui/util/LeLinkify$2;
.super Ljava/lang/Object;
.source "LeLinkify.java"

# interfaces
.implements Lcom/letv/leui/util/LeLinkify$MatchFilter;


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
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    if-nez p2, :cond_0

    .line 170
    return v3

    .line 173
    :cond_0
    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 174
    return v2

    .line 177
    :cond_1
    return v3
.end method
