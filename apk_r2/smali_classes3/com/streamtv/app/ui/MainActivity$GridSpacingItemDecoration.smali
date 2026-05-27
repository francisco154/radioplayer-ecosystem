.class public Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/streamtv/app/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridSpacingItemDecoration"
.end annotation


# instance fields
.field private includeEdge:Z

.field private spacing:I

.field private spanCount:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 593
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 594
    iput p1, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->spanCount:I

    .line 595
    iput p2, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->spacing:I

    .line 596
    iput-boolean p3, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->includeEdge:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 601
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 602
    iget p3, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->spanCount:I

    .line 603
    rem-int p4, p2, p3

    .line 604
    iget-boolean v0, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->includeEdge:Z

    if-eqz v0, :cond_1

    .line 605
    iget v0, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->spacing:I

    mul-int v1, p4, v0

    .line 606
    div-int/2addr v1, p3

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    .line 607
    iget p3, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->spacing:I

    mul-int p4, p4, p3

    iget p3, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->spanCount:I

    div-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 608
    iget p3, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->spanCount:I

    if-ge p2, p3, :cond_0

    .line 609
    iget p2, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 611
    :cond_0
    iget p2, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 614
    :cond_1
    iget v0, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->spacing:I

    mul-int v0, v0, p4

    div-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 615
    iget p3, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->spacing:I

    add-int/lit8 p4, p4, 0x1

    mul-int p4, p4, p3

    .line 616
    iget v0, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->spanCount:I

    div-int/2addr p4, v0

    sub-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 617
    iget p3, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->spanCount:I

    if-lt p2, p3, :cond_2

    .line 618
    iget p2, p0, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    return-void
.end method
