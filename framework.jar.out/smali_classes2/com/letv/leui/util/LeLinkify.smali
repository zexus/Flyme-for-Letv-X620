.class public Lcom/letv/leui/util/LeLinkify;
.super Ljava/lang/Object;
.source "LeLinkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/LeLinkify$MatchFilter;,
        Lcom/letv/leui/util/LeLinkify$TransformFilter;,
        Lcom/letv/leui/util/LeLinkify$LeURLSpan;,
        Lcom/letv/leui/util/LeLinkify$OnURLClickListener;,
        Lcom/letv/leui/util/LeLinkify$1;,
        Lcom/letv/leui/util/LeLinkify$2;,
        Lcom/letv/leui/util/LeLinkify$3;,
        Lcom/letv/leui/util/LeLinkify$4;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field public static final DATE:Ljava/util/regex/Pattern;

.field public static final DATE_TIME:I = 0x10

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final MAP_ADDRESSES:I = 0x8

.field public static final PATTERN_WEB_URL:Ljava/util/regex/Pattern;

.field public static final PHONE:Ljava/util/regex/Pattern;

.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field public static final WEB_URLS:I = 0x1

.field public static final sLeTelMatchFilter:Lcom/letv/leui/util/LeLinkify$MatchFilter;

.field public static final sPhoneNumberMatchFilter:Lcom/letv/leui/util/LeLinkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Lcom/letv/leui/util/LeLinkify$TransformFilter;

.field public static final sUrlMatchFilter:Lcom/letv/leui/util/LeLinkify$MatchFilter;


# direct methods
.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    invoke-static {p0}, Lcom/letv/leui/util/LeLinkify;->isWord(I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    const-string/jumbo v0, "((?:(ftp|Ftp|FTP|http|Http|https|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:\u03b4\u03bf\u03ba\u03b9\u03bc\u03ae|\u0438\u0441\u043f\u044b\u0442\u0430\u043d\u0438\u0435|\u0440\u0444|\u0441\u0440\u0431|\u05d8\u05e2\u05e1\u05d8|\u0622\u0632\u0645\u0627\u06cc\u0634\u06cc|\u0625\u062e\u062a\u0628\u0627\u0631|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u092a\u0930\u0940\u0915\u094d\u0937\u093e|\u092d\u093e\u0930\u0924|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0baa\u0bb0\u0bbf\u0b9f\u0bcd\u0b9a\u0bc8|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u30c6\u30b9\u30c8|\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u65b0\u52a0\u5761|\u6d4b\u8bd5|\u6e2c\u8a66|\u9999\u6e2f|\ud14c\uc2a4\ud2b8|\ud55c\uad6d|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)((?:\\/(?:(?:[a-zA-Z0-9\u00a0-\u2fff\u3040-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff\uff66-\uffef\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))+[\\.\\=\\?\\_]?[a-zA-Z0-9\\%\\-\\~\\&\\#\\+\\/\\=\\_]+)|(?:\\/(?:(?:[a-zA-Z0-9\\/\\:\\@\\&\\=\\#\\~\\-\\+\\*\\\'\\_])|(?:\\%[a-fA-F0-9]{2}))*))?"

    .line 119
    const/4 v1, 0x2

    .line 104
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/LeLinkify;->PATTERN_WEB_URL:Ljava/util/regex/Pattern;

    .line 122
    const-string/jumbo v0, "(\\+[0-9]+[\\- ]*)?(\\([0-9]+\\)[\\- ]*)?([0-9][0-9\\- ]+[0-9])"

    .line 121
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/LeLinkify;->PHONE:Ljava/util/regex/Pattern;

    .line 126
    const-string/jumbo v0, "^((((0[13578])|([13578])|(1[02]))[/](([1-9])|([0-2][0-9])|(3[01])))|(((0[469])|([469])|(11))[/](([1-9])|([0-2][0-9])|(30)))|((2|02)[/](([1-9])|([0-2][0-9]))))[/]\\d{4}$|^\\d{4}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/LeLinkify;->DATE:Ljava/util/regex/Pattern;

    .line 130
    new-instance v0, Lcom/letv/leui/util/LeLinkify$1;

    invoke-direct {v0}, Lcom/letv/leui/util/LeLinkify$1;-><init>()V

    sput-object v0, Lcom/letv/leui/util/LeLinkify;->sLeTelMatchFilter:Lcom/letv/leui/util/LeLinkify$MatchFilter;

    .line 167
    new-instance v0, Lcom/letv/leui/util/LeLinkify$2;

    invoke-direct {v0}, Lcom/letv/leui/util/LeLinkify$2;-><init>()V

    sput-object v0, Lcom/letv/leui/util/LeLinkify;->sUrlMatchFilter:Lcom/letv/leui/util/LeLinkify$MatchFilter;

    .line 185
    new-instance v0, Lcom/letv/leui/util/LeLinkify$3;

    invoke-direct {v0}, Lcom/letv/leui/util/LeLinkify$3;-><init>()V

    sput-object v0, Lcom/letv/leui/util/LeLinkify;->sPhoneNumberMatchFilter:Lcom/letv/leui/util/LeLinkify$MatchFilter;

    .line 208
    new-instance v0, Lcom/letv/leui/util/LeLinkify$4;

    invoke-direct {v0}, Lcom/letv/leui/util/LeLinkify$4;-><init>()V

    sput-object v0, Lcom/letv/leui/util/LeLinkify;->sPhoneNumberTransformFilter:Lcom/letv/leui/util/LeLinkify$TransformFilter;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "t"    # Landroid/widget/TextView;

    .prologue
    .line 380
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 382
    .local v0, "m":Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-eqz v1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;I)V
    .locals 6
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "linkType"    # I

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    .line 402
    invoke-static/range {v0 .. v5}, Lcom/letv/leui/util/LeLinkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/letv/leui/util/LeLinkify$MatchFilter;Lcom/letv/leui/util/LeLinkify$TransformFilter;I)V

    .line 401
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/letv/leui/util/LeLinkify$MatchFilter;Lcom/letv/leui/util/LeLinkify$TransformFilter;I)V
    .locals 6
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Lcom/letv/leui/util/LeLinkify$MatchFilter;
    .param p4, "transformFilter"    # Lcom/letv/leui/util/LeLinkify$TransformFilter;
    .param p5, "type"    # I

    .prologue
    .line 423
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .local v0, "s":Landroid/text/SpannableString;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 425
    invoke-static/range {v0 .. v5}, Lcom/letv/leui/util/LeLinkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/letv/leui/util/LeLinkify$MatchFilter;Lcom/letv/leui/util/LeLinkify$TransformFilter;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-static {p0}, Lcom/letv/leui/util/LeLinkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 422
    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/letv/leui/util/LeLinkify;->addLinks(Landroid/text/Spannable;IZ)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;IZ)Z
    .locals 11
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I
    .param p2, "simplePhoneMatch"    # Z

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    const/4 v1, 0x0

    return v1

    .line 279
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    .line 281
    .local v10, "old":[Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    array-length v1, v10

    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_1

    .line 282
    aget-object v1, v10, v7

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 281
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 285
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/util/LinkSpec;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 288
    sget-object v2, Lcom/letv/leui/util/LeLinkify;->PATTERN_WEB_URL:Ljava/util/regex/Pattern;

    .line 289
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "http://"

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string/jumbo v1, "https://"

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string/jumbo v1, "rtsp://"

    const/4 v4, 0x2

    aput-object v1, v3, v4

    .line 290
    sget-object v4, Lcom/letv/leui/util/LeLinkify;->sUrlMatchFilter:Lcom/letv/leui/util/LeLinkify$MatchFilter;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    .line 288
    invoke-static/range {v0 .. v6}, Lcom/letv/leui/util/LeLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/letv/leui/util/LeLinkify$MatchFilter;Lcom/letv/leui/util/LeLinkify$TransformFilter;I)V

    .line 293
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 294
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 295
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "mailto:"

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 296
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, p0

    .line 294
    invoke-static/range {v0 .. v6}, Lcom/letv/leui/util/LeLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/letv/leui/util/LeLinkify$MatchFilter;Lcom/letv/leui/util/LeLinkify$TransformFilter;I)V

    .line 299
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 300
    if-eqz p2, :cond_6

    .line 301
    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const-string/jumbo v2, "tel:"

    invoke-static {v0, p0, v1, v2}, Lcom/letv/leui/util/LeLinkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 308
    :cond_4
    :goto_1
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 309
    invoke-static {v0, p0}, Lcom/letv/leui/util/LeLinkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 312
    :cond_5
    invoke-static {v0}, Lcom/letv/leui/util/LeLinkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 314
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 315
    const/4 v1, 0x0

    return v1

    .line 304
    :cond_6
    invoke-static {v0, p0}, Lcom/letv/leui/util/LeLinkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    goto :goto_1

    .line 318
    :cond_7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "link$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/letv/leui/util/LinkSpec;

    .line 319
    .local v8, "link":Lcom/letv/leui/util/LinkSpec;
    invoke-static {v8, p0}, Lcom/letv/leui/util/LeLinkify;->applyLink(Lcom/letv/leui/util/LinkSpec;Landroid/text/Spannable;)V

    goto :goto_2

    .line 322
    .end local v8    # "link":Lcom/letv/leui/util/LinkSpec;
    :cond_8
    const/4 v1, 0x1

    return v1
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;I)Z
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "linkType"    # I

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    .line 443
    invoke-static/range {v0 .. v5}, Lcom/letv/leui/util/LeLinkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/letv/leui/util/LeLinkify$MatchFilter;Lcom/letv/leui/util/LeLinkify$TransformFilter;I)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/letv/leui/util/LeLinkify$MatchFilter;Lcom/letv/leui/util/LeLinkify$TransformFilter;I)Z
    .locals 12
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Lcom/letv/leui/util/LeLinkify$MatchFilter;
    .param p4, "transformFilter"    # Lcom/letv/leui/util/LeLinkify$TransformFilter;
    .param p5, "type"    # I

    .prologue
    .line 463
    const/4 v3, 0x0

    .line 464
    .local v3, "hasMatches":Z
    if-nez p2, :cond_2

    const-string/jumbo v5, ""

    .line 465
    .local v5, "prefix":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 467
    .local v4, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 468
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 469
    .local v7, "start":I
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 470
    .local v2, "end":I
    const/4 v1, 0x1

    .line 472
    .local v1, "allowed":Z
    if-eqz p3, :cond_1

    .line 473
    invoke-interface {p3, p0, v7, v2}, Lcom/letv/leui/util/LeLinkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v1

    .line 476
    .end local v1    # "allowed":Z
    :cond_1
    if-eqz v1, :cond_0

    .line 477
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    move-object/from16 v0, p4

    invoke-static {v9, v10, v4, v0}, Lcom/letv/leui/util/LeLinkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/letv/leui/util/LeLinkify$TransformFilter;)Ljava/lang/String;

    move-result-object v8

    .line 480
    .local v8, "url":Ljava/lang/String;
    new-instance v6, Lcom/letv/leui/util/LinkSpec;

    invoke-direct {v6}, Lcom/letv/leui/util/LinkSpec;-><init>()V

    .line 482
    .local v6, "spec":Lcom/letv/leui/util/LinkSpec;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/letv/leui/util/LinkSpec;->text:Ljava/lang/String;

    .line 483
    move/from16 v0, p5

    iput v0, v6, Lcom/letv/leui/util/LinkSpec;->type:I

    .line 484
    iput-object v8, v6, Lcom/letv/leui/util/LinkSpec;->url:Ljava/lang/String;

    .line 485
    iput v7, v6, Lcom/letv/leui/util/LinkSpec;->start:I

    .line 486
    iput v2, v6, Lcom/letv/leui/util/LinkSpec;->end:I

    .line 487
    invoke-static {v6, p0}, Lcom/letv/leui/util/LeLinkify;->applyLink(Lcom/letv/leui/util/LinkSpec;Landroid/text/Spannable;)V

    .line 488
    const/4 v3, 0x1

    goto :goto_1

    .line 464
    .end local v2    # "end":I
    .end local v4    # "m":Ljava/util/regex/Matcher;
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v6    # "spec":Lcom/letv/leui/util/LinkSpec;
    .end local v7    # "start":I
    .end local v8    # "url":Ljava/lang/String;
    :cond_2
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 492
    .restart local v4    # "m":Ljava/util/regex/Matcher;
    :cond_3
    return v3
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 5
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "mask"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    if-nez p1, :cond_0

    .line 353
    return v3

    .line 356
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 358
    .local v1, "t":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_2

    .line 359
    check-cast v1, Landroid/text/Spannable;

    .end local v1    # "t":Ljava/lang/CharSequence;
    invoke-static {v1, p1}, Lcom/letv/leui/util/LeLinkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    invoke-static {p0}, Lcom/letv/leui/util/LeLinkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 361
    return v4

    .line 364
    :cond_1
    return v3

    .line 366
    .restart local v1    # "t":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 368
    .local v0, "s":Landroid/text/SpannableString;
    invoke-static {v0, p1}, Lcom/letv/leui/util/LeLinkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 369
    invoke-static {p0}, Lcom/letv/leui/util/LeLinkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 370
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    return v4

    .line 375
    :cond_3
    return v3
.end method

.method private static final applyLink(Lcom/letv/leui/util/LinkSpec;Landroid/text/Spannable;)V
    .locals 4
    .param p0, "linkSpec"    # Lcom/letv/leui/util/LinkSpec;
    .param p1, "text"    # Landroid/text/Spannable;

    .prologue
    .line 496
    new-instance v0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    invoke-direct {v0, p0}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;-><init>(Lcom/letv/leui/util/LinkSpec;)V

    .line 498
    .local v0, "span":Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    iget v1, p0, Lcom/letv/leui/util/LinkSpec;->start:I

    iget v2, p0, Lcom/letv/leui/util/LinkSpec;->end:I

    const/16 v3, 0x21

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 495
    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/letv/leui/util/LeLinkify$MatchFilter;Lcom/letv/leui/util/LeLinkify$TransformFilter;I)V
    .locals 19
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Lcom/letv/leui/util/LeLinkify$MatchFilter;
    .param p5, "transformFilter"    # Lcom/letv/leui/util/LeLinkify$TransformFilter;
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Lcom/letv/leui/util/LeLinkify$MatchFilter;",
            "Lcom/letv/leui/util/LeLinkify$TransformFilter;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/util/LinkSpec;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 560
    .local v5, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v14, "a-zA-Z0-9"

    .line 561
    .local v14, "validCharRegex":Ljava/lang/String;
    const-string/jumbo v15, "(\\b^[^%s]+)([%s]+\\.)"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 562
    const-string/jumbo v17, "a-zA-Z0-9"

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const-string/jumbo v17, "a-zA-Z0-9"

    const/16 v18, 0x1

    aput-object v17, v16, v18

    .line 561
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, "badFrontRemovingRegex":Ljava/lang/String;
    const-string/jumbo v15, "(\\.[%s]+)([^%s]+\\b$)"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 564
    const-string/jumbo v17, "a-zA-Z0-9"

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const-string/jumbo v17, "a-zA-Z0-9"

    const/16 v18, 0x1

    aput-object v17, v16, v18

    .line 563
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "badEndRemovingRegex":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 567
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    .line 568
    .local v11, "start":I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 570
    .local v4, "end":I
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 573
    .local v13, "urlstr":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 574
    .local v8, "p1":Ljava/util/regex/Pattern;
    invoke-virtual {v8, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 575
    .local v6, "m1":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 576
    const-string/jumbo v15, ""

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v3, v13, v0, v15}, Lcom/letv/leui/util/LeLinkify;->replaceGroup(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 577
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    sub-int v15, v4, v15

    if-ltz v15, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    sub-int v11, v4, v15

    .line 581
    :cond_1
    :goto_1
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 582
    .local v9, "p2":Ljava/util/regex/Pattern;
    invoke-virtual {v9, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 583
    .local v7, "m2":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 584
    const-string/jumbo v15, ""

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v2, v13, v0, v15}, Lcom/letv/leui/util/LeLinkify;->replaceGroup(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 585
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v11

    invoke-interface/range {p1 .. p1}, Landroid/text/Spannable;->length()I

    move-result v16

    move/from16 v0, v16

    if-gt v15, v0, :cond_5

    .line 586
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    add-int v4, v11, v15

    .line 589
    :cond_2
    :goto_2
    if-eqz p4, :cond_3

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v11, v4}, Lcom/letv/leui/util/LeLinkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 590
    :cond_3
    new-instance v10, Lcom/letv/leui/util/LinkSpec;

    invoke-direct {v10}, Lcom/letv/leui/util/LinkSpec;-><init>()V

    .line 591
    .local v10, "spec":Lcom/letv/leui/util/LinkSpec;
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v13, v0, v5, v1}, Lcom/letv/leui/util/LeLinkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/letv/leui/util/LeLinkify$TransformFilter;)Ljava/lang/String;

    move-result-object v12

    .line 593
    .local v12, "url":Ljava/lang/String;
    iput-object v13, v10, Lcom/letv/leui/util/LinkSpec;->text:Ljava/lang/String;

    .line 594
    move/from16 v0, p6

    iput v0, v10, Lcom/letv/leui/util/LinkSpec;->type:I

    .line 595
    iput-object v12, v10, Lcom/letv/leui/util/LinkSpec;->url:Ljava/lang/String;

    .line 596
    iput v11, v10, Lcom/letv/leui/util/LinkSpec;->start:I

    .line 597
    iput v4, v10, Lcom/letv/leui/util/LinkSpec;->end:I

    .line 598
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 577
    .end local v7    # "m2":Ljava/util/regex/Matcher;
    .end local v9    # "p2":Ljava/util/regex/Pattern;
    .end local v10    # "spec":Lcom/letv/leui/util/LinkSpec;
    .end local v12    # "url":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 586
    .restart local v7    # "m2":Ljava/util/regex/Matcher;
    .restart local v9    # "p2":Ljava/util/regex/Pattern;
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroid/text/Spannable;->length()I

    move-result v4

    goto :goto_2

    .line 557
    .end local v4    # "end":I
    .end local v6    # "m1":Ljava/util/regex/Matcher;
    .end local v7    # "m2":Ljava/util/regex/Matcher;
    .end local v8    # "p1":Ljava/util/regex/Pattern;
    .end local v9    # "p2":Ljava/util/regex/Pattern;
    .end local v11    # "start":I
    .end local v13    # "urlstr":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 11
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 639
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/util/LinkSpec;>;"
    invoke-interface {p1}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 641
    .local v8, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 643
    .local v1, "base":I
    :goto_0
    invoke-static {v8}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 646
    .local v7, "start":I
    if-gez v7, :cond_1

    .line 638
    .end local v7    # "start":I
    :cond_0
    return-void

    .line 650
    .restart local v7    # "start":I
    :cond_1
    new-instance v6, Lcom/letv/leui/util/LinkSpec;

    invoke-direct {v6}, Lcom/letv/leui/util/LinkSpec;-><init>()V

    .line 651
    .local v6, "spec":Lcom/letv/leui/util/LinkSpec;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 652
    .local v5, "length":I
    add-int v4, v7, v5

    .line 654
    .local v4, "end":I
    const/16 v9, 0x8

    iput v9, v6, Lcom/letv/leui/util/LinkSpec;->type:I

    .line 655
    iput-object v0, v6, Lcom/letv/leui/util/LinkSpec;->text:Ljava/lang/String;

    .line 656
    add-int v9, v1, v7

    iput v9, v6, Lcom/letv/leui/util/LinkSpec;->start:I

    .line 657
    add-int v9, v1, v4

    iput v9, v6, Lcom/letv/leui/util/LinkSpec;->end:I

    .line 658
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 659
    add-int/2addr v1, v4

    .line 661
    const/4 v3, 0x0

    .line 664
    .local v3, "encodedAddress":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 669
    .local v3, "encodedAddress":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "geo:0,0?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/letv/leui/util/LinkSpec;->url:Ljava/lang/String;

    .line 670
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 665
    .local v3, "encodedAddress":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static final gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 624
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/util/LinkSpec;>;"
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 625
    .local v0, "phoneUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-interface {p1}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 626
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    .line 625
    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v8

    .line 627
    .local v8, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "match$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 628
    .local v6, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    new-instance v9, Lcom/letv/leui/util/LinkSpec;

    invoke-direct {v9}, Lcom/letv/leui/util/LinkSpec;-><init>()V

    .line 629
    .local v9, "spec":Lcom/letv/leui/util/LinkSpec;
    const/4 v1, 0x4

    iput v1, v9, Lcom/letv/leui/util/LinkSpec;->type:I

    .line 630
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/letv/leui/util/LinkSpec;->text:Ljava/lang/String;

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/letv/leui/util/LinkSpec;->url:Ljava/lang/String;

    .line 632
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v1

    iput v1, v9, Lcom/letv/leui/util/LinkSpec;->start:I

    .line 633
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v1

    iput v1, v9, Lcom/letv/leui/util/LinkSpec;->end:I

    .line 634
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 623
    .end local v6    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v9    # "spec":Lcom/letv/leui/util/LinkSpec;
    :cond_0
    return-void
.end method

.method private static final gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/util/LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 329
    .local v1, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 331
    .local v3, "start":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 333
    .local v0, "end":I
    sget-object v4, Lcom/letv/leui/util/LeLinkify;->sLeTelMatchFilter:Lcom/letv/leui/util/LeLinkify$MatchFilter;

    invoke-interface {v4, p1, v3, v0}, Lcom/letv/leui/util/LeLinkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    new-instance v2, Lcom/letv/leui/util/LinkSpec;

    invoke-direct {v2}, Lcom/letv/leui/util/LinkSpec;-><init>()V

    .line 335
    .local v2, "spec":Lcom/letv/leui/util/LinkSpec;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/letv/leui/util/LinkSpec;->text:Ljava/lang/String;

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/letv/leui/util/LinkSpec;->text:Ljava/lang/String;

    const-string/jumbo v6, "[\\- ]"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/letv/leui/util/LinkSpec;->url:Ljava/lang/String;

    .line 337
    iput v3, v2, Lcom/letv/leui/util/LinkSpec;->start:I

    .line 338
    iput v0, v2, Lcom/letv/leui/util/LinkSpec;->end:I

    .line 339
    const/4 v4, 0x4

    iput v4, v2, Lcom/letv/leui/util/LinkSpec;->type:I

    .line 340
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    .end local v0    # "end":I
    .end local v2    # "spec":Lcom/letv/leui/util/LinkSpec;
    .end local v3    # "start":I
    :cond_1
    return-void
.end method

.method private static final isWord(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 157
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    .line 158
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-le p0, v0, :cond_0

    .line 160
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/letv/leui/util/LeLinkify$TransformFilter;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "m"    # Ljava/util/regex/Matcher;
    .param p3, "filter"    # Lcom/letv/leui/util/LeLinkify$TransformFilter;

    .prologue
    const/4 v2, 0x0

    .line 503
    if-eqz p3, :cond_0

    .line 504
    invoke-interface {p3, p2, p0}, Lcom/letv/leui/util/LeLinkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 507
    :cond_0
    const/4 v7, 0x0

    .line 509
    .local v7, "hasPrefix":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

    .line 510
    aget-object v3, p1, v8

    .line 511
    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 510
    const/4 v1, 0x1

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 512
    const/4 v7, 0x1

    .line 515
    aget-object v4, p1, v8

    .line 516
    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    .line 515
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 524
    :cond_1
    if-nez v7, :cond_2

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 528
    :cond_2
    return-object p0

    .line 509
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/util/LinkSpec;>;"
    new-instance v2, Lcom/letv/leui/util/LeLinkify$5;

    invoke-direct {v2}, Lcom/letv/leui/util/LeLinkify$5;-><init>()V

    .line 701
    .local v2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/letv/leui/util/LinkSpec;>;"
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 703
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 704
    .local v4, "len":I
    const/4 v3, 0x0

    .line 706
    .local v3, "i":I
    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_4

    .line 707
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/util/LinkSpec;

    .line 708
    .local v0, "a":Lcom/letv/leui/util/LinkSpec;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/util/LinkSpec;

    .line 709
    .local v1, "b":Lcom/letv/leui/util/LinkSpec;
    const/4 v5, -0x1

    .line 711
    .local v5, "remove":I
    iget v6, v0, Lcom/letv/leui/util/LinkSpec;->start:I

    iget v7, v1, Lcom/letv/leui/util/LinkSpec;->start:I

    if-gt v6, v7, :cond_3

    iget v6, v0, Lcom/letv/leui/util/LinkSpec;->end:I

    iget v7, v1, Lcom/letv/leui/util/LinkSpec;->start:I

    if-le v6, v7, :cond_3

    .line 712
    iget v6, v1, Lcom/letv/leui/util/LinkSpec;->end:I

    iget v7, v0, Lcom/letv/leui/util/LinkSpec;->end:I

    if-gt v6, v7, :cond_1

    .line 713
    add-int/lit8 v5, v3, 0x1

    .line 720
    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 721
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 722
    add-int/lit8 v4, v4, -0x1

    .line 723
    goto :goto_0

    .line 714
    :cond_1
    iget v6, v0, Lcom/letv/leui/util/LinkSpec;->end:I

    iget v7, v0, Lcom/letv/leui/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Lcom/letv/leui/util/LinkSpec;->end:I

    iget v8, v1, Lcom/letv/leui/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    .line 715
    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    .line 716
    :cond_2
    iget v6, v0, Lcom/letv/leui/util/LinkSpec;->end:I

    iget v7, v0, Lcom/letv/leui/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Lcom/letv/leui/util/LinkSpec;->end:I

    iget v8, v1, Lcom/letv/leui/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    .line 717
    move v5, v3

    goto :goto_1

    .line 728
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 674
    .end local v0    # "a":Lcom/letv/leui/util/LinkSpec;
    .end local v1    # "b":Lcom/letv/leui/util/LinkSpec;
    .end local v5    # "remove":I
    :cond_4
    return-void
.end method

.method private static final replaceGroup(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "groupToReplace"    # I
    .param p3, "groupOccurrence"    # I
    .param p4, "replacement"    # Ljava/lang/String;

    .prologue
    .line 613
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 614
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 615
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 616
    return-object p1

    .line 614
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    invoke-virtual {v1, p2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    invoke-virtual {v2, v3, v4, p4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static final replaceGroup(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "groupToReplace"    # I
    .param p3, "replacement"    # Ljava/lang/String;

    .prologue
    .line 605
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/letv/leui/util/LeLinkify;->replaceGroup(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
