.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Mbim"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim$1;
    }
.end annotation


# static fields
.field private static final ACTION_USB_MBIM_SETFUNCTION:Ljava/lang/String; = "com.mbim.action.setfunction"

.field private static final USB_FUNCTION_MBIM:Ljava/lang/String; = "mbim_dun"

.field private static final VALUE_ENABLE_MBIM:Ljava/lang/String; = "com.mbim.enable"


# instance fields
.field private final mMbimReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 3
    .param p1, "this$1"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    new-instance v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;->mMbimReceiver:Landroid/content/BroadcastReceiver;

    .line 704
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.mbim.action.setfunction"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 705
    .local v0, "intent":Landroid/content/IntentFilter;
    iget-object v1, p1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get9(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;->mMbimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 702
    return-void
.end method


# virtual methods
.method closeMbimFunction()V
    .locals 3

    .prologue
    .line 708
    const-string/jumbo v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "closeMbimFunction() CurrentFunctions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 709
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-get0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v2

    .line 708
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 709
    const-string/jumbo v2, ",DefaultFunctions="

    .line 708
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 709
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-wrap0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v2

    .line 708
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-get0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mbim_dun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-wrap1(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Ljava/lang/String;Z)V

    .line 707
    :cond_0
    return-void
.end method
