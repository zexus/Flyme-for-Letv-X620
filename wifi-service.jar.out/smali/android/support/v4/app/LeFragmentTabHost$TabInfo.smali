.class Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
.super Ljava/lang/Object;
.source "LeFragmentTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LeFragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabInfo"
.end annotation


# instance fields
.field private args:Landroid/os/Bundle;

.field private clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private fragment:Landroid/support/v4/app/Fragment;

.field private tag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic -get2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic -get3(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic -set1(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic -set2(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "_tag"    # Ljava/lang/String;
    .param p3, "_args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    .line 61
    iput-object p3, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    .line 58
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    return-object v0
.end method
