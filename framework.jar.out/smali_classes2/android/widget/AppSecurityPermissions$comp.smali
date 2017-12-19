.class Landroid/widget/AppSecurityPermissions$comp;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "comp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/app/AppOpsUtils$AppOpsItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/AppOpsUtils$AppOpsItem;Landroid/app/AppOpsUtils$AppOpsItem;)I
    .locals 2
    .param p1, "p1"    # Landroid/app/AppOpsUtils$AppOpsItem;
    .param p2, "p2"    # Landroid/app/AppOpsUtils$AppOpsItem;

    .prologue
    .line 623
    iget v0, p1, Landroid/app/AppOpsUtils$AppOpsItem;->group_type:I

    iget v1, p2, Landroid/app/AppOpsUtils$AppOpsItem;->group_type:I

    if-eq v0, v1, :cond_0

    .line 624
    iget v0, p1, Landroid/app/AppOpsUtils$AppOpsItem;->group_type:I

    iget v1, p2, Landroid/app/AppOpsUtils$AppOpsItem;->group_type:I

    sub-int/2addr v0, v1

    return v0

    .line 626
    :cond_0
    iget v0, p1, Landroid/app/AppOpsUtils$AppOpsItem;->order:I

    iget v1, p2, Landroid/app/AppOpsUtils$AppOpsItem;->order:I

    if-eq v0, v1, :cond_1

    .line 627
    iget v0, p1, Landroid/app/AppOpsUtils$AppOpsItem;->order:I

    iget v1, p2, Landroid/app/AppOpsUtils$AppOpsItem;->order:I

    sub-int/2addr v0, v1

    return v0

    .line 629
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .prologue
    .line 622
    check-cast p1, Landroid/app/AppOpsUtils$AppOpsItem;

    .end local p1    # "p1":Ljava/lang/Object;
    check-cast p2, Landroid/app/AppOpsUtils$AppOpsItem;

    .end local p2    # "p2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/widget/AppSecurityPermissions$comp;->compare(Landroid/app/AppOpsUtils$AppOpsItem;Landroid/app/AppOpsUtils$AppOpsItem;)I

    move-result v0

    return v0
.end method
