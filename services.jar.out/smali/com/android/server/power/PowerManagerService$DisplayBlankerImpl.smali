.class final Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayBlankerImpl"
.end annotation


# instance fields
.field private final mBlankUnblankAllDisplaysRunnable:Ljava/lang/Runnable;

.field private mBlanked:Z

.field private mDelayTimePrintWakeLock:J

.field private final mPrintWakeLockDuringScreenOffRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 2

    .prologue
    .line 3289
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3360
    new-instance v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;-><init>(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlankUnblankAllDisplaysRunnable:Ljava/lang/Runnable;

    .line 3403
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J

    .line 3404
    new-instance v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;-><init>(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mPrintWakeLockDuringScreenOffRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 3289
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    .prologue
    .line 3289
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    .prologue
    .line 3289
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
    .param p1, "x1"    # J

    .prologue
    .line 3289
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J

    return-wide p1
.end method

.method static synthetic access$4014(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;J)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
    .param p1, "x1"    # J

    .prologue
    .line 3289
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J

    return-wide v0
.end method

.method static synthetic access$4100(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    .prologue
    .line 3289
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mPrintWakeLockDuringScreenOffRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private sendUpdateBlankUnblankDisplayLocked()V
    .locals 2

    .prologue
    .line 3354
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPendingUpdateBlankUnblankDisplay:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3355
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mPendingUpdateBlankUnblankDisplay:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$3302(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3356
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandlerBlankUnblankDisplay:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlankUnblankAllDisplaysRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3358
    :cond_0
    return-void
.end method


# virtual methods
.method public blankAllDisplays()V
    .locals 2

    .prologue
    .line 3296
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLockBlankUnblankDisplay:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3297
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 3298
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPendingUpdateBlankUnblankDisplay:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3299
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->sendUpdateBlankUnblankDisplayLocked()V

    .line 3301
    :cond_0
    monitor-exit v1

    .line 3312
    return-void

    .line 3301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLockBlankUnblankDisplay:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3341
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blanked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unblankAllDisplays()V
    .locals 2

    .prologue
    .line 3318
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLockBlankUnblankDisplay:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3319
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 3320
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPendingUpdateBlankUnblankDisplay:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3321
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->sendUpdateBlankUnblankDisplayLocked()V

    .line 3323
    :cond_0
    monitor-exit v1

    .line 3334
    return-void

    .line 3323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
