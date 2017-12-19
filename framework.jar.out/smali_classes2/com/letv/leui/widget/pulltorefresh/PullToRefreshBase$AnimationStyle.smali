.class public final enum Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field private static synthetic -com_letv_leui_widget_pulltorefresh_PullToRefreshBase$AnimationStyleSwitchesValues:[I

.field public static final enum FLIP:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field public static final enum ROTATE:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;


# direct methods
.method private static synthetic -getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$AnimationStyleSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$AnimationStyleSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$AnimationStyleSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->values()[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$AnimationStyleSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1283
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const-string/jumbo v1, "ROTATE"

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    .line 1287
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 1289
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const-string/jumbo v1, "FLIP"

    invoke-direct {v0, v1, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    .line 1293
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 1282
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1282
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>.AnimationStyle;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1

    .prologue
    .line 1296
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method

.method static mapIntToValue(I)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1
    .param p0, "modeInt"    # I

    .prologue
    .line 1308
    packed-switch p0, :pswitch_data_0

    .line 1311
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object v0

    .line 1313
    :pswitch_0
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object v0

    .line 1308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1282
    const-class v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1

    .prologue
    .line 1282
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method


# virtual methods
.method createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1318
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>.AnimationStyle;"
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$AnimationStyleSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1321
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-object v0

    .line 1323
    :pswitch_0
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-object v0

    .line 1318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;Z)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;
    .param p5, "isHeader"    # Z

    .prologue
    .line 1330
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>.AnimationStyle;"
    if-nez p5, :cond_0

    .line 1331
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$AnimationStyleSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1334
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-object v0

    .line 1336
    :pswitch_0
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-object v0

    .line 1340
    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$AnimationStyleSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 1343
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createLoadingLayout ---> mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1344
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-object v0

    .line 1346
    :pswitch_1
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-object v0

    .line 1331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1340
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
