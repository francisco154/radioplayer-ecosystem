.class public abstract Landroidx/leanback/app/OnboardingFragment;
.super Landroid/app/Fragment;
.source "OnboardingFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DESCRIPTION_START_DELAY_MS:J = 0x21L

.field private static final HEADER_ANIMATION_DURATION_MS:J = 0x1a1L

.field private static final HEADER_APPEAR_DELAY_MS:J = 0x1f4L

.field private static final HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final KEY_CURRENT_PAGE_INDEX:Ljava/lang/String; = "leanback.onboarding.current_page_index"

.field private static final KEY_ENTER_ANIMATION_FINISHED:Ljava/lang/String; = "leanback.onboarding.enter_animation_finished"

.field private static final KEY_LOGO_ANIMATION_FINISHED:Ljava/lang/String; = "leanback.onboarding.logo_animation_finished"

.field private static final LOGO_SPLASH_PAUSE_DURATION_MS:J = 0x535L

.field private static final SLIDE_DISTANCE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "OnboardingF"

.field private static sSlideDistance:I


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mArrowBackgroundColor:I

.field private mArrowBackgroundColorSet:Z

.field private mArrowColor:I

.field private mArrowColorSet:Z

.field mCurrentPageIndex:I

.field mDescriptionView:Landroid/widget/TextView;

.field private mDescriptionViewTextColor:I

.field private mDescriptionViewTextColorSet:Z

.field private mDotBackgroundColor:I

.field private mDotBackgroundColorSet:Z

.field mEnterAnimationFinished:Z

.field private mIconResourceId:I

.field mIsLtr:Z

.field mLogoAnimationFinished:Z

.field private mLogoResourceId:I

.field private mLogoView:Landroid/widget/ImageView;

.field private mMainIconView:Landroid/widget/ImageView;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

.field mStartButton:Landroid/view/View;

.field private mStartButtonText:Ljava/lang/CharSequence;

.field private mStartButtonTextSet:Z

.field private mThemeWrapper:Landroid/view/ContextThemeWrapper;

.field mTitleView:Landroid/widget/TextView;

.field private mTitleViewTextColor:I

.field private mTitleViewTextColorSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/leanback/app/OnboardingFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 175
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/leanback/app/OnboardingFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 206
    iput v0, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleViewTextColor:I

    .line 210
    iput v0, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionViewTextColor:I

    .line 214
    iput v0, p0, Landroidx/leanback/app/OnboardingFragment;->mDotBackgroundColor:I

    .line 218
    iput v0, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowColor:I

    .line 222
    iput v0, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowBackgroundColor:I

    .line 232
    new-instance v0, Landroidx/leanback/app/OnboardingFragment$1;

    invoke-direct {v0, p0}, Landroidx/leanback/app/OnboardingFragment$1;-><init>(Landroidx/leanback/app/OnboardingFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 247
    new-instance v0, Landroidx/leanback/app/OnboardingFragment$2;

    invoke-direct {v0, p0}, Landroidx/leanback/app/OnboardingFragment$2;-><init>(Landroidx/leanback/app/OnboardingFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;
    .locals 6

    .line 993
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v3, 0x800005

    if-eq p3, v3, :cond_3

    :cond_1
    if-nez v0, :cond_2

    const v0, 0x800003

    if-eq p3, v0, :cond_3

    :cond_2
    const/4 v0, 0x5

    if-ne p3, v0, :cond_4

    :cond_3
    const/4 p3, 0x1

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    :goto_1
    const/4 v0, 0x0

    const/4 v3, 0x2

    if-eqz p2, :cond_6

    .line 1000
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {p1, p2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 1001
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-eqz p3, :cond_5

    .line 1002
    sget p3, Landroidx/leanback/app/OnboardingFragment;->sSlideDistance:I

    goto :goto_2

    :cond_5
    sget p3, Landroidx/leanback/app/OnboardingFragment;->sSlideDistance:I

    neg-int p3, p3

    :goto_2
    int-to-float p3, p3

    new-array v5, v3, [F

    aput p3, v5, v2

    aput v0, v5, v1

    .line 1001
    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 1003
    sget-object v0, Landroidx/leanback/app/OnboardingFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1004
    invoke-virtual {p3, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    .line 1006
    :cond_6
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-static {p1, p2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 1007
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-eqz p3, :cond_7

    .line 1008
    sget p3, Landroidx/leanback/app/OnboardingFragment;->sSlideDistance:I

    goto :goto_3

    :cond_7
    sget p3, Landroidx/leanback/app/OnboardingFragment;->sSlideDistance:I

    neg-int p3, p3

    :goto_3
    int-to-float p3, p3

    new-array v5, v3, [F

    aput v0, v5, v2

    aput p3, v5, v1

    .line 1007
    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 1009
    sget-object v0, Landroidx/leanback/app/OnboardingFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1010
    invoke-virtual {p3, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_4
    const-wide/16 v4, 0x1a1

    .line 1012
    invoke-virtual {p2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1013
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1014
    invoke-virtual {p3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1015
    invoke-virtual {p3, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1016
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1017
    new-array v0, v3, [Landroid/animation/Animator;

    aput-object p2, v0, v2

    aput-object p3, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p2, 0x0

    cmp-long v0, p4, p2

    if-lez v0, :cond_8

    .line 1019
    invoke-virtual {p1, p4, p5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_8
    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 1

    .line 566
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private onPageChangedInternal(I)V
    .locals 10

    .line 906
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 909
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget v1, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    .line 911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 914
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getCurrentPageIndex()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 916
    iget-object v4, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    const v6, 0x800003

    const-wide/16 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    iget-object v4, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    const-wide/16 v7, 0x21

    invoke-direct/range {v3 .. v8}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    iget-object v4, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    const v6, 0x800005

    const-wide/16 v7, 0x1f4

    const/4 v5, 0x1

    invoke-direct/range {v3 .. v8}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    iget-object v5, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    const v7, 0x800005

    const-wide/16 v8, 0x215

    const/4 v6, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 925
    :cond_1
    iget-object v5, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    const v7, 0x800005

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    iget-object v4, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    const v6, 0x800005

    const-wide/16 v7, 0x21

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    iget-object v4, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    const v6, 0x800003

    const-wide/16 v7, 0x1f4

    const/4 v5, 0x1

    invoke-direct/range {v3 .. v8}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    iget-object v5, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    const v7, 0x800003

    const-wide/16 v8, 0x215

    const/4 v6, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getCurrentPageIndex()I

    move-result v3

    .line 934
    new-instance v4, Landroidx/leanback/app/OnboardingFragment$6;

    invoke-direct {v4, p0, v3}, Landroidx/leanback/app/OnboardingFragment$6;-><init>(Landroidx/leanback/app/OnboardingFragment;I)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 942
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    .line 944
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getCurrentPageIndex()I

    move-result v3

    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    .line 945
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 946
    sget v2, Landroidx/leanback/R$animator;->lb_onboarding_page_indicator_fade_out:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 948
    iget-object v3, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 949
    new-instance v3, Landroidx/leanback/app/OnboardingFragment$7;

    invoke-direct {v3, p0}, Landroidx/leanback/app/OnboardingFragment$7;-><init>(Landroidx/leanback/app/OnboardingFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 955
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    sget v2, Landroidx/leanback/R$animator;->lb_onboarding_start_button_fade_in:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 958
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 959
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 960
    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne p1, v3, :cond_3

    .line 961
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {v2, v5}, Landroidx/leanback/widget/PagingIndicator;->setVisibility(I)V

    .line 962
    sget v2, Landroidx/leanback/R$animator;->lb_onboarding_page_indicator_fade_in:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 964
    iget-object v3, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 965
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    sget v2, Landroidx/leanback/R$animator;->lb_onboarding_start_button_fade_out:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 968
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 969
    new-instance v2, Landroidx/leanback/app/OnboardingFragment$8;

    invoke-direct {v2, p0}, Landroidx/leanback/app/OnboardingFragment$8;-><init>(Landroidx/leanback/app/OnboardingFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 975
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    :cond_3
    :goto_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    .line 978
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 979
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 980
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v0, p1}, Landroidx/leanback/app/OnboardingFragment;->onPageChanged(II)V

    return-void
.end method

.method private resolveTheme()V
    .locals 5

    .line 548
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    .line 549
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->onProvideTheme()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 553
    sget v1, Landroidx/leanback/R$attr;->onboardingTheme:I

    .line 554
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 555
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0

    .line 561
    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getArrowBackgroundColor()I
    .locals 1

    .line 510
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowBackgroundColor:I

    return v0
.end method

.method public final getArrowColor()I
    .locals 1

    .line 488
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowColor:I

    return v0
.end method

.method protected final getCurrentPageIndex()I
    .locals 1

    .line 839
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    return v0
.end method

.method public final getDescriptionViewTextColor()I
    .locals 1

    .line 443
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionViewTextColor:I

    return v0
.end method

.method public final getDotBackgroundColor()I
    .locals 1

    .line 464
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mDotBackgroundColor:I

    return v0
.end method

.method public final getIconResourceId()I
    .locals 1

    .line 1039
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mIconResourceId:I

    return v0
.end method

.method public final getLogoResourceId()I
    .locals 1

    .line 585
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoResourceId:I

    return v0
.end method

.method protected abstract getPageCount()I
.end method

.method protected abstract getPageDescription(I)Ljava/lang/CharSequence;
.end method

.method protected abstract getPageTitle(I)Ljava/lang/CharSequence;
.end method

.method public final getStartButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 519
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleViewTextColor()I
    .locals 1

    .line 421
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleViewTextColor:I

    return v0
.end method

.method hideLogoView()V
    .locals 5

    .line 655
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 657
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mIconResourceId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 658
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mMainIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 659
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mMainIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 662
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 665
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v2

    .line 664
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/leanback/app/OnboardingFragment;->getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 666
    sget v3, Landroidx/leanback/R$id;->background_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 668
    invoke-virtual {p0, v2, v3}, Landroidx/leanback/app/OnboardingFragment;->onCreateBackgroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 670
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 671
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 673
    :cond_1
    sget v3, Landroidx/leanback/R$id;->content_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 674
    invoke-virtual {p0, v2, v3}, Landroidx/leanback/app/OnboardingFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 676
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 677
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 679
    :cond_2
    sget v3, Landroidx/leanback/R$id;->foreground_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 681
    invoke-virtual {p0, v2, v3}, Landroidx/leanback/app/OnboardingFragment;->onCreateForegroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 683
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 684
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 687
    :cond_3
    sget v2, Landroidx/leanback/R$id;->page_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 688
    sget v2, Landroidx/leanback/R$id;->content_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 689
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    .line 690
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/PagingIndicator;->setPageCount(I)V

    .line 691
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget v3, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {v0, v3, v1}, Landroidx/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    .line 693
    :cond_4
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_5

    .line 694
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 696
    :cond_5
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/PagingIndicator;->setVisibility(I)V

    .line 699
    :goto_0
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    iget v1, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v1}, Landroidx/leanback/app/OnboardingFragment;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    iget v1, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v1}, Landroidx/leanback/app/OnboardingFragment;->getPageDescription(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final isLogoAnimationFinished()Z
    .locals 1

    .line 803
    iget-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    return v0
.end method

.method protected moveToNextPage()V
    .locals 2

    .line 301
    iget-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_0

    return-void

    .line 305
    :cond_0
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 306
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    .line 307
    invoke-direct {p0, v0}, Landroidx/leanback/app/OnboardingFragment;->onPageChangedInternal(I)V

    :cond_1
    return-void
.end method

.method protected moveToPreviousPage()V
    .locals 2

    .line 287
    iget-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 292
    iput v1, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    .line 293
    invoke-direct {p0, v0}, Landroidx/leanback/app/OnboardingFragment;->onPageChangedInternal(I)V

    :cond_1
    return-void
.end method

.method protected abstract onCreateBackgroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onCreateDescriptionAnimator()Landroid/animation/Animator;
    .locals 2

    .line 783
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/leanback/R$animator;->lb_onboarding_description_enter:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateEnterAnimation()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract onCreateForegroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onCreateLogoAnimation()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateTitleAnimator()Landroid/animation/Animator;
    .locals 2

    .line 793
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/leanback/R$animator;->lb_onboarding_title_enter:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 314
    invoke-direct {p0}, Landroidx/leanback/app/OnboardingFragment;->resolveTheme()V

    .line 315
    invoke-direct {p0, p1}, Landroidx/leanback/app/OnboardingFragment;->getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 316
    sget p3, Landroidx/leanback/R$layout;->lb_onboarding_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 318
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mIsLtr:Z

    .line 320
    sget p2, Landroidx/leanback/R$id;->page_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/PagingIndicator;

    iput-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    .line 321
    iget-object p3, p0, Landroidx/leanback/app/OnboardingFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/PagingIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget-object p3, p0, Landroidx/leanback/app/OnboardingFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/PagingIndicator;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 323
    sget p2, Landroidx/leanback/R$id;->button_start:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    .line 324
    iget-object p3, p0, Landroidx/leanback/app/OnboardingFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    iget-object p3, p0, Landroidx/leanback/app/OnboardingFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 326
    sget p2, Landroidx/leanback/R$id;->main_icon:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mMainIconView:Landroid/widget/ImageView;

    .line 327
    sget p2, Landroidx/leanback/R$id;->logo:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoView:Landroid/widget/ImageView;

    .line 328
    sget p2, Landroidx/leanback/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    .line 329
    sget p2, Landroidx/leanback/R$id;->description:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    .line 331
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleViewTextColorSet:Z

    if-eqz p2, :cond_1

    .line 332
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    iget p3, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleViewTextColor:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    :cond_1
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionViewTextColorSet:Z

    if-eqz p2, :cond_2

    .line 335
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    iget p3, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionViewTextColor:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    :cond_2
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mDotBackgroundColorSet:Z

    if-eqz p2, :cond_3

    .line 338
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget p3, p0, Landroidx/leanback/app/OnboardingFragment;->mDotBackgroundColor:I

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    .line 340
    :cond_3
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowColorSet:Z

    if-eqz p2, :cond_4

    .line 341
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget p3, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowColor:I

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/PagingIndicator;->setArrowColor(I)V

    .line 343
    :cond_4
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowBackgroundColorSet:Z

    if-eqz p2, :cond_5

    .line 344
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget p3, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowBackgroundColor:I

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    .line 346
    :cond_5
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButtonTextSet:Z

    if-eqz p2, :cond_6

    .line 347
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    check-cast p2, Landroid/widget/Button;

    iget-object p3, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :cond_6
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object p2

    .line 350
    sget p3, Landroidx/leanback/app/OnboardingFragment;->sSlideDistance:I

    if-nez p3, :cond_7

    .line 351
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 352
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 p3, 0x42700000    # 60.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    sput p2, Landroidx/leanback/app/OnboardingFragment;->sSlideDistance:I

    .line 354
    :cond_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    return-object p1
.end method

.method protected onFinishFragment()V
    .locals 0

    return-void
.end method

.method protected onLogoAnimationFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 713
    invoke-virtual {p0, v0}, Landroidx/leanback/app/OnboardingFragment;->startEnterAnimation(Z)V

    return-void
.end method

.method protected onPageChanged(II)V
    .locals 0

    return-void
.end method

.method public onProvideTheme()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 396
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 397
    const-string v0, "leanback.onboarding.current_page_index"

    iget v1, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 398
    const-string v0, "leanback.onboarding.logo_animation_finished"

    iget-boolean v1, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 399
    const-string v0, "leanback.onboarding.enter_animation_finished"

    iget-boolean v1, p0, Landroidx/leanback/app/OnboardingFragment;->mEnterAnimationFinished:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 360
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 362
    iput p2, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    .line 363
    iput-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    .line 364
    iput-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mEnterAnimationFinished:Z

    .line 365
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {v0, p2, p2}, Landroidx/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Landroidx/leanback/app/OnboardingFragment$3;

    invoke-direct {p2, p0}, Landroidx/leanback/app/OnboardingFragment$3;-><init>(Landroidx/leanback/app/OnboardingFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 378
    :cond_0
    const-string p1, "leanback.onboarding.current_page_index"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    .line 379
    const-string p1, "leanback.onboarding.logo_animation_finished"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    .line 380
    const-string p1, "leanback.onboarding.enter_animation_finished"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/leanback/app/OnboardingFragment;->mEnterAnimationFinished:Z

    .line 381
    iget-boolean p1, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    if-nez p1, :cond_1

    .line 384
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->startLogoAnimation()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 385
    iput-boolean p1, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    .line 386
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->onLogoAnimationFinished()V

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->onLogoAnimationFinished()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setArrowBackgroundColor(I)V
    .locals 1

    .line 497
    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowBackgroundColor:I

    const/4 v0, 0x1

    .line 498
    iput-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowBackgroundColorSet:Z

    .line 499
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/PagingIndicator;->setArrowBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setArrowColor(I)V
    .locals 1

    .line 475
    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowColor:I

    const/4 v0, 0x1

    .line 476
    iput-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowColorSet:Z

    .line 477
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/PagingIndicator;->setArrowColor(I)V

    :cond_0
    return-void
.end method

.method public setDescriptionViewTextColor(I)V
    .locals 1

    .line 430
    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionViewTextColor:I

    const/4 v0, 0x1

    .line 431
    iput-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionViewTextColorSet:Z

    .line 432
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setDotBackgroundColor(I)V
    .locals 1

    .line 451
    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mDotBackgroundColor:I

    const/4 v0, 0x1

    .line 452
    iput-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mDotBackgroundColorSet:Z

    .line 453
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public final setIconResouceId(I)V
    .locals 1

    .line 1028
    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mIconResourceId:I

    .line 1029
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mMainIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1030
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1031
    iget-object p1, p0, Landroidx/leanback/app/OnboardingFragment;->mMainIconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final setLogoResourceId(I)V
    .locals 0

    .line 576
    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoResourceId:I

    return-void
.end method

.method public setStartButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 529
    iput-object p1, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButtonText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    .line 530
    iput-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButtonTextSet:Z

    .line 531
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 532
    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleViewTextColor(I)V
    .locals 1

    .line 408
    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleViewTextColor:I

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleViewTextColorSet:Z

    .line 410
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method protected final startEnterAnimation(Z)V
    .locals 3

    .line 726
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 730
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->hideLogoView()V

    .line 731
    iget-boolean v1, p0, Landroidx/leanback/app/OnboardingFragment;->mEnterAnimationFinished:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    return-void

    .line 734
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 735
    sget v1, Landroidx/leanback/R$animator;->lb_onboarding_page_indicator_enter:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 737
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 738
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->onCreateTitleAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 743
    iget-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 744
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->onCreateDescriptionAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 750
    iget-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 751
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_4
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->onCreateEnterAnimation()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 757
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 764
    :cond_6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    .line 765
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 766
    iget-object p1, p0, Landroidx/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 767
    iget-object p1, p0, Landroidx/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Landroidx/leanback/app/OnboardingFragment$5;

    invoke-direct {v0, p0}, Landroidx/leanback/app/OnboardingFragment$5;-><init>(Landroidx/leanback/app/OnboardingFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 774
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method startLogoAnimation()Z
    .locals 7

    .line 602
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 607
    :cond_0
    iget v2, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoResourceId:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 608
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoView:Landroid/widget/ImageView;

    iget v4, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoResourceId:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 610
    sget v2, Landroidx/leanback/R$animator;->lb_onboarding_logo_enter:I

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 612
    sget v4, Landroidx/leanback/R$animator;->lb_onboarding_logo_exit:I

    invoke-static {v0, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    const-wide/16 v5, 0x535

    .line 614
    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 615
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x2

    .line 616
    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v2, v6, v1

    aput-object v4, v6, v3

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 617
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    .line 620
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->onCreateLogoAnimation()Landroid/animation/Animator;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_2

    .line 623
    new-instance v1, Landroidx/leanback/app/OnboardingFragment$4;

    invoke-direct {v1, p0, v0}, Landroidx/leanback/app/OnboardingFragment$4;-><init>(Landroidx/leanback/app/OnboardingFragment;Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 632
    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    return v3

    :cond_2
    return v1
.end method
