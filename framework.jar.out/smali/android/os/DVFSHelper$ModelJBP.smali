.class Landroid/os/DVFSHelper$ModelJBP;
.super Landroid/os/DVFSHelper$Model;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelJBP"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 3

    .prologue
    const v2, 0x16e360

    const/4 v1, -0x1

    .line 820
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelJBP;->this$0:Landroid/os/DVFSHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/DVFSHelper$Model;-><init>(Landroid/os/DVFSHelper;Landroid/os/DVFSHelper$1;)V

    .line 821
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 822
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_ARM_FREQ:I

    .line 823
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 824
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_GPU_FREQ:I

    .line 825
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->GROUP_PLAY_ARM_FREQ:I

    .line 826
    const v0, 0xc3500

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->LIST_SCROLL_ARM_FREQ:I

    .line 827
    const v0, 0x118c30

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_ARM_FREQ:I

    .line 828
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_GPU_FREQ:I

    .line 829
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_CPU_CORE:I

    .line 830
    return-void
.end method
