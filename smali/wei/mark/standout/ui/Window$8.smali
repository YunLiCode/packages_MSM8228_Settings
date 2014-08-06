.class Lwei/mark/standout/ui/Window$8;
.super Ljava/lang/Object;
.source "Window.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwei/mark/standout/ui/Window;->addFunctionality(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwei/mark/standout/ui/Window;

.field private final synthetic val$icon:Landroid/view/View;


# direct methods
.method constructor <init>(Lwei/mark/standout/ui/Window;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lwei/mark/standout/ui/Window$8;->this$0:Lwei/mark/standout/ui/Window;

    iput-object p2, p0, Lwei/mark/standout/ui/Window$8;->val$icon:Landroid/view/View;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 466
    iget-object v1, p0, Lwei/mark/standout/ui/Window$8;->this$0:Lwei/mark/standout/ui/Window;

    # getter for: Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;
    invoke-static {v1}, Lwei/mark/standout/ui/Window;->access$1(Lwei/mark/standout/ui/Window;)Lwei/mark/standout/StandOutWindow;

    move-result-object v1

    iget-object v2, p0, Lwei/mark/standout/ui/Window$8;->this$0:Lwei/mark/standout/ui/Window;

    iget v2, v2, Lwei/mark/standout/ui/Window;->id:I

    invoke-virtual {v1, v2}, Lwei/mark/standout/StandOutWindow;->getDropDown(I)Landroid/widget/PopupWindow;

    move-result-object v0

    .line 467
    .local v0, "dropDown":Landroid/widget/PopupWindow;
    if-eqz v0, :cond_0

    .line 468
    iget-object v1, p0, Lwei/mark/standout/ui/Window$8;->val$icon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 470
    :cond_0
    return-void
.end method
