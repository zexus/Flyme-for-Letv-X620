.class public final enum Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;
.super Ljava/lang/Enum;
.source "LeRotateLoadingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

.field public static final enum COLOR:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

.field public static final enum WHITE:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    const-string/jumbo v1, "WHITE"

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->WHITE:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    const-string/jumbo v1, "COLOR"

    invoke-direct {v0, v1, v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->COLOR:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->WHITE:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->COLOR:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->$VALUES:[Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->$VALUES:[Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    return-object v0
.end method
