.class public Lcom/letv/leui/pim/HanziToPinyin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/pim/HanziToPinyin$Token;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HanziToPinyin"

.field private static sInstance:Lcom/letv/leui/pim/HanziToPinyin;


# instance fields
.field private mAsciiTransliterator:Llibcore/icu/Transliterator;

.field private mPinyinTransliterator:Llibcore/icu/Transliterator;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    :try_start_0
    new-instance v1, Llibcore/icu/Transliterator;

    const-string/jumbo v2, "Han-Latin/Names; Latin-Ascii; Any-Upper"

    invoke-direct {v1, v2}, Llibcore/icu/Transliterator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/letv/leui/pim/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    .line 77
    new-instance v1, Llibcore/icu/Transliterator;

    const-string/jumbo v2, "Latin-Ascii"

    invoke-direct {v1, v2}, Llibcore/icu/Transliterator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/letv/leui/pim/HanziToPinyin;->mAsciiTransliterator:Llibcore/icu/Transliterator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "HanziToPinyin"

    const-string/jumbo v2, "Han-Latin/Names transliterator data is missing, HanziToPinyin is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "tokenType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/pim/HanziToPinyin$Token;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/pim/HanziToPinyin$Token;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lcom/letv/leui/pim/HanziToPinyin$Token;

    invoke-direct {v1, p3, v0, v0}, Lcom/letv/leui/pim/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 192
    return-void
.end method

.method public static getInstance()Lcom/letv/leui/pim/HanziToPinyin;
    .locals 2

    .prologue
    .line 106
    const-class v1, Lcom/letv/leui/pim/HanziToPinyin;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lcom/letv/leui/pim/HanziToPinyin;->sInstance:Lcom/letv/leui/pim/HanziToPinyin;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/letv/leui/pim/HanziToPinyin;

    invoke-direct {v0}, Lcom/letv/leui/pim/HanziToPinyin;-><init>()V

    sput-object v0, Lcom/letv/leui/pim/HanziToPinyin;->sInstance:Lcom/letv/leui/pim/HanziToPinyin;

    .line 110
    :cond_0
    sget-object v0, Lcom/letv/leui/pim/HanziToPinyin;->sInstance:Lcom/letv/leui/pim/HanziToPinyin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private tokenize(CLcom/letv/leui/pim/HanziToPinyin$Token;)V
    .locals 2
    .param p1, "character"    # C
    .param p2, "token"    # Lcom/letv/leui/pim/HanziToPinyin$Token;

    .prologue
    const/4 v1, 0x1

    .line 115
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 118
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 119
    iput v1, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->type:I

    .line 120
    iget-object v0, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 121
    return-void

    .line 125
    :cond_0
    const/16 v0, 0x250

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1e00

    if-gt v0, p1, :cond_3

    const/16 v0, 0x1eff

    if-ge p1, v0, :cond_3

    .line 126
    :cond_1
    iput v1, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->type:I

    .line 127
    iget-object v0, p0, Lcom/letv/leui/pim/HanziToPinyin;->mAsciiTransliterator:Llibcore/icu/Transliterator;

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->source:Ljava/lang/String;

    :goto_0
    iput-object v0, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 129
    return-void

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/pim/HanziToPinyin;->mAsciiTransliterator:Llibcore/icu/Transliterator;

    iget-object v1, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llibcore/icu/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_3
    const/4 v0, 0x2

    iput v0, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->type:I

    .line 133
    iget-object v0, p0, Lcom/letv/leui/pim/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    iget-object v1, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llibcore/icu/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 134
    iget-object v0, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 135
    iget-object v0, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->source:Ljava/lang/String;

    iget-object v1, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 134
    if-eqz v0, :cond_5

    .line 136
    :cond_4
    const/4 v0, 0x3

    iput v0, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->type:I

    .line 137
    iget-object v0, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lcom/letv/leui/pim/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 114
    :cond_5
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/pim/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v6, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/pim/HanziToPinyin$Token;>;"
    invoke-virtual {p0}, Lcom/letv/leui/pim/HanziToPinyin;->hasChineseTransliterator()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 150
    :cond_0
    return-object v6

    .line 153
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 154
    .local v2, "inputLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .line 156
    .local v5, "tokenType":I
    new-instance v4, Lcom/letv/leui/pim/HanziToPinyin$Token;

    invoke-direct {v4}, Lcom/letv/leui/pim/HanziToPinyin$Token;-><init>()V

    .line 162
    .local v4, "token":Lcom/letv/leui/pim/HanziToPinyin$Token;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_7

    .line 163
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 164
    .local v0, "character":C
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 166
    invoke-direct {p0, v3, v6, v5}, Lcom/letv/leui/pim/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 162
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_3
    invoke-direct {p0, v0, v4}, Lcom/letv/leui/pim/HanziToPinyin;->tokenize(CLcom/letv/leui/pim/HanziToPinyin$Token;)V

    .line 170
    iget v7, v4, Lcom/letv/leui/pim/HanziToPinyin$Token;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 172
    invoke-direct {p0, v3, v6, v5}, Lcom/letv/leui/pim/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 174
    :cond_4
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v4, Lcom/letv/leui/pim/HanziToPinyin$Token;

    .end local v4    # "token":Lcom/letv/leui/pim/HanziToPinyin$Token;
    invoke-direct {v4}, Lcom/letv/leui/pim/HanziToPinyin$Token;-><init>()V

    .line 182
    .restart local v4    # "token":Lcom/letv/leui/pim/HanziToPinyin$Token;
    :goto_2
    iget v5, v4, Lcom/letv/leui/pim/HanziToPinyin$Token;->type:I

    goto :goto_1

    .line 177
    :cond_5
    iget v7, v4, Lcom/letv/leui/pim/HanziToPinyin$Token;->type:I

    if-eq v5, v7, :cond_6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 178
    invoke-direct {p0, v3, v6, v5}, Lcom/letv/leui/pim/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 180
    :cond_6
    iget-object v7, v4, Lcom/letv/leui/pim/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 185
    .end local v0    # "character":C
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 186
    invoke-direct {p0, v3, v6, v5}, Lcom/letv/leui/pim/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 188
    :cond_8
    return-object v6
.end method

.method public hasChineseTransliterator()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/letv/leui/pim/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChineseWord(C)Z
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 100
    new-instance v0, Lcom/letv/leui/pim/HanziToPinyin$Token;

    invoke-direct {v0}, Lcom/letv/leui/pim/HanziToPinyin$Token;-><init>()V

    .line 101
    .local v0, "token":Lcom/letv/leui/pim/HanziToPinyin$Token;
    invoke-direct {p0, p1, v0}, Lcom/letv/leui/pim/HanziToPinyin;->tokenize(CLcom/letv/leui/pim/HanziToPinyin$Token;)V

    .line 102
    iget v1, v0, Lcom/letv/leui/pim/HanziToPinyin$Token;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public transliterate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/letv/leui/pim/HanziToPinyin;->hasChineseTransliterator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/pim/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    invoke-virtual {v0, p1}, Llibcore/icu/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
