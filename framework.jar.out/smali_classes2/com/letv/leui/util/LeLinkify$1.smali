.class final Lcom/letv/leui/util/LeLinkify$1;
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
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v5, 0x0

    .line 133
    if-lez p2, :cond_0

    .line 134
    add-int/lit8 v2, p2, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 135
    .local v0, "codePoint":I
    invoke-static {v0}, Lcom/letv/leui/util/LeLinkify;->-wrap0(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    return v5

    .line 140
    .end local v0    # "codePoint":I
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 141
    .local v1, "length":I
    if-ge p3, v1, :cond_1

    .line 142
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 143
    .restart local v0    # "codePoint":I
    invoke-static {v0}, Lcom/letv/leui/util/LeLinkify;->-wrap0(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    return v5

    .line 148
    .end local v0    # "codePoint":I
    :cond_1
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 149
    return v5

    .line 152
    :cond_2
    const/4 v2, 0x1

    return v2
.end method
