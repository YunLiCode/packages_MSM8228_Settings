.class public Lcom/android/settings/screenfilter/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field static a:Lcom/android/settings/screenfilter/MainActivity;

.field static activated:Z

.field static screenHeight:I

.field static screenWidth:I

.field static serviceIntent:Landroid/content/Intent;


# instance fields
.field fs:Lcom/android/settings/screenfilter/FilterService;

.field hv:Lcom/android/settings/screenfilter/HUDView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/screenfilter/MainActivity;->activated:Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/settings/screenfilter/MainActivity;->activated:Z

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "\u5173\u95ed\u62a4\u773c"

    .line 35
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u5f00\u542f\u62a4\u773c"

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v1, 0x7f0400a5

    invoke-virtual {p0, v1}, Lcom/android/settings/screenfilter/MainActivity;->setContentView(I)V

    .line 42
    sput-object p0, Lcom/android/settings/screenfilter/MainActivity;->a:Lcom/android/settings/screenfilter/MainActivity;

    .line 43
    const v1, 0x7f080257

    invoke-virtual {p0, v1}, Lcom/android/settings/screenfilter/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    .local v0, "b":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/android/settings/screenfilter/MainActivity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v1, Lcom/android/settings/screenfilter/MainActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/screenfilter/MainActivity$1;-><init>(Lcom/android/settings/screenfilter/MainActivity;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 21
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings/screenfilter/FilterService;->setFilter(Z)V

    .line 22
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/screenfilter/FilterService;->setFilter(Z)V

    .line 28
    return-void
.end method
