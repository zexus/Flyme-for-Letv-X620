.class public final enum Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;
.super Ljava/lang/Enum;
.source "LeTopSlideToastHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeTopSlideToastHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentTextAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

.field public static final enum CENTER:Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

.field public static final enum LEFT:Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-instance v0, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;->LEFT:Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    new-instance v0, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    const-string/jumbo v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;->CENTER:Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    sget-object v1, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;->LEFT:Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;->CENTER:Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    aput-object v1, v0, v3

    sput-object v0, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;->$VALUES:[Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    const-class v0, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;->$VALUES:[Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    return-object v0
.end method
