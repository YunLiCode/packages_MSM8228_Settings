.class public Lwei/mark/standout/constants/StandOutFlags;
.super Ljava/lang/Object;
.source "StandOutFlags.java"


# static fields
.field public static final FLAG_ADD_FUNCTIONALITY_ALL_DISABLE:I

.field public static final FLAG_ADD_FUNCTIONALITY_DROP_DOWN_DISABLE:I

.field public static final FLAG_ADD_FUNCTIONALITY_RESIZE_DISABLE:I

.field public static final FLAG_BODY_MOVE_ENABLE:I

.field public static final FLAG_DECORATION_CLOSE_DISABLE:I

.field public static final FLAG_DECORATION_MOVE_DISABLE:I

.field public static final FLAG_DECORATION_RESIZE_DISABLE:I

.field public static final FLAG_DECORATION_SYSTEM:I

.field public static final FLAG_FIX_COMPATIBILITY_ALL_DISABLE:I

.field public static final FLAG_WINDOW_ASPECT_RATIO_ENABLE:I

.field public static final FLAG_WINDOW_BRING_TO_FRONT_ON_TAP:I

.field public static final FLAG_WINDOW_BRING_TO_FRONT_ON_TOUCH:I

.field public static final FLAG_WINDOW_EDGE_LIMITS_ENABLE:I

.field public static final FLAG_WINDOW_FOCUSABLE_DISABLE:I

.field public static final FLAG_WINDOW_FOCUS_INDICATOR_DISABLE:I

.field public static final FLAG_WINDOW_HIDE_ENABLE:I

.field public static final FLAG_WINDOW_PINCH_RESIZE_ENABLE:I

.field private static flag_bit:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 17
    const/4 v0, 0x0

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    .line 24
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_DECORATION_SYSTEM:I

    .line 34
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_DECORATION_SYSTEM:I

    .line 35
    sget v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v1, v3, v1

    .line 34
    or-int/2addr v0, v1

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_DECORATION_CLOSE_DISABLE:I

    .line 45
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_DECORATION_SYSTEM:I

    .line 46
    sget v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v1, v3, v1

    .line 45
    or-int/2addr v0, v1

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_DECORATION_RESIZE_DISABLE:I

    .line 56
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_DECORATION_SYSTEM:I

    .line 57
    sget v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v1, v3, v1

    .line 56
    or-int/2addr v0, v1

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_DECORATION_MOVE_DISABLE:I

    .line 67
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_BODY_MOVE_ENABLE:I

    .line 77
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_HIDE_ENABLE:I

    .line 88
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_BRING_TO_FRONT_ON_TOUCH:I

    .line 99
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_BRING_TO_FRONT_ON_TAP:I

    .line 114
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_EDGE_LIMITS_ENABLE:I

    .line 129
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_ASPECT_RATIO_ENABLE:I

    .line 137
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_PINCH_RESIZE_ENABLE:I

    .line 157
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_FOCUSABLE_DISABLE:I

    .line 168
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_FOCUS_INDICATOR_DISABLE:I

    .line 178
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_FIX_COMPATIBILITY_ALL_DISABLE:I

    .line 188
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_ADD_FUNCTIONALITY_ALL_DISABLE:I

    .line 200
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_ADD_FUNCTIONALITY_RESIZE_DISABLE:I

    .line 213
    sget v0, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lwei/mark/standout/constants/StandOutFlags;->flag_bit:I

    shl-int v0, v3, v0

    sput v0, Lwei/mark/standout/constants/StandOutFlags;->FLAG_ADD_FUNCTIONALITY_DROP_DOWN_DISABLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
