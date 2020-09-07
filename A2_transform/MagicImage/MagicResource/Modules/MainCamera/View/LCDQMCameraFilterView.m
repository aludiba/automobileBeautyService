#import "LCDQMCameraFilterView.h"
#import "Constants.h"
#import <Masonry.h>
#define kCameraFilterCollectionViewCellID         @"CameraFilterCollectionViewCellID"
#define kCameraFilterCollectionImageViewTag       100
#define kCameraFilterCollectionLabelTag           101
#define kCameraFilterCollectionMaskViewTag        102
#define kCameraFilterViewHeight                   (kScreenH-kScreenW*4.0f/3.0f)
#define kCameraFilterViewItemSize                 60
#define kCameraFilterCollectionViewHeight         100
@interface LCDQMCameraFilterView ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) NSArray<LCDQMFilterModel *> *LCDfilterModels;
@property (nonatomic, strong) UICollectionView *LCDcollectionView;
@property (nonatomic, strong) NSIndexPath *LCDlastSelectedIndexPath;
@property (nonatomic, strong) UISlider *LCDslider;
@property (nonatomic, strong) UILabel *LCDsliderLabel;
@end
@implementation LCDQMCameraFilterView
+ (instancetype)LCDcameraFilterView
{
    CGSize LCDsize = [UIScreen mainScreen].bounds.size;
    CGRect LCDrect = CGRectMake(0, LCDsize.height, LCDsize.width, kCameraFilterViewHeight);
    LCDQMCameraFilterView *LCDview = [[LCDQMCameraFilterView alloc] initWithFrame:LCDrect];
    LCDview.LCDfilterModels = [LCDQMFilterModel buildFilterModelsWithPath:kFilterPath];
    return LCDview;
}
- (instancetype)initWithFrame:(CGRect)LCDframe
{
    if (self = [super initWithFrame:LCDframe]) {
        [self setHidden:YES];
        [self setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.3f]];
        [self LCDbuildCollectionView];
    }
    return self;
}
- (UICollectionViewFlowLayout *)LCDcollectionViewForFlowLayout
{
    UICollectionViewFlowLayout *LCDlayout = [[UICollectionViewFlowLayout alloc] init];
    LCDlayout.itemSize = CGSizeMake(kCameraFilterViewItemSize, kCameraFilterViewItemSize);
    LCDlayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    LCDlayout.minimumLineSpacing = 5;
    LCDlayout.sectionInset = UIEdgeInsetsMake(5, 5, 0, 5);
    return LCDlayout;
}
- (void)LCDbuildCollectionView
{
    UICollectionViewFlowLayout *LCDlayout = [self LCDcollectionViewForFlowLayout];
    UICollectionView *LCDcollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, kCameraFilterCollectionViewHeight) collectionViewLayout:LCDlayout];
    LCDcollectionView.delegate = self;
    LCDcollectionView.dataSource = self;
    LCDcollectionView.scrollsToTop = NO;
    LCDcollectionView.showsVerticalScrollIndicator = NO;
    LCDcollectionView.showsHorizontalScrollIndicator = NO;
    LCDcollectionView.backgroundColor = [UIColor clearColor];
    [LCDcollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:kCameraFilterCollectionViewCellID];
    [self addSubview:LCDcollectionView];
    _LCDcollectionView = LCDcollectionView;
}
- (void)LCDtoggleSliderView
{
    if (!self.LCDslider) {
        self.LCDslider = [[UISlider alloc] initWithFrame:CGRectMake(30, self.frame.origin.y-45, kScreenW-60, 30)];
        self.LCDslider.hidden = YES;
        self.LCDslider.tintColor = [UIColor colorWithRed:8/255.0 green:157/255.0 blue:184/255.0 alpha:1.0];
        self.LCDslider.maximumTrackTintColor = [UIColor whiteColor];
        [self.superview addSubview:self.LCDslider];
        self.LCDsliderLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.LCDslider.frame.origin.x+self.LCDslider.value*(kScreenW-90)-8, self.LCDslider.frame.origin.y-30, 40, 30)];
        self.LCDsliderLabel.textAlignment = NSTextAlignmentCenter;
        self.LCDsliderLabel.font = [UIFont systemFontOfSize:22];
        self.LCDsliderLabel.textColor = [UIColor whiteColor];
        self.LCDsliderLabel.text = [NSString stringWithFormat:@"%.0f", floor(self.LCDslider.value*100)];
        [self.superview addSubview:self.LCDsliderLabel];
        weakSelf();
    }
    self.LCDslider.alpha = 1.0f;
    self.LCDsliderLabel.alpha = 1.0f;
    self.LCDslider.hidden = !self.LCDslider.hidden;
    self.LCDsliderLabel.hidden = self.LCDslider.hidden;
}
#pragma mark - PublicMethod
- (void)LCDreloadData
{
    [_LCDcollectionView reloadData];
}
- (void)LCDtoggleInView:(UIView *)LCDview
{
    if (self.hidden) {
        [self LCDshowInView:LCDview];
    }else {
        [self LCDhide];
    }
}
- (void)LCDshowInView:(UIView *)LCDview
{
    if (!self.superview) {
        [LCDview addSubview:self];
    }
    if (!self.hidden) {
        return;
    }
    if (_LCDfilterWillShowBlock) {
        _LCDfilterWillShowBlock();
    }
    self.hidden = NO;
    CGSize LCDsize = [UIScreen mainScreen].bounds.size;
    [UIView animateWithDuration:0.4f animations:^{
        self.frame = CGRectMake(0, LCDsize.height - kCameraFilterViewHeight, LCDsize.width, kCameraFilterViewHeight);
    } completion:^(BOOL finished) {
        [_LCDcollectionView scrollToItemAtIndexPath:_LCDlastSelectedIndexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
        [self selectConllectionViewAtIndex:_LCDlastSelectedIndexPath];
    }];
}
- (BOOL)LCDhide
{
    if (self.hidden) {
        return NO;
    }
    if (_LCDfilterWillHideBlock) {
        _LCDfilterWillHideBlock();
    }
    CGSize LCDsize = [UIScreen mainScreen].bounds.size;
    [UIView animateWithDuration:0.4f animations:^{
        self.LCDslider.alpha = 0.0f;
        self.LCDsliderLabel.alpha = 0.0f;
        self.frame = CGRectMake(0, LCDsize.height, LCDsize.width, kCameraFilterViewHeight);
    } completion:^(BOOL finished) {
        self.hidden = YES;
        self.LCDslider.hidden = YES;
        self.LCDsliderLabel.hidden = self.LCDslider.hidden;
    }];
    return YES;
}
- (void)LCDsetFilterValue:(CGFloat)LCDvalue animated:(BOOL)LCDanimated
{
    [self.LCDslider setValue:MAX(MIN(LCDvalue, 1), 0) animated:LCDanimated];
    self.LCDslider.value = MAX(MIN(LCDvalue, 1), 0);
    self.LCDsliderLabel.text = [NSString stringWithFormat:@"%.0f", floor(self.LCDslider.value*100)];
}
- (BOOL)selectFilterAtIndex:(NSInteger)LCDindex
{
    if (LCDindex < 0) {
        return NO;
    }
    LCDindex = MAX(MIN(LCDindex, _LCDfilterModels.count-1), 0);
    if (_LCDfilterItemClickBlock) {
        _LCDfilterItemClickBlock(_LCDfilterModels[LCDindex], LCDindex);
    }
    if (!self.hidden) {
        [self deselectConllectionViewAtIndex:_LCDlastSelectedIndexPath];
        _LCDlastSelectedIndexPath = [NSIndexPath indexPathForRow:LCDindex inSection:0];
        [self selectConllectionViewAtIndex:_LCDlastSelectedIndexPath];
        [_LCDcollectionView scrollToItemAtIndexPath:_LCDlastSelectedIndexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    }else {
        [self deselectConllectionViewAtIndex:_LCDlastSelectedIndexPath];
        _LCDlastSelectedIndexPath = [NSIndexPath indexPathForRow:LCDindex inSection:0];
    }
    return YES;
}
#pragma mark - UICollectionViewSelect
- (void)selectConllectionViewAtIndex:(NSIndexPath *)LCDindexPath
{
    UICollectionViewCell *LCDlastCell = [_LCDcollectionView cellForItemAtIndexPath:_LCDlastSelectedIndexPath];
    UIView *LCDlastMaskView = [LCDlastCell viewWithTag:kCameraFilterCollectionMaskViewTag];
    LCDlastMaskView.hidden = NO;
}
- (void)deselectConllectionViewAtIndex:(NSIndexPath *)LCDindexPath
{
    UICollectionViewCell *LCDlastCell = [_LCDcollectionView cellForItemAtIndexPath:_LCDlastSelectedIndexPath];
    UIView *LCDlastMaskView = [LCDlastCell viewWithTag:kCameraFilterCollectionMaskViewTag];
    LCDlastMaskView.hidden = YES;
}
#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)LCDcollectionView numberOfItemsInSection:(NSInteger)LCDsection
{
    return _LCDfilterModels.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)LCDcollectionView cellForItemAtIndexPath:(NSIndexPath *)LCDindexPath
{
    UICollectionViewCell *LCDcell = [LCDcollectionView dequeueReusableCellWithReuseIdentifier:kCameraFilterCollectionViewCellID forIndexPath:LCDindexPath];
    UIImageView *LCDimageView = [LCDcell.contentView viewWithTag:kCameraFilterCollectionImageViewTag];
    UILabel *LCDlabel = [LCDcell.contentView viewWithTag:kCameraFilterCollectionLabelTag];
    UIView *LCDmaskView = [LCDcell.contentView viewWithTag:kCameraFilterCollectionMaskViewTag];
    if (!LCDimageView) {
        UICollectionViewFlowLayout *LCDlayout = (id)LCDcollectionView.collectionViewLayout;
        CGRect LCDrect = CGRectMake(0, 0, LCDlayout.itemSize.width, LCDlayout.itemSize.height);
        LCDimageView = [[UIImageView alloc] initWithFrame:LCDrect];
        LCDimageView.tag = kCameraFilterCollectionImageViewTag;
        LCDimageView.contentMode = UIViewContentModeScaleToFill;
        [LCDcell.contentView addSubview:LCDimageView];
    }
    if (!LCDlabel) {
        UICollectionViewFlowLayout *LCDlayout = (id)LCDcollectionView.collectionViewLayout;
        CGRect LCDrect = CGRectMake(0, LCDlayout.itemSize.height-18, LCDlayout.itemSize.width, 18);
        LCDlabel = [[UILabel alloc] initWithFrame:LCDrect];
        LCDlabel.tag = kCameraFilterCollectionLabelTag;
        LCDlabel.font = [UIFont systemFontOfSize:10];
        LCDlabel.textColor = [UIColor whiteColor];
        LCDlabel.textAlignment = NSTextAlignmentCenter;
        LCDlabel.backgroundColor = [UIColor colorWithRed:8/255.0 green:157/255.0 blue:184/255.0 alpha:0.6f];
        [LCDcell.contentView addSubview:LCDlabel];
    }
    if (!LCDmaskView) {
        UICollectionViewFlowLayout *LCDlayout = (id)LCDcollectionView.collectionViewLayout;
        LCDmaskView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, LCDlayout.itemSize.width, LCDlayout.itemSize.height)];
        LCDmaskView.tag = kCameraFilterCollectionMaskViewTag;
        LCDmaskView.backgroundColor = [UIColor colorWithRed:8/255.0 green:157/255.0 blue:184/255.0 alpha:0.5f];
        [LCDcell.contentView addSubview:LCDmaskView];
        UIImageView *LCDimageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, LCDlayout.itemSize.width, LCDlayout.itemSize.height)];
        LCDimageView.contentMode = UIViewContentModeCenter;
        LCDimageView.image = [UIImage imageNamed:@"qmkit_filter_adjust"];
        [LCDmaskView addSubview:LCDimageView];
    }
    LCDcell.layer.cornerRadius = 22.0f;
    LCDcell.layer.masksToBounds = YES;
    if (_LCDlastSelectedIndexPath == LCDindexPath) {
        LCDmaskView.hidden = NO;
    }else {
        LCDmaskView.hidden = YES;
    }
    LCDQMFilterModel *LCDmodel = _LCDfilterModels[LCDindexPath.row];
    LCDlabel.text = LCDmodel.name;
    [LCDimageView sd_setImageWithURL:[NSURL fileURLWithPath:LCDmodel.icon]];
    return LCDcell;
}
#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)LCDcollectionView didSelectItemAtIndexPath:(NSIndexPath *)LCDindexPath
{
    UICollectionViewCell *LCDlastCell = [LCDcollectionView cellForItemAtIndexPath:_LCDlastSelectedIndexPath];
    UIView *LCDlastMaskView = [LCDlastCell viewWithTag:kCameraFilterCollectionMaskViewTag];
    LCDlastMaskView.hidden = YES;
    UICollectionViewCell *LCDcell = [LCDcollectionView cellForItemAtIndexPath:LCDindexPath];
    UIView *LCDmaskView = [LCDcell viewWithTag:kCameraFilterCollectionMaskViewTag];
    LCDmaskView.hidden = NO;
    if (_LCDlastSelectedIndexPath == LCDindexPath) {
        [self LCDtoggleSliderView];
    }
    LCDQMFilterModel *LCDmodel = _LCDfilterModels[LCDindexPath.row];
    [self LCDsetFilterValue:LCDmodel.currentAlphaValue animated:YES];
    [LCDcollectionView scrollToItemAtIndexPath:LCDindexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    if (_LCDfilterItemClickBlock) {
        _LCDfilterItemClickBlock(LCDmodel, LCDindexPath.row);
    }
    _LCDlastSelectedIndexPath = LCDindexPath;
}
@end
