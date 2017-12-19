.class public Lcom/letv/leui/util/LeResolveUtils$UV;
.super Ljava/lang/Object;
.source "LeResolveUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/LeResolveUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UV"
.end annotation


# static fields
.field private static final ACTION_CANCEL:Ljava/lang/String; = "cancel"

.field private static final ACTION_CLICK:Lcom/letv/tracker/enums/EventType;

.field private static final KEY_EVENT_FROM_PACKAGENAME:Lcom/letv/tracker/enums/Key;

.field private static final KEY_EVENT_INTENT_CONTENT:Lcom/letv/tracker/enums/Key;

.field private static final KEY_EVENT_INTENT_PACKAGENAME:Lcom/letv/tracker/enums/Key;

.field private static final KEY_EVENT_INTENT_TYPE:Lcom/letv/tracker/enums/Key;

.field private static final KEY_EVENT_POPUP:Lcom/letv/tracker/enums/EventType;

.field private static final KEY_INTENT_CONTENT:Ljava/lang/String; = "content"

.field private static final KEY_INTENT_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_START_FROM:Ljava/lang/String; = "from"

.field private static final MORE_BTN_REPORT_NAME:Ljava/lang/String; = "more"

.field private static final REPORT_TYPE_CANCEL:Ljava/lang/String; = "cancel_share"

.field private static final REPORT_TYPE_CLICK:I = 0x1

.field private static final REPORT_TYPE_CLICK_more:I = 0x3

.field private static final SHARE:Ljava/lang/String; = "leShareWidget"

.field private static final SHARE_1:Ljava/lang/String; = "Share.1"

.field private static final SHARE_2:Ljava/lang/String; = "Share.2"

.field private static final SHARE_3:Ljava/lang/String; = "Share.3"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 546
    sget-object v0, Lcom/letv/tracker/enums/EventType;->Click:Lcom/letv/tracker/enums/EventType;

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils$UV;->ACTION_CLICK:Lcom/letv/tracker/enums/EventType;

    .line 558
    sget-object v0, Lcom/letv/tracker/enums/Key;->From:Lcom/letv/tracker/enums/Key;

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils$UV;->KEY_EVENT_FROM_PACKAGENAME:Lcom/letv/tracker/enums/Key;

    .line 559
    sget-object v0, Lcom/letv/tracker/enums/Key;->Class:Lcom/letv/tracker/enums/Key;

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils$UV;->KEY_EVENT_INTENT_PACKAGENAME:Lcom/letv/tracker/enums/Key;

    .line 560
    sget-object v0, Lcom/letv/tracker/enums/Key;->Type:Lcom/letv/tracker/enums/Key;

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils$UV;->KEY_EVENT_INTENT_TYPE:Lcom/letv/tracker/enums/Key;

    .line 561
    sget-object v0, Lcom/letv/tracker/enums/Key;->Content:Lcom/letv/tracker/enums/Key;

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils$UV;->KEY_EVENT_INTENT_CONTENT:Lcom/letv/tracker/enums/Key;

    .line 562
    sget-object v0, Lcom/letv/tracker/enums/EventType;->Popup:Lcom/letv/tracker/enums/EventType;

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils$UV;->KEY_EVENT_POPUP:Lcom/letv/tracker/enums/EventType;

    .line 545
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFromPackageName(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 3
    .param p0, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 604
    const/4 v1, 0x0

    .line 606
    .local v1, "mCallingPackage":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 613
    .end local v1    # "mCallingPackage":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 607
    .restart local v1    # "mCallingPackage":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static reportApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "fromPackageName"    # Ljava/lang/String;
    .param p1, "intentType"    # Ljava/lang/String;
    .param p2, "intentContent"    # Ljava/lang/String;

    .prologue
    .line 567
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v0

    .line 568
    .local v0, "agnes":Lcom/letv/tracker/agnes/Agnes;
    const-string/jumbo v3, "leShareWidget"

    invoke-virtual {v0, v3}, Lcom/letv/tracker/agnes/Agnes;->getApp(Ljava/lang/String;)Lcom/letv/tracker/agnes/App;

    move-result-object v1

    .line 569
    .local v1, "app":Lcom/letv/tracker/agnes/App;
    sget-object v3, Lcom/letv/leui/util/LeResolveUtils$UV;->KEY_EVENT_POPUP:Lcom/letv/tracker/enums/EventType;

    invoke-virtual {v1, v3}, Lcom/letv/tracker/agnes/App;->createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;

    move-result-object v2

    .line 570
    .local v2, "event":Lcom/letv/tracker/agnes/Event;
    sget-object v3, Lcom/letv/leui/util/LeResolveUtils$UV;->KEY_EVENT_FROM_PACKAGENAME:Lcom/letv/tracker/enums/Key;

    invoke-virtual {v2, v3, p0}, Lcom/letv/tracker/agnes/Event;->addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V

    .line 571
    sget-object v3, Lcom/letv/leui/util/LeResolveUtils$UV;->KEY_EVENT_INTENT_TYPE:Lcom/letv/tracker/enums/Key;

    invoke-virtual {v2, v3, p1}, Lcom/letv/tracker/agnes/Event;->addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V

    .line 572
    sget-object v3, Lcom/letv/leui/util/LeResolveUtils$UV;->KEY_EVENT_INTENT_CONTENT:Lcom/letv/tracker/enums/Key;

    invoke-virtual {v2, v3, p2}, Lcom/letv/tracker/agnes/Event;->addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0, v2}, Lcom/letv/tracker/agnes/Agnes;->report(Lcom/letv/tracker/agnes/Event;)V

    .line 574
    invoke-virtual {v0, v1}, Lcom/letv/tracker/agnes/Agnes;->report(Lcom/letv/tracker/agnes/App;)V

    .line 566
    return-void
.end method

.method public static reportBigBata(ZLandroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "isReportApp"    # Z
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "reportType"    # I
    .param p3, "fromPackageName"    # Ljava/lang/String;
    .param p4, "intentClassName"    # Ljava/lang/String;
    .param p5, "mShareDesc"    # Ljava/lang/String;

    .prologue
    .line 618
    if-eqz p5, :cond_0

    :try_start_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_5

    .line 619
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 620
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    instance-of v5, v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 621
    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 622
    .local v4, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 623
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 624
    if-eqz p0, :cond_1

    .line 625
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v6, v5}, Lcom/letv/leui/util/LeResolveUtils$UV;->reportApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3, p4, v6, v5}, Lcom/letv/leui/util/LeResolveUtils$UV;->reportWidget(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 649
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "i":I
    .end local v4    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 616
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 631
    .restart local v1    # "extras":Landroid/os/Bundle;
    .restart local v4    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_3
    :try_start_1
    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 632
    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "uri":Ljava/lang/String;
    if-eqz p0, :cond_4

    .line 634
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5, v3}, Lcom/letv/leui/util/LeResolveUtils$UV;->reportApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 636
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3, p4, v5, v3}, Lcom/letv/leui/util/LeResolveUtils$UV;->reportWidget(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 643
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v3    # "uri":Ljava/lang/String;
    .end local v4    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_5
    if-eqz p0, :cond_6

    .line 644
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5, p5}, Lcom/letv/leui/util/LeResolveUtils$UV;->reportApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 646
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3, p4, v5, p5}, Lcom/letv/leui/util/LeResolveUtils$UV;->reportWidget(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static reportWidget(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "reportType"    # I
    .param p1, "fromPackageName"    # Ljava/lang/String;
    .param p2, "intentClassName"    # Ljava/lang/String;
    .param p3, "intentType"    # Ljava/lang/String;
    .param p4, "intentContent"    # Ljava/lang/String;

    .prologue
    .line 579
    :try_start_0
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v4

    const-string/jumbo v5, "leShareWidget"

    invoke-virtual {v4, v5}, Lcom/letv/tracker/agnes/Agnes;->getApp(Ljava/lang/String;)Lcom/letv/tracker/agnes/App;

    move-result-object v2

    .line 580
    .local v2, "mApp":Lcom/letv/tracker/agnes/App;
    const/4 v1, 0x0

    .line 581
    .local v1, "event":Lcom/letv/tracker/agnes/Event;
    const/4 v3, 0x0

    .line 582
    .local v3, "widget":Lcom/letv/tracker/agnes/Widget;
    const/4 v4, 0x1

    if-ne p0, v4, :cond_0

    .line 583
    const-string/jumbo v4, "Share.1"

    invoke-virtual {v2, v4}, Lcom/letv/tracker/agnes/App;->createWidget(Ljava/lang/String;)Lcom/letv/tracker/agnes/Widget;

    move-result-object v3

    .line 584
    .local v3, "widget":Lcom/letv/tracker/agnes/Widget;
    sget-object v4, Lcom/letv/leui/util/LeResolveUtils$UV;->ACTION_CLICK:Lcom/letv/tracker/enums/EventType;

    invoke-virtual {v3, v4}, Lcom/letv/tracker/agnes/Widget;->createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;

    move-result-object v1

    .line 585
    .local v1, "event":Lcom/letv/tracker/agnes/Event;
    sget-object v4, Lcom/letv/leui/util/LeResolveUtils$UV;->KEY_EVENT_INTENT_PACKAGENAME:Lcom/letv/tracker/enums/Key;

    invoke-virtual {v1, v4, p2}, Lcom/letv/tracker/agnes/Event;->addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V

    .line 594
    :goto_0
    sget-object v4, Lcom/letv/leui/util/LeResolveUtils$UV;->KEY_EVENT_FROM_PACKAGENAME:Lcom/letv/tracker/enums/Key;

    invoke-virtual {v1, v4, p1}, Lcom/letv/tracker/agnes/Event;->addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V

    .line 595
    sget-object v4, Lcom/letv/leui/util/LeResolveUtils$UV;->KEY_EVENT_INTENT_TYPE:Lcom/letv/tracker/enums/Key;

    invoke-virtual {v1, v4, p3}, Lcom/letv/tracker/agnes/Event;->addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V

    .line 596
    sget-object v4, Lcom/letv/leui/util/LeResolveUtils$UV;->KEY_EVENT_INTENT_CONTENT:Lcom/letv/tracker/enums/Key;

    invoke-virtual {v1, v4, p4}, Lcom/letv/tracker/agnes/Event;->addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V

    .line 597
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/letv/tracker/agnes/Agnes;->report(Lcom/letv/tracker/agnes/Event;)V

    .line 577
    .end local v1    # "event":Lcom/letv/tracker/agnes/Event;
    .end local v2    # "mApp":Lcom/letv/tracker/agnes/App;
    .end local v3    # "widget":Lcom/letv/tracker/agnes/Widget;
    :goto_1
    return-void

    .line 586
    .local v1, "event":Lcom/letv/tracker/agnes/Event;
    .restart local v2    # "mApp":Lcom/letv/tracker/agnes/App;
    .local v3, "widget":Lcom/letv/tracker/agnes/Widget;
    :cond_0
    const/4 v4, 0x3

    if-ne p0, v4, :cond_1

    .line 587
    const-string/jumbo v4, "Share.3"

    invoke-virtual {v2, v4}, Lcom/letv/tracker/agnes/App;->createWidget(Ljava/lang/String;)Lcom/letv/tracker/agnes/Widget;

    move-result-object v3

    .line 588
    .local v3, "widget":Lcom/letv/tracker/agnes/Widget;
    sget-object v4, Lcom/letv/leui/util/LeResolveUtils$UV;->ACTION_CLICK:Lcom/letv/tracker/enums/EventType;

    invoke-virtual {v3, v4}, Lcom/letv/tracker/agnes/Widget;->createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;

    move-result-object v1

    .line 589
    .local v1, "event":Lcom/letv/tracker/agnes/Event;
    sget-object v4, Lcom/letv/leui/util/LeResolveUtils$UV;->KEY_EVENT_INTENT_PACKAGENAME:Lcom/letv/tracker/enums/Key;

    const-string/jumbo v5, "more"

    invoke-virtual {v1, v4, v5}, Lcom/letv/tracker/agnes/Event;->addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    .end local v1    # "event":Lcom/letv/tracker/agnes/Event;
    .end local v2    # "mApp":Lcom/letv/tracker/agnes/App;
    .end local v3    # "widget":Lcom/letv/tracker/agnes/Widget;
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "LeResolveUtils"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 591
    .end local v0    # "e":Ljava/lang/Exception;
    .local v1, "event":Lcom/letv/tracker/agnes/Event;
    .restart local v2    # "mApp":Lcom/letv/tracker/agnes/App;
    .local v3, "widget":Lcom/letv/tracker/agnes/Widget;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "Share.2"

    invoke-virtual {v2, v4}, Lcom/letv/tracker/agnes/App;->createWidget(Ljava/lang/String;)Lcom/letv/tracker/agnes/Widget;

    move-result-object v3

    .line 592
    .local v3, "widget":Lcom/letv/tracker/agnes/Widget;
    const-string/jumbo v4, "cancel_share"

    invoke-virtual {v3, v4}, Lcom/letv/tracker/agnes/Widget;->createEvent(Ljava/lang/String;)Lcom/letv/tracker/agnes/Event;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .local v1, "event":Lcom/letv/tracker/agnes/Event;
    goto :goto_0
.end method
