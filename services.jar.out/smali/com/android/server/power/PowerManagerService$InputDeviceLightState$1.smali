.class Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$InputDeviceLightState;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/LightsService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

.field final synthetic val$this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Landroid/os/Looper;Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 3456
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    iput-object p3, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;->val$this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3458
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3463
    :goto_0
    return-void

    .line 3460
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->handleInputDeviceLightTimeout()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$4400(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V

    goto :goto_0

    .line 3458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
