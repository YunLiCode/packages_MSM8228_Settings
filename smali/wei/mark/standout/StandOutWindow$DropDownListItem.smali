.class public Lwei/mark/standout/StandOutWindow$DropDownListItem;
.super Ljava/lang/Object;
.source "StandOutWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwei/mark/standout/StandOutWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DropDownListItem"
.end annotation


# instance fields
.field public action:Ljava/lang/Runnable;

.field public description:Ljava/lang/String;

.field public icon:I

.field final synthetic this$0:Lwei/mark/standout/StandOutWindow;


# direct methods
.method public constructor <init>(Lwei/mark/standout/StandOutWindow;ILjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "icon"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 1627
    iput-object p1, p0, Lwei/mark/standout/StandOutWindow$DropDownListItem;->this$0:Lwei/mark/standout/StandOutWindow;

    .line 1628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1629
    iput p2, p0, Lwei/mark/standout/StandOutWindow$DropDownListItem;->icon:I

    .line 1630
    iput-object p3, p0, Lwei/mark/standout/StandOutWindow$DropDownListItem;->description:Ljava/lang/String;

    .line 1631
    iput-object p4, p0, Lwei/mark/standout/StandOutWindow$DropDownListItem;->action:Ljava/lang/Runnable;

    .line 1632
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lwei/mark/standout/StandOutWindow$DropDownListItem;->description:Ljava/lang/String;

    return-object v0
.end method
