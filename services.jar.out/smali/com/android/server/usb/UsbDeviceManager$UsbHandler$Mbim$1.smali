.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 688
    const-string/jumbo v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 690
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.mbim.action.setfunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    const-string/jumbo v1, "com.mbim.enable"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 692
    .local v0, "enable_mbim":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 693
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v2, "mbim_dun"

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    .line 686
    .end local v0    # "enable_mbim":I
    :cond_0
    :goto_0
    return-void

    .line 695
    .restart local v0    # "enable_mbim":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;->closeMbimFunction()V

    goto :goto_0
.end method
