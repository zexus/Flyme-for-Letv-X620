.class public final enum Lcom/letv/leui/widget/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/widget/LockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/widget/LockPatternView$DisplayMode;

.field public static final enum Animate:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

.field public static final enum Correct:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

.field public static final enum Wrong:Lcom/letv/leui/widget/LockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    new-instance v0, Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    const-string/jumbo v1, "Correct"

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    .line 177
    sput-object v0, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->Correct:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    .line 179
    new-instance v0, Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    const-string/jumbo v1, "Animate"

    invoke-direct {v0, v1, v3}, Lcom/letv/leui/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    .line 182
    sput-object v0, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->Animate:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    .line 184
    new-instance v0, Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    const-string/jumbo v1, "Wrong"

    invoke-direct {v0, v1, v4}, Lcom/letv/leui/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    .line 187
    sput-object v0, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->Wrong:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    .line 172
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->Correct:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->Animate:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->Wrong:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->$VALUES:[Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/widget/LockPatternView$DisplayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    const-class v0, Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/widget/LockPatternView$DisplayMode;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->$VALUES:[Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    return-object v0
.end method
