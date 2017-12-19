.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryLowChargingARGB:I

.field private final mBatteryMediumARGB:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/BatteryService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 872
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 873
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 875
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 876
    const v1, 0x10e0053

    .line 875
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 878
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 879
    const v1, 0x10e00cf

    .line 878
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowChargingARGB:I

    .line 881
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 882
    const v1, 0x10e0054

    .line 881
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 883
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 884
    const v1, 0x10e0055

    .line 883
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 885
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 886
    const v1, 0x10e0056

    .line 885
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 887
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 888
    const v1, 0x10e0057

    .line 887
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 872
    return-void
.end method

.method private getIpoLedStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 999
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.ipo.ledon"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->-set2(Lcom/android/server/BatteryService;Z)Z

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    const-string/jumbo v0, "0"

    const-string/jumbo v1, "sys.ipo.ledon"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->-set1(Lcom/android/server/BatteryService;Z)Z

    goto :goto_0
.end method

.method private updateLedStatus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1012
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get2(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get8(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get0(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get8(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1014
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->-set3(Lcom/android/server/BatteryService;Z)Z

    .line 1015
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->-set1(Lcom/android/server/BatteryService;Z)Z

    .line 1016
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->-set2(Lcom/android/server/BatteryService;Z)Z

    .line 1010
    :cond_2
    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 8

    .prologue
    const/16 v7, 0x5a

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x5

    .line 898
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get12(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 899
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v0, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 900
    .local v0, "level":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v1, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 902
    .local v1, "status":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get8(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 905
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->getIpoLedStatus()V

    .line 907
    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get14(Lcom/android/server/BatteryService;)I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 908
    if-ne v1, v5, :cond_1

    .line 909
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 911
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowChargingARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    .line 949
    :goto_0
    return-void

    .line 912
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get11(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 913
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v6}, Lcom/android/server/BatteryService;->-set0(Lcom/android/server/BatteryService;Z)Z

    .line 914
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 916
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 917
    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 916
    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_0

    .line 919
    :cond_2
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v6}, Lcom/android/server/BatteryService;->-set0(Lcom/android/server/BatteryService;Z)Z

    .line 920
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 922
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 924
    :cond_3
    if-eq v1, v5, :cond_4

    .line 925
    if-ne v1, v3, :cond_7

    .line 926
    :cond_4
    if-eq v1, v3, :cond_5

    const/16 v2, 0x64

    if-lt v0, v2, :cond_6

    .line 927
    :cond_5
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 929
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 932
    :cond_6
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 933
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 936
    :cond_7
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get3(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get8(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 937
    if-eq v1, v3, :cond_8

    const/16 v2, 0x64

    if-lt v0, v2, :cond_a

    .line 938
    :cond_8
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    .line 943
    :goto_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->-set3(Lcom/android/server/BatteryService;Z)Z

    .line 944
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->-set2(Lcom/android/server/BatteryService;Z)Z

    .line 947
    :cond_9
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 941
    :cond_a
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_1

    .line 953
    .end local v0    # "level":I
    .end local v1    # "status":I
    :cond_b
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v0, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 954
    .restart local v0    # "level":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v1, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 955
    .restart local v1    # "status":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get8(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 958
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->getIpoLedStatus()V

    .line 960
    :cond_c
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get14(Lcom/android/server/BatteryService;)I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 961
    if-ne v1, v5, :cond_d

    .line 962
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 964
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    .line 894
    :goto_2
    return-void

    .line 966
    :cond_d
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v6}, Lcom/android/server/BatteryService;->-set0(Lcom/android/server/BatteryService;Z)Z

    .line 967
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 969
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 970
    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 969
    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_2

    .line 972
    :cond_e
    if-eq v1, v5, :cond_f

    .line 973
    if-ne v1, v3, :cond_12

    .line 974
    :cond_f
    if-eq v1, v3, :cond_10

    if-lt v0, v7, :cond_11

    .line 975
    :cond_10
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 977
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_2

    .line 979
    :cond_11
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 981
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_2

    .line 984
    :cond_12
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get3(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get8(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 985
    if-eq v1, v3, :cond_13

    if-lt v0, v7, :cond_15

    .line 986
    :cond_13
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    .line 991
    :goto_3
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->-set3(Lcom/android/server/BatteryService;Z)Z

    .line 992
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->-set2(Lcom/android/server/BatteryService;Z)Z

    .line 995
    :cond_14
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_2

    .line 989
    :cond_15
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_3
.end method
