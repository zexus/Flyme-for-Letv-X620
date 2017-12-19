.class Lcom/android/server/policy/PhoneWindowManager$PolicyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PolicyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 7828
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyPhoneStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 7831
    packed-switch p1, :pswitch_data_0

    .line 7842
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 7830
    return-void

    .line 7836
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyPhoneStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;->READY:Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPhoneState:Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

    goto :goto_0

    .line 7839
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyPhoneStateListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;->READY:Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPhoneState:Lcom/android/server/policy/PhoneWindowManager$StateOfPowerAboutPhone;

    goto :goto_0

    .line 7831
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
