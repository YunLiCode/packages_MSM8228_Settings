.class Lwei/mark/standout/StandOutWindow$4;
.super Ljava/lang/Object;
.source "StandOutWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwei/mark/standout/StandOutWindow;->close(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwei/mark/standout/StandOutWindow;

.field private final synthetic val$id:I

.field private final synthetic val$window:Lwei/mark/standout/ui/Window;


# direct methods
.method constructor <init>(Lwei/mark/standout/StandOutWindow;Lwei/mark/standout/ui/Window;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lwei/mark/standout/StandOutWindow$4;->this$0:Lwei/mark/standout/StandOutWindow;

    iput-object p2, p0, Lwei/mark/standout/StandOutWindow$4;->val$window:Lwei/mark/standout/ui/Window;

    iput p3, p0, Lwei/mark/standout/StandOutWindow$4;->val$id:I

    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 940
    iget-object v0, p0, Lwei/mark/standout/StandOutWindow$4;->this$0:Lwei/mark/standout/StandOutWindow;

    iget-object v0, v0, Lwei/mark/standout/StandOutWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lwei/mark/standout/StandOutWindow$4;->val$window:Lwei/mark/standout/ui/Window;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 941
    iget-object v0, p0, Lwei/mark/standout/StandOutWindow$4;->val$window:Lwei/mark/standout/ui/Window;

    iput v3, v0, Lwei/mark/standout/ui/Window;->visibility:I

    .line 944
    sget-object v0, Lwei/mark/standout/StandOutWindow;->sWindowCache:Lwei/mark/standout/WindowCache;

    iget v1, p0, Lwei/mark/standout/StandOutWindow$4;->val$id:I

    iget-object v2, p0, Lwei/mark/standout/StandOutWindow$4;->this$0:Lwei/mark/standout/StandOutWindow;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lwei/mark/standout/WindowCache;->removeCache(ILjava/lang/Class;)V

    .line 947
    iget-object v0, p0, Lwei/mark/standout/StandOutWindow$4;->this$0:Lwei/mark/standout/StandOutWindow;

    invoke-virtual {v0}, Lwei/mark/standout/StandOutWindow;->getExistingIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 952
    sput-boolean v3, Lwei/mark/standout/StandOutWindow;->startedForeground:Z

    .line 953
    iget-object v0, p0, Lwei/mark/standout/StandOutWindow$4;->this$0:Lwei/mark/standout/StandOutWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lwei/mark/standout/StandOutWindow;->stopForeground(Z)V

    .line 955
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 935
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 931
    return-void
.end method
