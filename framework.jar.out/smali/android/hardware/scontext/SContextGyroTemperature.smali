.class public Landroid/hardware/scontext/SContextGyroTemperature;
.super Ljava/lang/Object;
.source "SContextGyroTemperature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextGyroTemperature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGyroTemperature:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Landroid/hardware/scontext/SContextGyroTemperature$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextGyroTemperature$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextGyroTemperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextGyroTemperature;->mGyroTemperature:D

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextGyroTemperature;->readFromParcel(Landroid/os/Parcel;)V

    .line 39
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextGyroTemperature;->mGyroTemperature:D

    .line 86
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getGyroTemperature()D
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Landroid/hardware/scontext/SContextGyroTemperature;->mGyroTemperature:D

    return-wide v0
.end method

.method setGyroTemperature(D)V
    .locals 0
    .param p1, "gyroTemperature"    # D

    .prologue
    .line 56
    iput-wide p1, p0, Landroid/hardware/scontext/SContextGyroTemperature;->mGyroTemperature:D

    .line 57
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 76
    iget-wide v0, p0, Landroid/hardware/scontext/SContextGyroTemperature;->mGyroTemperature:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 77
    return-void
.end method
