.class final enum Lcom/letv/leui/widget/LeBlankPage$Mode;
.super Ljava/lang/Enum;
.source "LeBlankPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeBlankPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/widget/LeBlankPage$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/widget/LeBlankPage$Mode;

.field public static final enum DEFAULT:Lcom/letv/leui/widget/LeBlankPage$Mode;

.field public static final enum PRI_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

.field public static final enum PRI_BTN_WITH_DES:Lcom/letv/leui/widget/LeBlankPage$Mode;

.field public static final enum SEC_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

.field public static final enum THIR_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    new-instance v0, Lcom/letv/leui/widget/LeBlankPage$Mode;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/LeBlankPage$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->DEFAULT:Lcom/letv/leui/widget/LeBlankPage$Mode;

    new-instance v0, Lcom/letv/leui/widget/LeBlankPage$Mode;

    const-string/jumbo v1, "PRI_BTN_WITH_DES"

    invoke-direct {v0, v1, v3}, Lcom/letv/leui/widget/LeBlankPage$Mode;-><init>(Ljava/lang/String;I)V

    .line 166
    sput-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->PRI_BTN_WITH_DES:Lcom/letv/leui/widget/LeBlankPage$Mode;

    new-instance v0, Lcom/letv/leui/widget/LeBlankPage$Mode;

    const-string/jumbo v1, "PRI_BTN"

    invoke-direct {v0, v1, v4}, Lcom/letv/leui/widget/LeBlankPage$Mode;-><init>(Ljava/lang/String;I)V

    .line 167
    sput-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->PRI_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

    new-instance v0, Lcom/letv/leui/widget/LeBlankPage$Mode;

    const-string/jumbo v1, "SEC_BTN"

    invoke-direct {v0, v1, v5}, Lcom/letv/leui/widget/LeBlankPage$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->SEC_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

    new-instance v0, Lcom/letv/leui/widget/LeBlankPage$Mode;

    const-string/jumbo v1, "THIR_BTN"

    invoke-direct {v0, v1, v6}, Lcom/letv/leui/widget/LeBlankPage$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->THIR_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

    .line 164
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/letv/leui/widget/LeBlankPage$Mode;

    sget-object v1, Lcom/letv/leui/widget/LeBlankPage$Mode;->DEFAULT:Lcom/letv/leui/widget/LeBlankPage$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/widget/LeBlankPage$Mode;->PRI_BTN_WITH_DES:Lcom/letv/leui/widget/LeBlankPage$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/leui/widget/LeBlankPage$Mode;->PRI_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/leui/widget/LeBlankPage$Mode;->SEC_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/leui/widget/LeBlankPage$Mode;->THIR_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->$VALUES:[Lcom/letv/leui/widget/LeBlankPage$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/widget/LeBlankPage$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 164
    const-class v0, Lcom/letv/leui/widget/LeBlankPage$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeBlankPage$Mode;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/widget/LeBlankPage$Mode;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->$VALUES:[Lcom/letv/leui/widget/LeBlankPage$Mode;

    return-object v0
.end method
