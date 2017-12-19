.class public final enum Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;
.super Ljava/lang/Enum;
.source "AlphabetWavesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/AlphabetWavesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnvLanguage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

.field public static final enum CN:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

.field public static final enum HK:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

.field public static final enum TW:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    const-string/jumbo v1, "TW"

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->TW:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    new-instance v0, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    const-string/jumbo v1, "HK"

    invoke-direct {v0, v1, v3}, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->HK:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    new-instance v0, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    const-string/jumbo v1, "CN"

    invoke-direct {v0, v1, v4}, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->CN:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    sget-object v1, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->TW:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->HK:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->CN:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->$VALUES:[Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->$VALUES:[Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    return-object v0
.end method
