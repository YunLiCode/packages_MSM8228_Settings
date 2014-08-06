.class Lwei/mark/standout/StandOutWindow$2;
.super Ljava/lang/Object;
.source "StandOutWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwei/mark/standout/StandOutWindow;->getDropDown(I)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwei/mark/standout/StandOutWindow;

.field private final synthetic val$dropDown:Landroid/widget/PopupWindow;

.field private final synthetic val$item:Lwei/mark/standout/StandOutWindow$DropDownListItem;


# direct methods
.method constructor <init>(Lwei/mark/standout/StandOutWindow;Lwei/mark/standout/StandOutWindow$DropDownListItem;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lwei/mark/standout/StandOutWindow$2;->this$0:Lwei/mark/standout/StandOutWindow;

    iput-object p2, p0, Lwei/mark/standout/StandOutWindow$2;->val$item:Lwei/mark/standout/StandOutWindow$DropDownListItem;

    iput-object p3, p0, Lwei/mark/standout/StandOutWindow$2;->val$dropDown:Landroid/widget/PopupWindow;

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 695
    iget-object v0, p0, Lwei/mark/standout/StandOutWindow$2;->val$item:Lwei/mark/standout/StandOutWindow$DropDownListItem;

    iget-object v0, v0, Lwei/mark/standout/StandOutWindow$DropDownListItem;->action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 696
    iget-object v0, p0, Lwei/mark/standout/StandOutWindow$2;->val$dropDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 697
    return-void
.end method
