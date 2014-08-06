.class public Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
.super Landroid/view/WindowManager$LayoutParams;
.source "StandOutWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwei/mark/standout/StandOutWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StandOutLayoutParams"
.end annotation


# static fields
.field public static final AUTO_POSITION:I = -0x7fffffff

.field public static final BOTTOM:I = 0x7fffffff

.field public static final CENTER:I = -0x80000000

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x7fffffff

.field public static final TOP:I


# instance fields
.field public maxHeight:I

.field public maxWidth:I

.field public minHeight:I

.field public minWidth:I

.field final synthetic this$0:Lwei/mark/standout/StandOutWindow;

.field public threshold:I


# direct methods
.method public constructor <init>(Lwei/mark/standout/StandOutWindow;I)V
    .locals 8
    .param p2, "id"    # I

    .prologue
    const/16 v1, 0xc8

    const/4 v7, 0x0

    .line 1436
    iput-object p1, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->this$0:Lwei/mark/standout/StandOutWindow;

    .line 1438
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "type"

    const/16 v3, 0x7d6

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "flags"

    const/high16 v4, 0x80000

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1440
    invoke-virtual {p1, p2}, Lwei/mark/standout/StandOutWindow;->getFlags(I)I

    move-result v6

    .line 1442
    .local v6, "windowFlags":I
    invoke-virtual {p0, v7}, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->setFocusFlag(Z)V

    .line 1444
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_EDGE_LIMITS_ENABLE:I

    invoke-static {v6, v0}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1446
    iget v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->flags:I

    .line 1449
    :cond_0
    iget v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    invoke-direct {p0, p2, v0}, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->getX(II)I

    move-result v0

    iput v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->x:I

    .line 1450
    iget v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    invoke-direct {p0, p2, v0}, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->getY(II)I

    move-result v0

    iput v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->y:I

    .line 1452
    const/16 v0, 0x33

    iput v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->gravity:I

    .line 1454
    const/16 v0, 0xa

    iput v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->threshold:I

    .line 1455
    iput v7, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->minHeight:I

    iput v7, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->minWidth:I

    .line 1456
    const v0, 0x7fffffff

    iput v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->maxHeight:I

    iput v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->maxWidth:I

    .line 1457
    return-void
.end method

.method public constructor <init>(Lwei/mark/standout/StandOutWindow;III)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 1468
    invoke-direct {p0, p1, p2}, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;-><init>(Lwei/mark/standout/StandOutWindow;I)V

    .line 1469
    iput p3, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    .line 1470
    iput p4, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    .line 1471
    return-void
.end method

.method public constructor <init>(Lwei/mark/standout/StandOutWindow;IIII)V
    .locals 1
    .param p2, "id"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "gravity"    # I

    .prologue
    const/4 v0, 0x0

    .line 1488
    invoke-direct {p0, p1, p2}, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;-><init>(Lwei/mark/standout/StandOutWindow;I)V

    .line 1489
    iput p3, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    .line 1490
    iput p4, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    .line 1491
    iput v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->x:I

    .line 1492
    iput v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->y:I

    .line 1493
    iput p5, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->gravity:I

    .line 1494
    return-void
.end method

.method public constructor <init>(Lwei/mark/standout/StandOutWindow;IIIII)V
    .locals 6
    .param p2, "id"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "xpos"    # I
    .param p6, "ypos"    # I

    .prologue
    const v5, 0x7fffffff

    const v3, -0x7fffffff

    const/high16 v4, -0x80000000

    .line 1509
    invoke-direct {p0, p1, p2, p3, p4}, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;-><init>(Lwei/mark/standout/StandOutWindow;III)V

    .line 1511
    if-eq p5, v3, :cond_0

    .line 1512
    iput p5, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->x:I

    .line 1514
    :cond_0
    if-eq p6, v3, :cond_1

    .line 1515
    iput p6, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->y:I

    .line 1518
    :cond_1
    iget-object v3, p1, Lwei/mark/standout/StandOutWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1519
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 1520
    .local v2, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1522
    .local v1, "height":I
    iget v3, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->x:I

    if-ne v3, v5, :cond_4

    .line 1523
    sub-int v3, v2, p3

    iput v3, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->x:I

    .line 1528
    :cond_2
    :goto_0
    iget v3, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->y:I

    if-ne v3, v5, :cond_5

    .line 1529
    sub-int v3, v1, p4

    iput v3, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->y:I

    .line 1533
    :cond_3
    :goto_1
    return-void

    .line 1524
    :cond_4
    iget v3, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->x:I

    if-ne v3, v4, :cond_2

    .line 1525
    sub-int v3, v2, p3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->x:I

    goto :goto_0

    .line 1530
    :cond_5
    iget v3, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->y:I

    if-ne v3, v4, :cond_3

    .line 1531
    sub-int v3, v1, p4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->y:I

    goto :goto_1
.end method

.method public constructor <init>(Lwei/mark/standout/StandOutWindow;IIIIIII)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "xpos"    # I
    .param p6, "ypos"    # I
    .param p7, "minWidth"    # I
    .param p8, "minHeight"    # I

    .prologue
    .line 1552
    invoke-direct/range {p0 .. p6}, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;-><init>(Lwei/mark/standout/StandOutWindow;IIIII)V

    .line 1554
    iput p7, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->minWidth:I

    .line 1555
    iput p8, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->minHeight:I

    .line 1556
    return-void
.end method

.method public constructor <init>(Lwei/mark/standout/StandOutWindow;IIIIIIII)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "xpos"    # I
    .param p6, "ypos"    # I
    .param p7, "minWidth"    # I
    .param p8, "minHeight"    # I
    .param p9, "threshold"    # I

    .prologue
    .line 1578
    invoke-direct/range {p0 .. p8}, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;-><init>(Lwei/mark/standout/StandOutWindow;IIIIIII)V

    .line 1580
    iput p9, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->threshold:I

    .line 1581
    return-void
.end method

.method private getX(II)I
    .locals 7
    .param p1, "id"    # I
    .param p2, "width"    # I

    .prologue
    .line 1585
    iget-object v6, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->this$0:Lwei/mark/standout/StandOutWindow;

    iget-object v6, v6, Lwei/mark/standout/StandOutWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1586
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1588
    .local v1, "displayWidth":I
    sget-object v6, Lwei/mark/standout/StandOutWindow;->sWindowCache:Lwei/mark/standout/WindowCache;

    invoke-virtual {v6}, Lwei/mark/standout/WindowCache;->size()I

    move-result v4

    .line 1590
    .local v4, "types":I
    mul-int/lit8 v2, v4, 0x64

    .line 1591
    .local v2, "initialX":I
    mul-int/lit8 v5, p1, 0x64

    .line 1592
    .local v5, "variableX":I
    add-int v3, v2, v5

    .line 1594
    .local v3, "rawX":I
    sub-int v6, v1, p2

    rem-int v6, v3, v6

    return v6
.end method

.method private getY(II)I
    .locals 10
    .param p1, "id"    # I
    .param p2, "height"    # I

    .prologue
    .line 1599
    iget-object v7, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->this$0:Lwei/mark/standout/StandOutWindow;

    iget-object v7, v7, Lwei/mark/standout/StandOutWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1600
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 1601
    .local v2, "displayWidth":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1603
    .local v1, "displayHeight":I
    sget-object v7, Lwei/mark/standout/StandOutWindow;->sWindowCache:Lwei/mark/standout/WindowCache;

    invoke-virtual {v7}, Lwei/mark/standout/WindowCache;->size()I

    move-result v5

    .line 1605
    .local v5, "types":I
    mul-int/lit8 v3, v5, 0x64

    .line 1606
    .local v3, "initialY":I
    iget v7, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->x:I

    mul-int/lit8 v8, p1, 0x64

    mul-int/lit16 v8, v8, 0xc8

    iget v9, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    sub-int v9, v2, v9

    div-int/2addr v8, v9

    add-int v6, v7, v8

    .line 1608
    .local v6, "variableY":I
    add-int v4, v3, v6

    .line 1610
    .local v4, "rawY":I
    sub-int v7, v1, p2

    rem-int v7, v4, v7

    return v7
.end method


# virtual methods
.method public setFocusFlag(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .prologue
    .line 1614
    if-eqz p1, :cond_0

    .line 1615
    iget v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->flags:I

    xor-int/lit8 v0, v0, 0x8

    iput v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->flags:I

    .line 1619
    :goto_0
    return-void

    .line 1617
    :cond_0
    iget v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->flags:I

    goto :goto_0
.end method
