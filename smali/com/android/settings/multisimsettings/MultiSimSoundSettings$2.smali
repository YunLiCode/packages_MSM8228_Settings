.class Lcom/android/settings/multisimsettings/MultiSimSoundSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/multisimsettings/MultiSimSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/multisimsettings/MultiSimSoundSettings;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings/multisimsettings/MultiSimSoundSettings$2;->this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/multisimsettings/MultiSimSoundSettings$2;->this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->access$400(Lcom/android/settings/multisimsettings/MultiSimSoundSettings;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    :cond_0
    return-void
.end method
