.class Lcom/yeptelecom/audioprofile/AudioProfileSettings$1;
.super Lcom/yeptelecom/common/audioprofile/AudioProfileListener;
.source "AudioProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yeptelecom/audioprofile/AudioProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yeptelecom/audioprofile/AudioProfileSettings;


# direct methods
.method constructor <init>(Lcom/yeptelecom/audioprofile/AudioProfileSettings;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileSettings;

    invoke-direct {p0}, Lcom/yeptelecom/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioProfileChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v1, "Settings/AudioP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioProfileSettings:onAudioPerfileChanged:key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileSettings;

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileSettings;

    # getter for: Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->access$000(Lcom/yeptelecom/audioprofile/AudioProfileSettings;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "profileKey":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    .line 119
    .local v0, "activePreference":Lcom/yeptelecom/audioprofile/AudioProfilePreference;
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->setChecked()V

    .line 122
    :cond_1
    return-void
.end method
