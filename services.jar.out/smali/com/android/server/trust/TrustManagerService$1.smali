.class Lcom/android/server/trust/TrustManagerService$1;
.super Landroid/app/trust/ITrustManager$Stub;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V
    .locals 0
    .param p1, "fout"    # Ljava/io/PrintWriter;
    .param p2, "user"    # Landroid/content/pm/UserInfo;
    .param p3, "isCurrent"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/trust/TrustManagerService$1;->dumpUser(Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/trust/TrustManagerService;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/app/trust/ITrustManager$Stub;-><init>()V

    return-void
.end method

.method private dumpBool(Z)Ljava/lang/String;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 832
    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private dumpUser(Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V
    .locals 11
    .param p1, "fout"    # Ljava/io/PrintWriter;
    .param p2, "user"    # Landroid/content/pm/UserInfo;
    .param p3, "isCurrent"    # Z

    .prologue
    .line 784
    const-string/jumbo v0, " User \"%s\" (id=%d, flags=%#x)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 785
    iget-object v2, p2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p2, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 784
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 786
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    const-string/jumbo v0, "(managed profile)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    const-string/jumbo v0, "   disabled because switching to this user is not possible."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 789
    return-void

    .line 791
    :cond_0
    if-eqz p3, :cond_1

    .line 792
    const-string/jumbo v0, " (current)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 794
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ": trusted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/server/trust/TrustManagerService;->-wrap1(Lcom/android/server/trust/TrustManagerService;I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ", trustManaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/server/trust/TrustManagerService;->-wrap0(Lcom/android/server/trust/TrustManagerService;I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ", deviceLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ", hasAuthenticated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/server/trust/TrustManagerService;->-wrap3(Lcom/android/server/trust/TrustManagerService;I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ", hasAuthenticatedSinceBoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 799
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/server/trust/TrustManagerService;->-wrap2(Lcom/android/server/trust/TrustManagerService;I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    .line 798
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 801
    const-string/jumbo v0, "   Enabled agents:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    const/4 v5, 0x0

    .line 803
    .local v5, "duplicateSimpleNames":Z
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 804
    .local v9, "simpleNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get0(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "info$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 805
    .local v6, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v1, :cond_2

    .line 806
    iget-object v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v10

    .line 807
    .local v10, "trusted":Z
    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "     bound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->isBound()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ", connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ", managingTrust="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ", trusted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 813
    if-eqz v10, :cond_3

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "      message=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    :cond_3
    iget-object v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 818
    iget-object v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->getScheduledRestartUptimeMillis()J

    move-result-wide v0

    .line 819
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 818
    sub-long/2addr v0, v2

    .line 817
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustArchive;->formatDuration(J)Ljava/lang/String;

    move-result-object v8

    .line 820
    .local v8, "restartTime":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "      restartScheduledAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    .end local v8    # "restartTime":Ljava/lang/String;
    :cond_4
    iget-object v0, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/trust/TrustArchive;->getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 823
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 826
    .end local v6    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .end local v10    # "trusted":Z
    :cond_5
    const-string/jumbo v0, "   Events:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v4, "    "

    const/16 v2, 0x32

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/trust/TrustArchive;->dump(Ljava/io/PrintWriter;IILjava/lang/String;Z)V

    .line 828
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 783
    return-void
.end method

.method private enforceListenerPermission()V
    .locals 3

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.TRUST_LISTENER"

    .line 756
    const-string/jumbo v2, "register trust listener"

    .line 755
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method private enforceReportPermission()V
    .locals 3

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 751
    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "reporting trust events"

    .line 750
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 761
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.DUMP"

    .line 762
    const-string/jumbo v3, "dumping TrustManagerService"

    .line 761
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    const-string/jumbo v1, "disabled because the system is in safe mode."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    return-void

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-get6(Lcom/android/server/trust/TrustManagerService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 768
    const-string/jumbo v1, "disabled because the third-party apps can\'t run yet."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    return-void

    .line 771
    :cond_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-get9(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 772
    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/trust/TrustManagerService$1$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/trust/TrustManagerService$1$1;-><init>(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 780
    const-wide/16 v4, 0x5dc

    .line 772
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 760
    return-void
.end method

.method public hasUserAuthenticatedSinceBoot(I)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 739
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 740
    const-string/jumbo v3, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const/4 v4, 0x0

    .line 739
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 743
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2, p1}, Lcom/android/server/trust/TrustManagerService;->-wrap2(Lcom/android/server/trust/TrustManagerService;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 745
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 743
    return v2

    .line 744
    :catchall_0
    move-exception v2

    .line 745
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 744
    throw v2
.end method

.method public isDeviceLocked(I)Z
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingUid()I

    move-result v1

    .line 717
    const-string/jumbo v5, "isDeviceLocked"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    .line 716
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 718
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->-wrap4(Lcom/android/server/trust/TrustManagerService;I)I

    move-result p1

    .line 720
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceSecure(I)Z
    .locals 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->getCallingUid()I

    move-result v1

    .line 726
    const-string/jumbo v5, "isDeviceSecure"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    .line 725
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 727
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->-wrap4(Lcom/android/server/trust/TrustManagerService;I)I

    move-result p1

    .line 729
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 731
    .local v8, "token":J
    :try_start_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 733
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    return v0

    .line 732
    :catchall_0
    move-exception v0

    .line 733
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 732
    throw v0
.end method

.method public registerTrustListener(Landroid/app/trust/ITrustListener;)V
    .locals 2
    .param p1, "trustListener"    # Landroid/app/trust/ITrustListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceListenerPermission()V

    .line 705
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 703
    return-void
.end method

.method public reportEnabledTrustAgentsChanged(I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 677
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 679
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 680
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 676
    return-void
.end method

.method public reportKeyguardShowingChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x6

    .line 696
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 698
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 699
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 695
    return-void
.end method

.method public reportRequireCredentialEntry(I)V
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 685
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 686
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-ltz p1, :cond_1

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 684
    return-void

    .line 689
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 690
    const-string/jumbo v1, "userId must be an explicit user id or USER_ALL"

    .line 689
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportUnlockAttempt(ZI)V
    .locals 3
    .param p1, "authenticated"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 671
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 669
    return-void

    .line 671
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterTrustListener(Landroid/app/trust/ITrustListener;)V
    .locals 2
    .param p1, "trustListener"    # Landroid/app/trust/ITrustListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceListenerPermission()V

    .line 711
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 709
    return-void
.end method
