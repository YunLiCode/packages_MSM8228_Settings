.class Lcom/yeptelecom/audioprofile/RingerVolumePreference$1;
.super Lcom/yeptelecom/common/audioprofile/AudioProfileListener;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yeptelecom/audioprofile/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)V
    .locals 0

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$1;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    invoke-direct {p0}, Lcom/yeptelecom/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerVolumeChanged(IILjava/lang/String;)V
    .locals 5
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 1014
    const-string v1, "Settings/VolPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onRingerVolumeChanged from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$1;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$1;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$600(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    move-result-object v1

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$1;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$600(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    .line 1018
    .local v0, "seekBar":Landroid/widget/SeekBar;
    if-nez v0, :cond_1

    .line 1028
    .end local v0    # "seekBar":Landroid/widget/SeekBar;
    :cond_0
    :goto_0
    return-void

    .line 1021
    .restart local v0    # "seekBar":Landroid/widget/SeekBar;
    :cond_1
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-eq v1, p2, :cond_0

    if-ltz p2, :cond_0

    .line 1022
    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1023
    const-string v1, "Settings/VolPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile Ringer volume change: mSeekBar.setProgress++ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
