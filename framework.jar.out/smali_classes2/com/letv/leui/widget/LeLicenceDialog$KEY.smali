.class public final enum Lcom/letv/leui/widget/LeLicenceDialog$KEY;
.super Ljava/lang/Enum;
.source "LeLicenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeLicenceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KEY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/widget/LeLicenceDialog$KEY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/widget/LeLicenceDialog$KEY;

.field public static final enum BTN_AGREE:Lcom/letv/leui/widget/LeLicenceDialog$KEY;

.field public static final enum BTN_CANCEL:Lcom/letv/leui/widget/LeLicenceDialog$KEY;

.field public static final enum OUTSIDE:Lcom/letv/leui/widget/LeLicenceDialog$KEY;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/letv/leui/widget/LeLicenceDialog$KEY;

    const-string/jumbo v1, "BTN_AGREE"

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/LeLicenceDialog$KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/LeLicenceDialog$KEY;->BTN_AGREE:Lcom/letv/leui/widget/LeLicenceDialog$KEY;

    new-instance v0, Lcom/letv/leui/widget/LeLicenceDialog$KEY;

    const-string/jumbo v1, "BTN_CANCEL"

    invoke-direct {v0, v1, v3}, Lcom/letv/leui/widget/LeLicenceDialog$KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/LeLicenceDialog$KEY;->BTN_CANCEL:Lcom/letv/leui/widget/LeLicenceDialog$KEY;

    new-instance v0, Lcom/letv/leui/widget/LeLicenceDialog$KEY;

    const-string/jumbo v1, "OUTSIDE"

    invoke-direct {v0, v1, v4}, Lcom/letv/leui/widget/LeLicenceDialog$KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/LeLicenceDialog$KEY;->OUTSIDE:Lcom/letv/leui/widget/LeLicenceDialog$KEY;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/letv/leui/widget/LeLicenceDialog$KEY;

    sget-object v1, Lcom/letv/leui/widget/LeLicenceDialog$KEY;->BTN_AGREE:Lcom/letv/leui/widget/LeLicenceDialog$KEY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/widget/LeLicenceDialog$KEY;->BTN_CANCEL:Lcom/letv/leui/widget/LeLicenceDialog$KEY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/leui/widget/LeLicenceDialog$KEY;->OUTSIDE:Lcom/letv/leui/widget/LeLicenceDialog$KEY;

    aput-object v1, v0, v4

    sput-object v0, Lcom/letv/leui/widget/LeLicenceDialog$KEY;->$VALUES:[Lcom/letv/leui/widget/LeLicenceDialog$KEY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/widget/LeLicenceDialog$KEY;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/letv/leui/widget/LeLicenceDialog$KEY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeLicenceDialog$KEY;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/widget/LeLicenceDialog$KEY;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/letv/leui/widget/LeLicenceDialog$KEY;->$VALUES:[Lcom/letv/leui/widget/LeLicenceDialog$KEY;

    return-object v0
.end method
