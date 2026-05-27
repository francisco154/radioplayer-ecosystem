.class public Landroidx/leanback/widget/GuidedActionsStylist;
.super Ljava/lang/Object;
.source "GuidedActionsStylist.java"

# interfaces
.implements Landroidx/leanback/widget/FragmentAnimationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;,
        Landroidx/leanback/widget/GuidedActionsStylist$Api26Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GuidedActionsStylist"

.field public static final VIEW_TYPE_DATE_PICKER:I = 0x1

.field public static final VIEW_TYPE_DEFAULT:I

.field static final sGuidedActionItemAlignFacet:Landroidx/leanback/widget/ItemAlignmentFacet;


# instance fields
.field private mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

.field private mBackToCollapseActivatorView:Z

.field private mBackToCollapseSubActions:Z

.field private mButtonActions:Z

.field private mContentView:Landroid/view/View;

.field private mDescriptionMinLines:I

.field private mDisabledChevronAlpha:F

.field private mDisabledDescriptionAlpha:F

.field private mDisabledTextAlpha:F

.field private mDisplayHeight:I

.field private mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

.field private mEnabledChevronAlpha:F

.field private mEnabledDescriptionAlpha:F

.field private mEnabledTextAlpha:F

.field mExpandTransition:Ljava/lang/Object;

.field mExpandedAction:Landroidx/leanback/widget/GuidedAction;

.field private mKeyLinePercent:F

.field mMainView:Landroid/view/ViewGroup;

.field private mSubActionsBackground:Landroid/view/View;

.field mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

.field private mTitleMaxLines:I

.field private mTitleMinLines:I

.field private mVerticalPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 169
    new-instance v0, Landroidx/leanback/widget/ItemAlignmentFacet;

    invoke-direct {v0}, Landroidx/leanback/widget/ItemAlignmentFacet;-><init>()V

    sput-object v0, Landroidx/leanback/widget/GuidedActionsStylist;->sGuidedActionItemAlignFacet:Landroidx/leanback/widget/ItemAlignmentFacet;

    .line 170
    new-instance v1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v1}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 171
    sget v2, Landroidx/leanback/R$id;->guidedactions_item_title:I

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentViewId(I)V

    const/4 v2, 0x1

    .line 172
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setAlignedToTextViewBaseline(Z)V

    const/4 v3, 0x0

    .line 173
    invoke-virtual {v1, v3}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    .line 174
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetWithPadding(Z)V

    const/4 v4, 0x0

    .line 175
    invoke-virtual {v1, v4}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    .line 176
    new-array v2, v2, [Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ItemAlignmentFacet;->setAlignmentDefs([Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    const/4 v0, 0x1

    .line 444
    iput-boolean v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mBackToCollapseSubActions:Z

    .line 445
    iput-boolean v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mBackToCollapseActivatorView:Z

    return-void
.end method

.method private getDescriptionMaxHeight(Landroid/widget/TextView;)I
    .locals 2

    .line 1576
    iget v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisplayHeight:I

    iget v1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mVerticalPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mTitleMaxLines:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result p1

    mul-int v1, v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static getDimension(Landroid/content/Context;Landroid/util/TypedValue;I)I
    .locals 2

    .line 1548
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1549
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private static getFloat(Landroid/content/Context;Landroid/util/TypedValue;I)F
    .locals 1

    .line 1533
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1534
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method private static getFloatValue(Landroid/content/res/Resources;Landroid/util/TypedValue;I)F
    .locals 1

    const/4 v0, 0x1

    .line 1538
    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1539
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method private static getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I
    .locals 2

    .line 1543
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1544
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private setIcon(Landroid/widget/ImageView;Landroidx/leanback/widget/GuidedAction;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1555
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1558
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1559
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1560
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 1562
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static setMaxLines(Landroid/widget/TextView;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 811
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 813
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 814
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    return-void
.end method

.method private setupNextImeOptions(Landroid/widget/EditText;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 831
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_0
    return-void
.end method

.method private updateChevronAndVisibility(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 4

    .line 1481
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->isSubAction()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1482
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1483
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1484
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1485
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1486
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->setActivated(Z)V

    goto :goto_0

    .line 1488
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    iget-object v3, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    if-ne v0, v3, :cond_2

    .line 1489
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1490
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1491
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->getKeyLine()I

    move-result v1

    iget-object v2, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 1492
    :cond_1
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1493
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x1

    .line 1494
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->setActivated(Z)V

    goto :goto_0

    .line 1497
    :cond_2
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1498
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1501
    :cond_3
    :goto_0
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1502
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->onBindChevronView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public collapseAction(Z)V
    .locals 3

    .line 1265
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1268
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1270
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/GuidedActionAdapter;->indexOf(Landroidx/leanback/widget/GuidedAction;)I

    move-result v0

    if-gez v0, :cond_2

    return-void

    .line 1274
    :cond_2
    iget-object v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    invoke-virtual {v2}, Landroidx/leanback/widget/GuidedAction;->hasEditableActivatorView()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1276
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 1275
    invoke-virtual {p0, v0, v1, p1}, Landroidx/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 1280
    invoke-virtual {p0, v0, p1}, Landroidx/leanback/widget/GuidedActionsStylist;->startExpanded(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public expandAction(Landroidx/leanback/widget/GuidedAction;Z)V
    .locals 2

    .line 1215
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1219
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GuidedActionAdapter;->indexOf(Landroidx/leanback/widget/GuidedAction;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 1223
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 1242
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    new-instance p2, Landroidx/leanback/widget/GuidedActionsStylist$5;

    invoke-direct {p2, p0}, Landroidx/leanback/widget/GuidedActionsStylist$5;-><init>(Landroidx/leanback/widget/GuidedActionsStylist;)V

    invoke-virtual {p1, v0, p2}, Landroidx/leanback/widget/VerticalGridView;->setSelectedPosition(ILandroidx/leanback/widget/ViewHolderTask;)V

    goto :goto_0

    .line 1225
    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p2

    new-instance v1, Landroidx/leanback/widget/GuidedActionsStylist$4;

    invoke-direct {v1, p0}, Landroidx/leanback/widget/GuidedActionsStylist$4;-><init>(Landroidx/leanback/widget/GuidedActionsStylist;)V

    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setSelectedPosition(ILandroidx/leanback/widget/ViewHolderTask;)V

    .line 1238
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    .line 1239
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->onUpdateSubActionsGridView(Landroidx/leanback/widget/GuidedAction;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getActionsGridView()Landroidx/leanback/widget/VerticalGridView;
    .locals 1

    .line 574
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public getExpandedAction()Landroidx/leanback/widget/GuidedAction;
    .locals 1

    .line 1413
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    return-object v0
.end method

.method public getItemViewType(Landroidx/leanback/widget/GuidedAction;)I
    .locals 0

    .line 609
    instance-of p1, p1, Landroidx/leanback/widget/GuidedDatePickerAction;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method getKeyLine()I
    .locals 2

    .line 1285
    iget v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mKeyLinePercent:F

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroidx/leanback/widget/VerticalGridView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSubActionsGridView()Landroidx/leanback/widget/VerticalGridView;
    .locals 1

    .line 583
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public final isBackKeyToCollapseActivatorView()Z
    .locals 1

    .line 1205
    iget-boolean v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mBackToCollapseActivatorView:Z

    return v0
.end method

.method public final isBackKeyToCollapseSubActions()Z
    .locals 1

    .line 1183
    iget-boolean v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mBackToCollapseSubActions:Z

    return v0
.end method

.method public isButtonActions()Z
    .locals 1

    .line 552
    iget-boolean v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    return v0
.end method

.method public isExpandTransitionSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 1405
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInExpandTransition()Z
    .locals 1

    .line 1138
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSubActionsExpanded()Z
    .locals 1

    .line 1398
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAnimateItemChecked(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 1

    .line 972
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    instance-of v0, v0, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 973
    iget-object p1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onAnimateItemFocused(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onAnimateItemPressed(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 0

    .line 951
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->press(Z)V

    return-void
.end method

.method public onAnimateItemPressedCancelled(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 959
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->press(Z)V

    return-void
.end method

.method public onBindActivatorView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V
    .locals 5

    .line 1020
    instance-of v0, p2, Landroidx/leanback/widget/GuidedDatePickerAction;

    if-eqz v0, :cond_2

    .line 1021
    check-cast p2, Landroidx/leanback/widget/GuidedDatePickerAction;

    .line 1022
    iget-object p1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    check-cast p1, Landroidx/leanback/widget/picker/DatePicker;

    .line 1023
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedDatePickerAction;->getDatePickerFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/picker/DatePicker;->setDatePickerFormat(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedDatePickerAction;->getMinDate()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1025
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedDatePickerAction;->getMinDate()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/leanback/widget/picker/DatePicker;->setMinDate(J)V

    .line 1027
    :cond_0
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedDatePickerAction;->getMaxDate()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1028
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedDatePickerAction;->getMaxDate()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/leanback/widget/picker/DatePicker;->setMaxDate(J)V

    .line 1030
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1031
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedDatePickerAction;->getDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p2, 0x1

    .line 1032
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    .line 1033
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x0

    .line 1032
    invoke-virtual {p1, p2, v1, v0, v2}, Landroidx/leanback/widget/picker/DatePicker;->setDate(IIIZ)V

    :cond_2
    return-void
.end method

.method public onBindCheckMarkView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V
    .locals 5

    .line 993
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 994
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 995
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x101021a

    goto :goto_0

    :cond_0
    const v0, 0x1010219

    .line 998
    :goto_0
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1000
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1001
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1002
    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1004
    :goto_1
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1005
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    instance-of v0, v0, Landroid/widget/Checkable;

    if-eqz v0, :cond_3

    .line 1006
    iget-object p1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    check-cast p1, Landroid/widget/Checkable;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->isChecked()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_2

    .line 1009
    :cond_2
    iget-object p1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onBindChevronView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V
    .locals 3

    .line 1100
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->hasNext()Z

    move-result v0

    .line 1101
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1116
    :cond_0
    iget-object p1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1103
    :cond_1
    :goto_0
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1104
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEnabledChevronAlpha:F

    goto :goto_1

    .line 1105
    :cond_2
    iget v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisabledChevronAlpha:F

    .line 1104
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    if-eqz v0, :cond_4

    .line 1108
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    const/high16 p2, 0x43340000    # 180.0f

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    .line 1109
    :goto_2
    iget-object p1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3

    .line 1110
    :cond_4
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    if-ne p2, v0, :cond_5

    .line 1111
    iget-object p1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/high16 p2, 0x43870000    # 270.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3

    .line 1113
    :cond_5
    iget-object p1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/high16 p2, 0x42b40000    # 90.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_3
    return-void
.end method

.method public onBindViewHolder(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V
    .locals 7

    .line 706
    iput-object p2, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mAction:Landroidx/leanback/widget/GuidedAction;

    .line 707
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x1a

    const/16 v4, 0x1c

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 708
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getInputType()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 709
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEnabledTextAlpha:F

    goto :goto_0

    :cond_0
    iget v6, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisabledTextAlpha:F

    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 711
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 712
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 713
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 714
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2

    .line 715
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getAutofillHints()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroidx/leanback/widget/GuidedActionsStylist$Api26Impl;->setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V

    goto :goto_1

    .line 718
    :cond_1
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    move-object v6, v1

    check-cast v6, [Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/leanback/widget/GuidedActionsStylist$Api26Impl;->setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V

    goto :goto_1

    .line 720
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    .line 722
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroidx/leanback/widget/GuidedActionsStylist$Api26Impl;->setImportantForAutofill(Landroid/view/View;I)V

    .line 725
    :cond_3
    :goto_1
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 726
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getDescriptionInputType()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 727
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x8

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 730
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEnabledDescriptionAlpha:F

    goto :goto_3

    .line 731
    :cond_5
    iget v6, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisabledDescriptionAlpha:F

    .line 730
    :goto_3
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 732
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 733
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 734
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 735
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_7

    .line 736
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->isDescriptionEditable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 737
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getAutofillHints()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/leanback/widget/GuidedActionsStylist$Api26Impl;->setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V

    goto :goto_4

    .line 739
    :cond_6
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/leanback/widget/GuidedActionsStylist$Api26Impl;->setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V

    goto :goto_4

    .line 741
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_8

    .line 743
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroidx/leanback/widget/GuidedActionsStylist$Api26Impl;->setImportantForAutofill(Landroid/view/View;I)V

    .line 747
    :cond_8
    :goto_4
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 748
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->onBindCheckMarkView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V

    .line 750
    :cond_9
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->setIcon(Landroid/widget/ImageView;Landroidx/leanback/widget/GuidedAction;)Z

    .line 752
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->hasMultilineDescription()Z

    move-result v0

    const/high16 v1, 0x20000

    if-eqz v0, :cond_a

    .line 753
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 754
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mTitleMaxLines:I

    invoke-static {v0, v2}, Landroidx/leanback/widget/GuidedActionsStylist;->setMaxLines(Landroid/widget/TextView;I)V

    .line 755
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 756
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    or-int/2addr v2, v1

    .line 755
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 757
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 758
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    iget-object v2, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    or-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 760
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    iget-object v2, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Landroidx/leanback/widget/GuidedActionsStylist;->getDescriptionMaxHeight(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto :goto_5

    .line 764
    :cond_a
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 765
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mTitleMinLines:I

    invoke-static {v0, v2}, Landroidx/leanback/widget/GuidedActionsStylist;->setMaxLines(Landroid/widget/TextView;I)V

    .line 767
    :cond_b
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 768
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    iget v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDescriptionMinLines:I

    invoke-static {v0, v2}, Landroidx/leanback/widget/GuidedActionsStylist;->setMaxLines(Landroid/widget/TextView;I)V

    .line 771
    :cond_c
    :goto_5
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 772
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->onBindActivatorView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V

    .line 774
    :cond_d
    invoke-virtual {p0, p1, v5, v5}, Landroidx/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 775
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 776
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 777
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_6

    .line 779
    :cond_e
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 780
    iget-object v0, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 782
    :goto_6
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->setupImeOptions(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V

    .line 784
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GuidedActionsStylist;->updateChevronAndVisibility(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 463
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/leanback/R$styleable;->LeanbackGuidedStepTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 465
    sget v1, Landroidx/leanback/R$styleable;->LeanbackGuidedStepTheme_guidedStepKeyline:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 467
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->onProvideLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    .line 468
    iget-boolean p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz p2, :cond_0

    sget p2, Landroidx/leanback/R$id;->guidedactions_content2:I

    goto :goto_0

    .line 469
    :cond_0
    sget p2, Landroidx/leanback/R$id;->guidedactions_content:I

    .line 468
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    .line 470
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    instance-of p2, p1, Landroidx/leanback/widget/VerticalGridView;

    if-eqz p2, :cond_1

    .line 471
    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    goto :goto_2

    .line 473
    :cond_1
    iget-boolean p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz p2, :cond_2

    .line 474
    sget p2, Landroidx/leanback/R$id;->guidedactions_list2:I

    goto :goto_1

    :cond_2
    sget p2, Landroidx/leanback/R$id;->guidedactions_list:I

    .line 473
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    if-eqz p1, :cond_5

    .line 478
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 479
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 480
    iget-boolean p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-nez p1, :cond_3

    .line 481
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    sget p2, Landroidx/leanback/R$id;->guidedactions_sub_list:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    .line 483
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    sget p2, Landroidx/leanback/R$id;->guidedactions_sub_list_background:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    .line 487
    :cond_3
    :goto_2
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/VerticalGridView;->setFocusable(Z)V

    .line 488
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/VerticalGridView;->setFocusableInTouchMode(Z)V

    .line 491
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 492
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 493
    sget v0, Landroidx/leanback/R$attr;->guidedActionEnabledChevronAlpha:I

    invoke-static {p1, p2, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getFloat(Landroid/content/Context;Landroid/util/TypedValue;I)F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEnabledChevronAlpha:F

    .line 494
    sget v0, Landroidx/leanback/R$attr;->guidedActionDisabledChevronAlpha:I

    invoke-static {p1, p2, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getFloat(Landroid/content/Context;Landroid/util/TypedValue;I)F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisabledChevronAlpha:F

    .line 495
    sget v0, Landroidx/leanback/R$attr;->guidedActionTitleMinLines:I

    invoke-static {p1, p2, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mTitleMinLines:I

    .line 496
    sget v0, Landroidx/leanback/R$attr;->guidedActionTitleMaxLines:I

    invoke-static {p1, p2, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mTitleMaxLines:I

    .line 497
    sget v0, Landroidx/leanback/R$attr;->guidedActionDescriptionMinLines:I

    invoke-static {p1, p2, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDescriptionMinLines:I

    .line 498
    sget v0, Landroidx/leanback/R$attr;->guidedActionVerticalPadding:I

    invoke-static {p1, p2, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getDimension(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mVerticalPadding:I

    .line 499
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 500
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisplayHeight:I

    .line 502
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$dimen;->lb_guidedactions_item_unselected_text_alpha:I

    invoke-static {v0, p2, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->getFloatValue(Landroid/content/res/Resources;Landroid/util/TypedValue;I)F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEnabledTextAlpha:F

    .line 504
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$dimen;->lb_guidedactions_item_disabled_text_alpha:I

    invoke-static {v0, p2, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->getFloatValue(Landroid/content/res/Resources;Landroid/util/TypedValue;I)F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisabledTextAlpha:F

    .line 506
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$dimen;->lb_guidedactions_item_unselected_description_text_alpha:I

    invoke-static {v0, p2, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->getFloatValue(Landroid/content/res/Resources;Landroid/util/TypedValue;I)F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEnabledDescriptionAlpha:F

    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$dimen;->lb_guidedactions_item_disabled_description_text_alpha:I

    invoke-static {v0, p2, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->getFloatValue(Landroid/content/res/Resources;Landroid/util/TypedValue;I)F

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mDisabledDescriptionAlpha:F

    .line 511
    invoke-static {p1}, Landroidx/leanback/widget/GuidanceStylingRelativeLayout;->getKeyLinePercent(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mKeyLinePercent:F

    .line 512
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    instance-of p2, p1, Landroidx/leanback/widget/GuidedActionsRelativeLayout;

    if-eqz p2, :cond_4

    .line 513
    check-cast p1, Landroidx/leanback/widget/GuidedActionsRelativeLayout;

    new-instance p2, Landroidx/leanback/widget/GuidedActionsStylist$1;

    invoke-direct {p2, p0}, Landroidx/leanback/widget/GuidedActionsStylist$1;-><init>(Landroidx/leanback/widget/GuidedActionsStylist;)V

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/GuidedActionsRelativeLayout;->setInterceptKeyEventListener(Landroidx/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;)V

    .line 533
    :cond_4
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    return-object p1

    .line 476
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No ListView exists."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;
    .locals 4

    .line 674
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 675
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->onProvideItemLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 676
    new-instance v1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v3, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {v1, v0, v2}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;-><init>(Landroid/view/View;Z)V

    return-object v1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;
    .locals 3

    if-nez p2, :cond_0

    .line 692
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GuidedActionsStylist;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object p1

    return-object p1

    .line 694
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 695
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->onProvideItemLayoutId(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 696
    new-instance v0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {v0, p2, v1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;-><init>(Landroid/view/View;Z)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    .line 560
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    .line 561
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    .line 562
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    .line 563
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    .line 564
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    .line 565
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    return-void
.end method

.method onEditActivatorView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1066
    invoke-virtual {p0, p1, p3}, Landroidx/leanback/widget/GuidedActionsStylist;->startExpanded(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 1067
    iget-object p2, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1068
    iget-object p2, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 1069
    iget-object p2, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    new-instance p3, Landroidx/leanback/widget/GuidedActionsStylist$3;

    invoke-direct {p3, p0, p1}, Landroidx/leanback/widget/GuidedActionsStylist$3;-><init>(Landroidx/leanback/widget/GuidedActionsStylist;Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1079
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->onUpdateActivatorView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1080
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

    if-eqz p2, :cond_1

    .line 1081
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v1

    invoke-interface {p2, v1}, Landroidx/leanback/widget/GuidedActionAdapter$EditListener;->onGuidedActionEditedAndProceed(Landroidx/leanback/widget/GuidedAction;)J

    .line 1084
    :cond_1
    iget-object p2, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1085
    iget-object p2, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    const/4 p2, 0x0

    .line 1086
    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/GuidedActionsStylist;->startExpanded(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 1087
    iget-object p3, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    iget-object p1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method protected onEditingModeChange(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected onEditingModeChange(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
    .locals 8

    .line 876
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    .line 877
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    .line 878
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz p2, :cond_6

    .line 880
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getEditTitle()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    .line 882
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    :cond_0
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getEditDescription()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v2, :cond_1

    if-eqz v7, :cond_1

    .line 886
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    :cond_1
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->isDescriptionEditable()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_2

    .line 890
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 891
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getDescriptionEditInputType()I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setInputType(I)V

    .line 892
    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocusFromTouch()Z

    .line 894
    :cond_2
    iput v5, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    goto/16 :goto_2

    .line 895
    :cond_3
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 897
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getEditInputType()I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setInputType(I)V

    .line 898
    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocusFromTouch()Z

    .line 900
    :cond_4
    iput v4, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    goto :goto_2

    .line 901
    :cond_5
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 902
    invoke-virtual {p0, p1, p2, p3}, Landroidx/leanback/widget/GuidedActionsStylist;->onEditActivatorView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 903
    iput v3, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 907
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v2, :cond_8

    .line 910
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    :cond_8
    iget v7, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-ne v7, v5, :cond_a

    if-eqz v2, :cond_c

    .line 914
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_9

    const/16 p3, 0x8

    goto :goto_0

    :cond_9
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 916
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getDescriptionInputType()I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_1

    .line 918
    :cond_a
    iget v2, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-ne v2, v4, :cond_b

    if-eqz v1, :cond_c

    .line 920
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getInputType()I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_1

    .line 922
    :cond_b
    iget v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-ne v1, v3, :cond_c

    .line 923
    iget-object v1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v1, :cond_c

    .line 924
    invoke-virtual {p0, p1, p2, p3}, Landroidx/leanback/widget/GuidedActionsStylist;->onEditActivatorView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 927
    :cond_c
    :goto_1
    iput v6, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    .line 930
    :cond_d
    :goto_2
    invoke-virtual {p0, p1, v0, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->onEditingModeChange(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;Z)V

    return-void
.end method

.method public onImeAppearing(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onImeDisappearing(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onProvideItemLayoutId()I
    .locals 1

    .line 630
    sget v0, Landroidx/leanback/R$layout;->lb_guidedactions_item:I

    return v0
.end method

.method public onProvideItemLayoutId(I)I
    .locals 3

    if-nez p1, :cond_0

    .line 653
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->onProvideItemLayoutId()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 655
    sget p1, Landroidx/leanback/R$layout;->lb_guidedactions_datepicker_item:I

    return p1

    .line 657
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViewType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not supported in GuidedActionsStylist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onProvideLayoutId()I
    .locals 1

    .line 599
    iget-boolean v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz v0, :cond_0

    sget v0, Landroidx/leanback/R$layout;->lb_guidedbuttonactions:I

    goto :goto_0

    :cond_0
    sget v0, Landroidx/leanback/R$layout;->lb_guidedactions:I

    :goto_0
    return v0
.end method

.method public onUpdateActivatorView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)Z
    .locals 5

    .line 1045
    instance-of v0, p2, Landroidx/leanback/widget/GuidedDatePickerAction;

    if-eqz v0, :cond_0

    .line 1046
    check-cast p2, Landroidx/leanback/widget/GuidedDatePickerAction;

    .line 1047
    iget-object p1, p1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    check-cast p1, Landroidx/leanback/widget/picker/DatePicker;

    .line 1048
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedDatePickerAction;->getDate()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/leanback/widget/picker/DatePicker;->getDate()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1049
    invoke-virtual {p1}, Landroidx/leanback/widget/picker/DatePicker;->getDate()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/GuidedDatePickerAction;->setDate(J)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onUpdateExpandedViewHolder(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1431
    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    .line 1432
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    goto :goto_0

    .line 1433
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v1

    iget-object v2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    if-eq v1, v2, :cond_1

    .line 1434
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroidx/leanback/widget/GuidedAction;

    .line 1435
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    .line 1439
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    .line 1440
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1}, Landroidx/leanback/widget/VerticalGridView;->getChildCount()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_2

    .line 1442
    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    .line 1443
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 1444
    invoke-direct {p0, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->updateChevronAndVisibility(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method onUpdateSubActionsGridView(Landroidx/leanback/widget/GuidedAction;Z)V
    .locals 3

    .line 1449
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_1

    .line 1451
    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1452
    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroidx/leanback/widget/VerticalGridView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedActionAdapter;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 p2, -0x2

    .line 1456
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p2, -0x1

    .line 1457
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1458
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/VerticalGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1459
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p2, v2}, Landroidx/leanback/widget/VerticalGridView;->setVisibility(I)V

    .line 1460
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1461
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p2}, Landroidx/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 1462
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getSubActions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    goto :goto_0

    .line 1466
    :cond_0
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p2}, Landroidx/leanback/widget/VerticalGridView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedActionAdapter;

    .line 1467
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/GuidedActionAdapter;->indexOf(Landroidx/leanback/widget/GuidedAction;)I

    move-result p1

    .line 1468
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p2}, Landroidx/leanback/widget/VerticalGridView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 1469
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1470
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1471
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/VerticalGridView;->setVisibility(I)V

    .line 1472
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1473
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/VerticalGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1474
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    .line 1475
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1}, Landroidx/leanback/widget/VerticalGridView;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public openInEditMode(Landroidx/leanback/widget/GuidedAction;)V
    .locals 3

    .line 792
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GuidedActionAdapter;

    .line 793
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionAdapter;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 794
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->isEditable()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 798
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    new-instance v2, Landroidx/leanback/widget/GuidedActionsStylist$2;

    invoke-direct {v2, p0, v0}, Landroidx/leanback/widget/GuidedActionsStylist$2;-><init>(Landroidx/leanback/widget/GuidedActionsStylist;Landroidx/leanback/widget/GuidedActionAdapter;)V

    invoke-virtual {p1, v1, v2}, Landroidx/leanback/widget/VerticalGridView;->setSelectedPosition(ILandroidx/leanback/widget/ViewHolderTask;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAsButtonActions()V
    .locals 2

    .line 540
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 544
    iput-boolean v0, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    return-void

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setAsButtonActions() must be called before creating views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setBackKeyToCollapseActivatorView(Z)V
    .locals 0

    .line 1195
    iput-boolean p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mBackToCollapseActivatorView:Z

    return-void
.end method

.method public final setBackKeyToCollapseSubActions(Z)V
    .locals 0

    .line 1172
    iput-boolean p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mBackToCollapseSubActions:Z

    return-void
.end method

.method public setEditListener(Landroidx/leanback/widget/GuidedActionAdapter$EditListener;)V
    .locals 0

    .line 1061
    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist;->mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

    return-void
.end method

.method public setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 841
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->isInEditing()Z

    move-result v0

    if-eq p3, v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {p0, p1, p2, p3}, Landroidx/leanback/widget/GuidedActionsStylist;->onEditingModeChange(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;Z)V

    :cond_0
    return-void
.end method

.method setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 847
    invoke-virtual {p0, p1, p2, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    return-void
.end method

.method setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
    .locals 1

    .line 851
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->isInEditing()Z

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    invoke-virtual {p0, p1, p2, p3}, Landroidx/leanback/widget/GuidedActionsStylist;->onEditingModeChange(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    :cond_0
    return-void
.end method

.method public setExpandedViewHolder(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1130
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->expandAction(Landroidx/leanback/widget/GuidedAction;Z)V

    return-void
.end method

.method protected setupImeOptions(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V
    .locals 0

    .line 825
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableTitleView()Landroid/widget/EditText;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->setupNextImeOptions(Landroid/widget/EditText;)V

    .line 826
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableDescriptionView()Landroid/widget/EditText;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GuidedActionsStylist;->setupNextImeOptions(Landroid/widget/EditText;)V

    return-void
.end method

.method startExpanded(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1294
    iget-object v2, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v2}, Landroidx/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 1296
    iget-object v5, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    .line 1297
    invoke-virtual {v5, v4}, Landroidx/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    check-cast v5, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-nez v1, :cond_0

    .line 1298
    iget-object v6, v5, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 1302
    invoke-virtual {v5}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v7

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    return-void

    :cond_3
    if-eqz v1, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 1313
    :goto_2
    invoke-virtual {v5}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v7

    if-eqz p2, :cond_c

    .line 1315
    invoke-static {v3}, Landroidx/leanback/transition/TransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v8

    if-eqz v7, :cond_5

    .line 1316
    iget-object v9, v5, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    goto :goto_3

    .line 1317
    :cond_5
    iget-object v9, v5, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v9, v9, v10

    :goto_3
    const/16 v10, 0x70

    .line 1318
    invoke-static {v10, v9}, Landroidx/leanback/transition/TransitionHelper;->createFadeAndShortSlide(IF)Ljava/lang/Object;

    move-result-object v9

    .line 1321
    new-instance v10, Landroidx/leanback/widget/GuidedActionsStylist$6;

    invoke-direct {v10, v0}, Landroidx/leanback/widget/GuidedActionsStylist$6;-><init>(Landroidx/leanback/widget/GuidedActionsStylist;)V

    invoke-static {v9, v10}, Landroidx/leanback/transition/TransitionHelper;->setEpicenterCallback(Ljava/lang/Object;Landroidx/leanback/transition/TransitionEpicenterCallback;)V

    .line 1331
    invoke-static {}, Landroidx/leanback/transition/TransitionHelper;->createChangeTransform()Ljava/lang/Object;

    move-result-object v10

    .line 1332
    invoke-static {v3}, Landroidx/leanback/transition/TransitionHelper;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x3

    .line 1333
    invoke-static {v12}, Landroidx/leanback/transition/TransitionHelper;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object v12

    .line 1335
    invoke-static {v3}, Landroidx/leanback/transition/TransitionHelper;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v13

    const-wide/16 v14, 0x64

    if-nez v1, :cond_6

    const-wide/16 v3, 0x96

    .line 1337
    invoke-static {v9, v3, v4}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1338
    invoke-static {v10, v14, v15}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1339
    invoke-static {v11, v14, v15}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1340
    invoke-static {v13, v14, v15}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    goto :goto_4

    .line 1342
    :cond_6
    invoke-static {v12, v14, v15}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    const-wide/16 v3, 0x32

    .line 1343
    invoke-static {v13, v3, v4}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1344
    invoke-static {v10, v3, v4}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1345
    invoke-static {v11, v3, v4}, Landroidx/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_9

    .line 1348
    iget-object v4, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    .line 1349
    invoke-virtual {v4, v3}, Landroidx/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroidx/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-ne v4, v5, :cond_8

    if-eqz v7, :cond_7

    .line 1353
    iget-object v14, v4, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v10, v14}, Landroidx/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1354
    iget-object v4, v4, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v11, v4}, Landroidx/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    :cond_7
    const/4 v14, 0x1

    goto :goto_6

    .line 1358
    :cond_8
    iget-object v14, v4, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v9, v14}, Landroidx/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1359
    iget-object v4, v4, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    const/4 v14, 0x1

    invoke-static {v12, v4, v14}, Landroidx/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;Landroid/view/View;Z)V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1362
    :cond_9
    iget-object v2, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-static {v13, v2}, Landroidx/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1363
    iget-object v2, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-static {v13, v2}, Landroidx/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1364
    invoke-static {v8, v9}, Landroidx/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v7, :cond_a

    .line 1368
    invoke-static {v8, v10}, Landroidx/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1369
    invoke-static {v8, v11}, Landroidx/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1371
    :cond_a
    invoke-static {v8, v12}, Landroidx/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1372
    invoke-static {v8, v13}, Landroidx/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1373
    iput-object v8, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    .line 1374
    new-instance v2, Landroidx/leanback/widget/GuidedActionsStylist$7;

    invoke-direct {v2, v0}, Landroidx/leanback/widget/GuidedActionsStylist$7;-><init>(Landroidx/leanback/widget/GuidedActionsStylist;)V

    invoke-static {v8, v2}, Landroidx/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroidx/leanback/transition/TransitionListener;)V

    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    .line 1382
    iget-object v2, v1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1383
    iget-object v3, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v3}, Landroidx/leanback/widget/VerticalGridView;->getTop()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/VerticalGridView;->offsetTopAndBottom(I)V

    .line 1384
    iget-object v3, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1386
    :cond_b
    iget-object v2, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    iget-object v3, v0, Landroidx/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroidx/leanback/transition/TransitionHelper;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1388
    :cond_c
    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/GuidedActionsStylist;->onUpdateExpandedViewHolder(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    if-eqz v7, :cond_d

    .line 1390
    invoke-virtual {v5}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroidx/leanback/widget/GuidedActionsStylist;->onUpdateSubActionsGridView(Landroidx/leanback/widget/GuidedAction;Z)V

    :cond_d
    return-void
.end method

.method public startExpandedTransition(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1160
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->expandAction(Landroidx/leanback/widget/GuidedAction;Z)V

    return-void
.end method
