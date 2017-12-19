.class Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "LeQuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeQuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeQuickContactBadge;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/LeQuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeQuickContactBadge;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    .line 368
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 367
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 373
    const/4 v7, 0x0

    .line 374
    .local v7, "lookupUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 375
    .local v2, "createUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 376
    .local v8, "trigger":Z
    if-eqz p2, :cond_3

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 378
    .local v3, "extras":Landroid/os/Bundle;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 409
    .end local v2    # "createUri":Landroid/net/Uri;
    .end local v7    # "lookupUri":Landroid/net/Uri;
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    .line 410
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_1
    iget-object v9, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    invoke-static {v9, v7}, Lcom/letv/leui/widget/LeQuickContactBadge;->-set0(Lcom/letv/leui/widget/LeQuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 415
    iget-object v9, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    invoke-static {v9}, Lcom/letv/leui/widget/LeQuickContactBadge;->-wrap0(Lcom/letv/leui/widget/LeQuickContactBadge;)V

    .line 417
    if-eqz v8, :cond_6

    if-eqz v7, :cond_6

    .line 423
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.VIEW"

    iget-object v10, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    invoke-static {v10}, Lcom/letv/leui/widget/LeQuickContactBadge;->-get0(Lcom/letv/leui/widget/LeQuickContactBadge;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 424
    .local v4, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeQuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v9

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_5

    .line 425
    const/high16 v5, 0x80000

    .line 427
    .local v5, "intentFlags":I
    :goto_2
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 428
    iget-object v9, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeQuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 372
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "intentFlags":I
    :cond_2
    :goto_3
    return-void

    .line 376
    .end local v3    # "extras":Landroid/os/Bundle;
    .restart local v2    # "createUri":Landroid/net/Uri;
    .restart local v7    # "lookupUri":Landroid/net/Uri;
    :cond_3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .restart local v3    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 380
    :pswitch_0
    const/4 v8, 0x1

    .line 381
    :try_start_0
    const-string/jumbo v9, "tel"

    const-string/jumbo v10, "uri_content"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 385
    .end local v2    # "createUri":Landroid/net/Uri;
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 386
    const/4 v9, 0x0

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 387
    .local v0, "contactId":J
    const/4 v9, 0x1

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .local v7, "lookupUri":Landroid/net/Uri;
    goto :goto_1

    .line 394
    .end local v0    # "contactId":J
    .end local v6    # "lookupKey":Ljava/lang/String;
    .restart local v2    # "createUri":Landroid/net/Uri;
    .local v7, "lookupUri":Landroid/net/Uri;
    :pswitch_2
    const/4 v8, 0x1

    .line 395
    const-string/jumbo v9, "mailto"

    .line 396
    const-string/jumbo v10, "uri_content"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 395
    invoke-static {v9, v10, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 400
    .end local v2    # "createUri":Landroid/net/Uri;
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 401
    const/4 v9, 0x0

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 402
    .restart local v0    # "contactId":J
    const/4 v9, 0x1

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 403
    .restart local v6    # "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .local v7, "lookupUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 408
    .end local v0    # "contactId":J
    .end local v6    # "lookupKey":Ljava/lang/String;
    .local v7, "lookupUri":Landroid/net/Uri;
    :catchall_0
    move-exception v9

    .line 409
    if-eqz p3, :cond_4

    .line 410
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_4
    throw v9

    .line 426
    .end local v7    # "lookupUri":Landroid/net/Uri;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_5
    const v5, 0x10008000

    .restart local v5    # "intentFlags":I
    goto :goto_2

    .line 429
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "intentFlags":I
    :cond_6
    if-eqz v2, :cond_2

    .line 431
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v4, v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 432
    .restart local v4    # "intent":Landroid/content/Intent;
    if-eqz v3, :cond_7

    .line 433
    const-string/jumbo v9, "uri_content"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 436
    :cond_7
    iget-object v9, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeQuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v9

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_8

    .line 437
    const/high16 v5, 0x80000

    .line 439
    .restart local v5    # "intentFlags":I
    :goto_4
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 440
    iget-object v9, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeQuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 438
    .end local v5    # "intentFlags":I
    :cond_8
    const v5, 0x10008000

    .restart local v5    # "intentFlags":I
    goto :goto_4

    .line 378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
