.class Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)V
    .locals 0

    .prologue
    .line 3404
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3407
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3408
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandlerBlankUnblankDisplay:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3410
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    # getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$3500(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3411
    const-string v0, "PowerManagerService"

    const-string v2, "mPrintWakeLockDuringScreenOffRunnable : screen is on, just return"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    monitor-exit v1

    .line 3421
    :goto_0
    return-void

    .line 3415
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->printWakeLockLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;)V

    .line 3417
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    const-wide/16 v2, 0x1388

    # += operator for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J
    invoke-static {v0, v2, v3}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$4014(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;J)J

    .line 3418
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    const-wide/32 v2, 0x1b7740

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    # getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$4000(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    # setter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J
    invoke-static {v0, v2, v3}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$4002(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;J)J

    .line 3419
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandlerBlankUnblankDisplay:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    # getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$4000(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3420
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
