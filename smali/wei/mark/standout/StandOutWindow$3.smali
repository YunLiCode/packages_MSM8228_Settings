.class Lwei/mark/standout/StandOutWindow$3;
.super Ljava/lang/Object;
.source "StandOutWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwei/mark/standout/StandOutWindow;->hide(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwei/mark/standout/StandOutWindow;

.field private final synthetic val$window:Lwei/mark/standout/ui/Window;


# direct methods
.method constructor <init>(Lwei/mark/standout/StandOutWindow;Lwei/mark/standout/ui/Window;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lwei/mark/standout/StandOutWindow$3;->this$0:Lwei/mark/standout/StandOutWindow;

    iput-object p2, p0, Lwei/mark/standout/StandOutWindow$3;->val$window:Lwei/mark/standout/ui/Window;

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 876
    iget-object v0, p0, Lwei/mark/standout/StandOutWindow$3;->this$0:Lwei/mark/standout/StandOutWindow;

    iget-object v0, v0, Lwei/mark/standout/StandOutWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lwei/mark/standout/StandOutWindow$3;->val$window:Lwei/mark/standout/ui/Window;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 877
    iget-object v0, p0, Lwei/mark/standout/StandOutWindow$3;->val$window:Lwei/mark/standout/ui/Window;

    const/4 v1, 0x0

    iput v1, v0, Lwei/mark/standout/ui/Window;->visibility:I

    .line 878
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 871
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 867
    return-void
.end method
