.class Lcom/android/settings/roundr/ScreenEvent$1;
.super Ljava/lang/Thread;
.source "ScreenEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/roundr/ScreenEvent;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/roundr/ScreenEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/roundr/ScreenEvent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/roundr/ScreenEvent$1;->this$0:Lcom/android/settings/roundr/ScreenEvent;

    .line 22
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 26
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 27
    iget-object v0, p0, Lcom/android/settings/roundr/ScreenEvent$1;->this$0:Lcom/android/settings/roundr/ScreenEvent;

    iget-object v1, p0, Lcom/android/settings/roundr/ScreenEvent$1;->this$0:Lcom/android/settings/roundr/ScreenEvent;

    iget-object v1, v1, Lcom/android/settings/roundr/ScreenEvent;->cntxt:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/roundr/ScreenEvent$1;->this$0:Lcom/android/settings/roundr/ScreenEvent;

    iget-object v2, v2, Lcom/android/settings/roundr/ScreenEvent;->mStrAction:Ljava/lang/String;

    # invokes: Lcom/android/settings/roundr/ScreenEvent;->changeBkLightOfButtons(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/roundr/ScreenEvent;->access$0(Lcom/android/settings/roundr/ScreenEvent;Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    return-void
.end method
