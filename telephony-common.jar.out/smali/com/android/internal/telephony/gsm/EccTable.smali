.class public final Lcom/android/internal/telephony/gsm/EccTable;
.super Ljava/lang/Object;
.source "EccTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    }
.end annotation


# static fields
.field static final FILE_ECC_LIST:Ljava/lang/String; = "/data/csc/ecclists.dat"

.field private static final LOCAL_DEBUG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static table:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/EccTable$EccEntry;",
            ">;"
        }
    .end annotation
.end field

.field static updated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/EccTable;->updated:Z

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    .line 636
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, ""

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "450"

    const-string v3, "112,911,119"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "234"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "235"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "272"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "204"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "724"

    const-string v3, "112,911,190"

    const-string v4, "112,911,999,000,08,110,118,119,190"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "33402"

    const-string v3, "112,911,060"

    const-string v4, "112,911,999,000,08,110,118,119,060"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "334020"

    const-string v3, "112,911,060"

    const-string v4, "112,911,999,000,08,110,118,119,060"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "33403"

    const-string v3, "112,911,066"

    const-string v4, "112,911,999,000,08,110,118,119,066"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "334050"

    const-string v3, "112,911,066"

    const-string v4, "112,911,999,000,08,110,118,119,066"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "33405"

    const-string v3, "112,911,066"

    const-string v4, "112,911,999,000,08,110,118,119,066"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "748"

    const-string v3, "112,911,104,109"

    const-string v4, "112,911,999,000,08,110,118,119,104,109"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "732101"

    const-string v3, "112,911"

    const-string v4, "112,911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "732123"

    const-string v3, "112,123"

    const-string v4, "112,123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "73212"

    const-string v3, "112,123"

    const-string v4, "112,123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "732103"

    const-string v3, "112,123"

    const-string v4, "112,123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "732111"

    const-string v3, "112,123"

    const-string v4, "112,123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "730"

    const-string v3, "112,911,133"

    const-string v4, "112,911,999,000,08,110,118,119,133"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "736"

    const-string v3, "112,911,110"

    const-string v4, "112,911,999,000,08,110,118,119,110"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "71606"

    const-string v3, "112,911,105"

    const-string v4, "112,911,999,000,08,110,118,119,105"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "73406"

    const-string v3, "112,911,*1,*171,171"

    const-string v4, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "73401"

    const-string v3, "112,911,171"

    const-string v4, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "73402"

    const-string v3, "112,911,171"

    const-string v4, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "73403"

    const-string v3, "112,911,171"

    const-string v4, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "73404"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "70403"

    const-string v3, "112,911,122"

    const-string v4, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "70604"

    const-string v3, "112,911,122"

    const-string v4, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "71030"

    const-string v3, "112,911,122"

    const-string v4, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "710300"

    const-string v3, "112,911,122"

    const-string v4, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "71401"

    const-string v3, "112,911,104"

    const-string v4, "112,911,999,000,08,110,118,119,104"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310026"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310160"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310170"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310200"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310210"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310220"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310230"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310240"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310250"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310260"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310270"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310280"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310290"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310310"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310330"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310490"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310580"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310660"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310800"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310026"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310026"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "454"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "505"

    const-string v3, "112,911,000"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "530"

    const-string v3, "112,911,000,111"

    const-string v4, "112,911,999,000,08,110,118,119,111"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "460"

    const-string v3, "112,911,999,000,08,110,118,119,120,122"

    const-string v4, "112,911,999,000,08,110,118,119,120,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "466"

    const-string v3, "112,911,110,119"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "440"

    const-string v3, "112,911,110,118,119"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "441"

    const-string v3, "112,911,110,118,119"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "424"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "430"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "431"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "42501"

    const-string v3, "112,911,100"

    const-string v4, "112,911,100"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "42502"

    const-string v3, "112,911"

    const-string v4, "112,911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "42503"

    const-string v3, "112,911,100"

    const-string v4, "112,911,100"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "42505"

    const-string v3, "112,911"

    const-string v4, "112,911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "620"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1079
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static emergencyNumbersForPLMN(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "plmn"    # Ljava/lang/String;
    .param p1, "withSIM"    # Z

    .prologue
    .line 197
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/EccTable;->entryForPLMN(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    move-result-object v0

    .line 201
    .local v0, "entry":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    if-nez v0, :cond_0

    .line 203
    const-string v1, ""

    .line 213
    :goto_0
    return-object v1

    .line 207
    :cond_0
    if-eqz p1, :cond_1

    .line 209
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    goto :goto_0
.end method

.method private static entryForPLMN(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    .locals 5
    .param p0, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 127
    const/4 v0, 0x0

    .line 135
    .local v0, "index":I
    if-eqz p0, :cond_1

    .line 137
    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-direct {v1, p0, v3, v3}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v1, "m":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 145
    if-gez v0, :cond_1

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 149
    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .end local v1    # "m":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .restart local v1    # "m":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 159
    :cond_0
    if-gez v0, :cond_1

    .line 161
    const/4 v0, 0x0

    .line 171
    .end local v1    # "m":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    return-object v2
.end method

.method public static printEccTable()V
    .locals 0

    .prologue
    .line 596
    return-void
.end method

.method public static declared-synchronized updateEccTable(Ljava/lang/String;)V
    .locals 14
    .param p0, "customerSpec"    # Ljava/lang/String;

    .prologue
    .line 366
    const-class v10, Lcom/android/internal/telephony/gsm/EccTable;

    monitor-enter v10

    const/4 v6, 0x0

    .line 368
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 370
    .local v8, "str":Ljava/lang/String;
    const/4 v5, 0x0

    .line 372
    .local v5, "plmn":Ljava/lang/String;
    const/4 v2, 0x0

    .line 374
    .local v2, "emergencyNumberWithSIM":Ljava/lang/String;
    const/4 v3, 0x0

    .line 382
    .local v3, "emergencyNumberWithoutSIM":Ljava/lang/String;
    :try_start_0
    sget-boolean v9, Lcom/android/internal/telephony/gsm/EccTable;->updated:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v9, :cond_0

    if-nez p0, :cond_2

    .line 542
    :cond_0
    if-eqz v6, :cond_1

    .line 544
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    :cond_1
    :goto_0
    monitor-exit v10

    return-void

    .line 396
    :cond_2
    :try_start_2
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 398
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    if-nez v7, :cond_4

    .line 542
    if-eqz v7, :cond_3

    .line 544
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    :goto_1
    move-object v6, v7

    .line 400
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 406
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_4
    const-string v9, "\n"

    const/4 v11, 0x3

    invoke-virtual {p0, v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "conventionalSpec":[Ljava/lang/String;
    array-length v9, v0

    const/4 v11, 0x2

    if-ne v9, v11, :cond_7

    .line 412
    const/4 v9, 0x0

    aget-object v2, v0, v9

    .line 414
    const/4 v9, 0x1

    aget-object v3, v0, v9

    .line 416
    const-string v9, ""

    invoke-static {v9, v2, v3}, Lcom/android/internal/telephony/gsm/EccTable;->updateEmergencyNumbersForPLMN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 504
    :cond_5
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/gsm/EccTable;->updated:Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 542
    if-eqz v7, :cond_6

    .line 544
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_6
    :goto_2
    move-object v6, v7

    .line 556
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 422
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_7
    :goto_3
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 424
    const/4 v2, 0x0

    .line 426
    const/4 v3, 0x0

    .line 432
    move-object v5, v8

    .line 446
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 448
    if-eqz v8, :cond_8

    .line 452
    move-object v2, v8

    .line 468
    :cond_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 470
    if-eqz v8, :cond_9

    .line 474
    move-object v3, v8

    .line 488
    :cond_9
    invoke-static {v5, v2, v3}, Lcom/android/internal/telephony/gsm/EccTable;->updateEmergencyNumbersForPLMN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 510
    .end local v0    # "conventionalSpec":[Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v6, v7

    .line 542
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v6, :cond_1

    .line 544
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 548
    :catch_1
    move-exception v1

    .line 552
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v9, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 366
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_5
    monitor-exit v10

    throw v9

    .line 524
    :catch_2
    move-exception v4

    .line 528
    .local v4, "ioe":Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string v9, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 542
    if-eqz v6, :cond_1

    .line 544
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 548
    :catch_3
    move-exception v1

    .line 552
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_b
    const-string v9, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 538
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 542
    :goto_7
    if-eqz v6, :cond_a

    .line 544
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 538
    :cond_a
    :goto_8
    :try_start_d
    throw v9

    .line 548
    :catch_4
    move-exception v1

    .line 552
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateEccTable() Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 548
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 552
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v9, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 548
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    .line 552
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_e
    const-string v9, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 366
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 548
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "conventionalSpec":[Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    .line 552
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v9, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_2

    .line 538
    .end local v0    # "conventionalSpec":[Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 524
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v4

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .line 510
    :catch_9
    move-exception v9

    goto/16 :goto_4
.end method

.method public static updateEmergencyNumbersForPLMN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "plmn"    # Ljava/lang/String;
    .param p1, "emergencyNumberWithSIM"    # Ljava/lang/String;
    .param p2, "emergencyNumberWithoutSIM"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 237
    if-nez p0, :cond_0

    move v4, v5

    .line 351
    :goto_0
    return v4

    .line 243
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-direct {v2, p0, v6, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v2, "m":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    .line 249
    .local v3, "updateIndex":I
    const/4 v0, 0x0

    .line 251
    .local v0, "defaultIndex":I
    if-lez v3, :cond_3

    .line 253
    move v0, v3

    .line 271
    :cond_1
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 273
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object p1, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    .line 285
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 287
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object p2, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    .line 315
    :goto_3
    if-gez v3, :cond_7

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    move v4, v5

    .line 319
    goto :goto_0

    .line 255
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 257
    new-instance v2, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .end local v2    # "m":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v6, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .restart local v2    # "m":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 263
    if-gez v0, :cond_1

    .line 265
    const/4 v0, 0x0

    goto :goto_1

    .line 279
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 293
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 323
    :cond_6
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 351
    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 331
    :cond_7
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .line 335
    .local v1, "entry":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 337
    iput-object p1, v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    .line 339
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 341
    iput-object p2, v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    .line 345
    :cond_9
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method
