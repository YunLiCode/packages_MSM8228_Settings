.class Lcom/android/settings/screenfilter/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/screenfilter/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/screenfilter/MainActivity;

.field private final synthetic val$b:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings/screenfilter/MainActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/screenfilter/MainActivity$1;->this$0:Lcom/android/settings/screenfilter/MainActivity;

    iput-object p2, p0, Lcom/android/settings/screenfilter/MainActivity$1;->val$b:Landroid/widget/Button;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/settings/screenfilter/MainActivity;->activated:Z

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/screenfilter/MainActivity;->a:Lcom/android/settings/screenfilter/MainActivity;

    const-class v2, Lcom/android/settings/screenfilter/FilterService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/settings/screenfilter/MainActivity;->serviceIntent:Landroid/content/Intent;

    .line 50
    iget-object v0, p0, Lcom/android/settings/screenfilter/MainActivity$1;->this$0:Lcom/android/settings/screenfilter/MainActivity;

    sget-object v1, Lcom/android/settings/screenfilter/MainActivity;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/screenfilter/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/screenfilter/MainActivity;->activated:Z

    .line 52
    iget-object v0, p0, Lcom/android/settings/screenfilter/MainActivity$1;->val$b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/screenfilter/MainActivity$1;->this$0:Lcom/android/settings/screenfilter/MainActivity;

    invoke-virtual {v1}, Lcom/android/settings/screenfilter/MainActivity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/screenfilter/MainActivity$1;->this$0:Lcom/android/settings/screenfilter/MainActivity;

    invoke-virtual {v0}, Lcom/android/settings/screenfilter/MainActivity;->onBackPressed()V

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/settings/screenfilter/MainActivity$1;->this$0:Lcom/android/settings/screenfilter/MainActivity;

    sget-object v1, Lcom/android/settings/screenfilter/MainActivity;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/screenfilter/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/screenfilter/MainActivity;->activated:Z

    .line 59
    iget-object v0, p0, Lcom/android/settings/screenfilter/MainActivity$1;->val$b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/screenfilter/MainActivity$1;->this$0:Lcom/android/settings/screenfilter/MainActivity;

    invoke-virtual {v1}, Lcom/android/settings/screenfilter/MainActivity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
