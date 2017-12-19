.class Lcom/android/server/usb/UsbDeviceManager$AcmSettingsObserver;
.super Landroid/database/ContentObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcmSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$AcmSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 184
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$AcmSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get8(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 190
    const-string/jumbo v2, "acm_enabled"

    const/4 v3, 0x0

    .line 189
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 191
    .local v0, "portNum":I
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$AcmSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get11(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 188
    return-void
.end method
