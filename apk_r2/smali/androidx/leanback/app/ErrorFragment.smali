.class public Landroidx/leanback/app/ErrorFragment;
.super Landroidx/leanback/app/BrandedFragment;
.source "ErrorFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mButton:Landroid/widget/Button;

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButtonText:Ljava/lang/String;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mErrorFrame:Landroid/view/ViewGroup;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsBackgroundTranslucent:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/leanback/app/BrandedFragment;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Landroidx/leanback/app/ErrorFragment;->mIsBackgroundTranslucent:Z

    return-void
.end method

.method private static getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 2

    .line 249
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 250
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 251
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 252
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    return-object p0
.end method

.method private static setTopMargin(Landroid/widget/TextView;I)V
    .locals 1

    .line 256
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 257
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 258
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateBackground()V
    .locals 3

    .line 207
    iget-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mErrorFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 208
    iget-object v1, p0, Landroidx/leanback/app/ErrorFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 212
    iget-boolean v2, p0, Landroidx/leanback/app/ErrorFragment;->mIsBackgroundTranslucent:Z

    if-eqz v2, :cond_1

    .line 213
    sget v2, Landroidx/leanback/R$color;->lb_error_background_color_translucent:I

    goto :goto_0

    .line 214
    :cond_1
    sget v2, Landroidx/leanback/R$color;->lb_error_background_color_opaque:I

    .line 211
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateButton()V
    .locals 2

    .line 234
    iget-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 235
    iget-object v1, p0, Landroidx/leanback/app/ErrorFragment;->mButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Landroidx/leanback/app/ErrorFragment;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Landroidx/leanback/app/ErrorFragment;->mButtonText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_1
    return-void
.end method

.method private updateImageDrawable()V
    .locals 2

    .line 227
    iget-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 228
    iget-object v1, p0, Landroidx/leanback/app/ErrorFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/leanback/app/ErrorFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateMessage()V
    .locals 2

    .line 220
    iget-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 221
    iget-object v1, p0, Landroidx/leanback/app/ErrorFragment;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/leanback/app/ErrorFragment;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 94
    iget-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 166
    iget-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 112
    iget-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isBackgroundTranslucent()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Landroidx/leanback/app/ErrorFragment;->mIsBackgroundTranslucent:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 172
    sget v0, Landroidx/leanback/R$layout;->lb_error_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 174
    sget v2, Landroidx/leanback/R$id;->error_frame:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Landroidx/leanback/app/ErrorFragment;->mErrorFrame:Landroid/view/ViewGroup;

    .line 175
    invoke-direct {p0}, Landroidx/leanback/app/ErrorFragment;->updateBackground()V

    .line 177
    iget-object v2, p0, Landroidx/leanback/app/ErrorFragment;->mErrorFrame:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v2, p3}, Landroidx/leanback/app/ErrorFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 179
    sget p1, Landroidx/leanback/R$id;->image:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/leanback/app/ErrorFragment;->mImageView:Landroid/widget/ImageView;

    .line 180
    invoke-direct {p0}, Landroidx/leanback/app/ErrorFragment;->updateImageDrawable()V

    .line 182
    sget p1, Landroidx/leanback/R$id;->message:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/leanback/app/ErrorFragment;->mTextView:Landroid/widget/TextView;

    .line 183
    invoke-direct {p0}, Landroidx/leanback/app/ErrorFragment;->updateMessage()V

    .line 185
    sget p1, Landroidx/leanback/R$id;->button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Landroidx/leanback/app/ErrorFragment;->mButton:Landroid/widget/Button;

    .line 186
    invoke-direct {p0}, Landroidx/leanback/app/ErrorFragment;->updateButton()V

    .line 188
    iget-object p1, p0, Landroidx/leanback/app/ErrorFragment;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroidx/leanback/app/ErrorFragment;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 191
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Landroidx/leanback/R$dimen;->lb_error_under_image_baseline_margin:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 194
    :goto_0
    iget-object v2, p0, Landroidx/leanback/app/ErrorFragment;->mTextView:Landroid/widget/TextView;

    iget v3, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p3, v3

    invoke-static {v2, p3}, Landroidx/leanback/app/ErrorFragment;->setTopMargin(Landroid/widget/TextView;I)V

    if-eqz p2, :cond_1

    .line 198
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Landroidx/leanback/R$dimen;->lb_error_under_message_baseline_margin:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 201
    :cond_1
    iget-object p2, p0, Landroidx/leanback/app/ErrorFragment;->mButton:Landroid/widget/Button;

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v1, p1

    invoke-static {p2, v1}, Landroidx/leanback/app/ErrorFragment;->setTopMargin(Landroid/widget/TextView;I)V

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .line 244
    invoke-super {p0}, Landroidx/leanback/app/BrandedFragment;->onStart()V

    .line 245
    iget-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mErrorFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 79
    iput-object p1, p0, Landroidx/leanback/app/ErrorFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 81
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 82
    :goto_1
    iput-boolean p1, p0, Landroidx/leanback/app/ErrorFragment;->mIsBackgroundTranslucent:Z

    .line 85
    :cond_2
    invoke-direct {p0}, Landroidx/leanback/app/ErrorFragment;->updateBackground()V

    .line 86
    invoke-direct {p0}, Landroidx/leanback/app/ErrorFragment;->updateMessage()V

    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 157
    iput-object p1, p0, Landroidx/leanback/app/ErrorFragment;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 158
    invoke-direct {p0}, Landroidx/leanback/app/ErrorFragment;->updateButton()V

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Landroidx/leanback/app/ErrorFragment;->mButtonText:Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Landroidx/leanback/app/ErrorFragment;->updateButton()V

    return-void
.end method

.method public setDefaultBackground(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Landroidx/leanback/app/ErrorFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    iput-boolean p1, p0, Landroidx/leanback/app/ErrorFragment;->mIsBackgroundTranslucent:Z

    .line 62
    invoke-direct {p0}, Landroidx/leanback/app/ErrorFragment;->updateBackground()V

    .line 63
    invoke-direct {p0}, Landroidx/leanback/app/ErrorFragment;->updateMessage()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 103
    iput-object p1, p0, Landroidx/leanback/app/ErrorFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-direct {p0}, Landroidx/leanback/app/ErrorFragment;->updateImageDrawable()V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 121
    iput-object p1, p0, Landroidx/leanback/app/ErrorFragment;->mMessage:Ljava/lang/CharSequence;

    .line 122
    invoke-direct {p0}, Landroidx/leanback/app/ErrorFragment;->updateMessage()V

    return-void
.end method
