.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;
.super Ljava/lang/Object;
.source "PtrCLog.java"


# static fields
.field public static final LEVEL_DEBUG:I = 0x1

.field public static final LEVEL_ERROR:I = 0x4

.field public static final LEVEL_FATAL:I = 0x5

.field public static final LEVEL_INFO:I = 0x2

.field public static final LEVEL_VERBOSE:I = 0x0

.field public static final LEVEL_WARNING:I = 0x3

.field private static sLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 81
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 95
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 99
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 101
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 212
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 243
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 244
    return-void

    .line 246
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 226
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 230
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 232
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 256
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 287
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 288
    return-void

    .line 290
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    return-void
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 270
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 271
    return-void

    .line 273
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 274
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 276
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 125
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 155
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 139
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 143
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 145
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 27
    sput p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    .line 26
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 37
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    if-lez v0, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    if-lez v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 65
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    if-lez v0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 69
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 71
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 168
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 199
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 200
    return-void

    .line 202
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 182
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->sLevel:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 186
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 188
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method
