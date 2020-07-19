#import "BKQMCameraFilterView.h"
#import "Constants.h"
#import <Masonry.h>
#define kCameraFilterCollectionViewCellID         @"CameraFilterCollectionViewCellID"
#define kCameraFilterCollectionImageViewTag       100
#define kCameraFilterCollectionLabelTag           101
#define kCameraFilterCollectionMaskViewTag        102
#define kCameraFilterViewHeight                   (kScreenH-kScreenW*4.0f/3.0f)
#define kCameraFilterViewItemSize                 60
#define kCameraFilterCollectionViewHeight         100
@interface BKQMCameraFilterView ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) NSArray<BKQMFilterModel *> *BKfilterModels;
@property (nonatomic, strong) UICollectionView *BKcollectionView;
@property (nonatomic, strong) NSIndexPath *BKlastSelectedIndexPath;
@property (nonatomic, strong) UISlider *BKslider;
@property (nonatomic, strong) UILabel *BKsliderLabel;
@end
@implementation BKQMCameraFilterView
+ (instancetype)BKcameraFilterView
{
    CGSize BKsize = [UIScreen mainScreen].bounds.size;
    CGRect BKrect = CGRectMake(0, BKsize.height, BKsize.width, kCameraFilterViewHeight);
    BKQMCameraFilterView *BKview = [[BKQMCameraFilterView alloc] initWithFrame:BKrect];
    BKview.BKfilterModels = [BKQMFilterModel buildFilterModelsWithPath:kFilterPath];
    return BKview;
}
- (instancetype)initWithFrame:(CGRect)BKframe
{
    if (self = [super initWithFrame:BKframe]) {
        [self setHidden:YES];
        [self setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.3f]];
        [self BKbuildCollectionView];
    }
    return self;
}
- (UICollectionViewFlowLayout *)BKcollectionViewForFlowLayout
{
    UICollectionViewFlowLayout *BKlayout = [[UICollectionViewFlowLayout alloc] init];
    BKlayout.itemSize = CGSizeMake(kCameraFilterViewItemSize, kCameraFilterViewItemSize);
    BKlayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    BKlayout.minimumLineSpacing = 5;
    BKlayout.sectionInset = UIEdgeInsetsMake(5, 5, 0, 5);
    return BKlayout;
}
- (void)BKbuildCollectionView
{
    UICollectionViewFlowLayout *BKlayout = [self BKcollectionViewForFlowLayout];
    UICollectionView *BKcollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, kCameraFilterCollectionViewHeight) collectionViewLayout:BKlayout];
    BKcollectionView.delegate = self;
    BKcollectionView.dataSource = self;
    BKcollectionView.scrollsToTop = NO;
    BKcollectionView.showsVerticalScrollIndicator = NO;
    BKcollectionView.showsHorizontalScrollIndicator = NO;
    BKcollectionView.backgroundColor = [UIColor clearColor];
    [BKcollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:kCameraFilterCollectionViewCellID];
    [self addSubview:BKcollectionView];
    _BKcollectionView = BKcollectionView;
}
- (void)BKtoggleSliderView
{
    if (!self.BKslider) {
        self.BKslider = [[UISlider alloc] initWithFrame:CGRectMake(30, self.frame.origin.y-45, kScreenW-60, 30)];
        self.BKslider.hidden = YES;
        self.BKslider.tintColor = [UIColor colorWithRed:8/255.0 green:157/255.0 blue:184/255.0 alpha:1.0];
        self.BKslider.maximumTrackTintColor = [UIColor whiteColor];
        [self.superview addSubview:self.BKslider];
        self.BKsliderLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.BKslider.frame.origin.x+self.BKslider.value*(kScreenW-90)-8, self.BKslider.frame.origin.y-30, 40, 30)];
        self.BKsliderLabel.textAlignment = NSTextAlignmentCenter;
        self.BKsliderLabel.font = [UIFont systemFontOfSize:22];
        self.BKsliderLabel.textColor = [UIColor whiteColor];
        self.BKsliderLabel.text = [NSString stringWithFormat:@"%.0f", floor(self.BKslider.value*100)];
        [self.superview addSubview:self.BKsliderLabel];
        weakSelf();
    }
    self.BKslider.alpha = 1.0f;
    self.BKsliderLabel.alpha = 1.0f;
    self.BKslider.hidden = !self.BKslider.hidden;
    self.BKsliderLabel.hidden = self.BKslider.hidden;
}
#pragma mark - PublicMethod
- (void)BKreloadData
{
    [_BKcollectionView reloadData];
}
- (void)BKtoggleInView:(UIView *)BKview
{
    if (self.hidden) {
        [self BKshowInView:BKview];
    }else {
        [self BKhide];
    }
}
- (void)BKshowInView:(UIView *)BKview
{
    if (!self.superview) {
        [BKview addSubview:self];
    }
    if (!self.hidden) {
        return;
    }
    if (_BKfilterWillShowBlock) {
        _BKfilterWillShowBlock();
    }
    self.hidden = NO;
    CGSize BKsize = [UIScreen mainScreen].bounds.size;
    [UIView animateWithDuration:0.4f animations:^{
        self.frame = CGRectMake(0, BKsize.height - kCameraFilterViewHeight, BKsize.width, kCameraFilterViewHeight);
    } completion:^(BOOL finished) {
        [_BKcollectionView scrollToItemAtIndexPath:_BKlastSelectedIndexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
        [self selectConllectionViewAtIndex:_BKlastSelectedIndexPath];
    }];
}
- (BOOL)BKhide
{
    if (self.hidden) {
        return NO;
    }
    if (_BKfilterWillHideBlock) {
        _BKfilterWillHideBlock();
    }
    CGSize BKsize = [UIScreen mainScreen].bounds.size;
    [UIView animateWithDuration:0.4f animations:^{
        self.BKslider.alpha = 0.0f;
        self.BKsliderLabel.alpha = 0.0f;
        self.frame = CGRectMake(0, BKsize.height, BKsize.width, kCameraFilterViewHeight);
    } completion:^(BOOL finished) {
        self.hidden = YES;
        self.BKslider.hidden = YES;
        self.BKsliderLabel.hidden = self.BKslider.hidden;
    }];
    return YES;
}
- (void)BKsetFilterValue:(CGFloat)BKvalue animated:(BOOL)BKanimated
{
    [self.BKslider setValue:MAX(MIN(BKvalue, 1), 0) animated:BKanimated];
    self.BKslider.value = MAX(MIN(BKvalue, 1), 0);
    self.BKsliderLabel.text = [NSString stringWithFormat:@"%.0f", floor(self.BKslider.value*100)];
}
- (BOOL)selectFilterAtIndex:(NSInteger)BKindex
{
    if (BKindex < 0) {
        return NO;
    }
    BKindex = MAX(MIN(BKindex, _BKfilterModels.count-1), 0);
    if (_BKfilterItemClickBlock) {
        _BKfilterItemClickBlock(_BKfilterModels[BKindex], BKindex);
    }
    if (!self.hidden) {
        [self deselectConllectionViewAtIndex:_BKlastSelectedIndexPath];
        _BKlastSelectedIndexPath = [NSIndexPath indexPathForRow:BKindex inSection:0];
        [self selectConllectionViewAtIndex:_BKlastSelectedIndexPath];
        [_BKcollectionView scrollToItemAtIndexPath:_BKlastSelectedIndexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    }else {
        [self deselectConllectionViewAtIndex:_BKlastSelectedIndexPath];
        _BKlastSelectedIndexPath = [NSIndexPath indexPathForRow:BKindex inSection:0];
    }
    return YES;
}
#pragma mark - UICollectionViewSelect
- (void)selectConllectionViewAtIndex:(NSIndexPath *)BKindexPath
{
    UICollectionViewCell *BKlastCell = [_BKcollectionView cellForItemAtIndexPath:_BKlastSelectedIndexPath];
    UIView *BKlastMaskView = [BKlastCell viewWithTag:kCameraFilterCollectionMaskViewTag];
    BKlastMaskView.hidden = NO;
}
- (void)deselectConllectionViewAtIndex:(NSIndexPath *)BKindexPath
{
    UICollectionViewCell *BKlastCell = [_BKcollectionView cellForItemAtIndexPath:_BKlastSelectedIndexPath];
    UIView *BKlastMaskView = [BKlastCell viewWithTag:kCameraFilterCollectionMaskViewTag];
    BKlastMaskView.hidden = YES;
}
#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)BKcollectionView numberOfItemsInSection:(NSInteger)BKsection
{
    return _BKfilterModels.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)BKcollectionView cellForItemAtIndexPath:(NSIndexPath *)BKindexPath
{
    UICollectionViewCell *BKcell = [BKcollectionView dequeueReusableCellWithReuseIdentifier:kCameraFilterCollectionViewCellID forIndexPath:BKindexPath];
    UIImageView *BKimageView = [BKcell.contentView viewWithTag:kCameraFilterCollectionImageViewTag];
    UILabel *BKlabel = [BKcell.contentView viewWithTag:kCameraFilterCollectionLabelTag];
    UIView *BKmaskView = [BKcell.contentView viewWithTag:kCameraFilterCollectionMaskViewTag];
    if (!BKimageView) {
        UICollectionViewFlowLayout *BKlayout = (id)BKcollectionView.collectionViewLayout;
        CGRect BKrect = CGRectMake(0, 0, BKlayout.itemSize.width, BKlayout.itemSize.height);
        BKimageView = [[UIImageView alloc] initWithFrame:BKrect];
        BKimageView.tag = kCameraFilterCollectionImageViewTag;
        BKimageView.contentMode = UIViewContentModeScaleToFill;
        [BKcell.contentView addSubview:BKimageView];
    }
    if (!BKlabel) {
        UICollectionViewFlowLayout *BKlayout = (id)BKcollectionView.collectionViewLayout;
        CGRect BKrect = CGRectMake(0, BKlayout.itemSize.height-18, BKlayout.itemSize.width, 18);
        BKlabel = [[UILabel alloc] initWithFrame:BKrect];
        BKlabel.tag = kCameraFilterCollectionLabelTag;
        BKlabel.font = [UIFont systemFontOfSize:10];
        BKlabel.textColor = [UIColor whiteColor];
        BKlabel.textAlignment = NSTextAlignmentCenter;
        BKlabel.backgroundColor = [UIColor colorWithRed:8/255.0 green:157/255.0 blue:184/255.0 alpha:0.6f];
        [BKcell.contentView addSubview:BKlabel];
    }
    if (!BKmaskView) {
        UICollectionViewFlowLayout *BKlayout = (id)BKcollectionView.collectionViewLayout;
        BKmaskView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, BKlayout.itemSize.width, BKlayout.itemSize.height)];
        BKmaskView.tag = kCameraFilterCollectionMaskViewTag;
        BKmaskView.backgroundColor = [UIColor colorWithRed:8/255.0 green:157/255.0 blue:184/255.0 alpha:0.5f];
        [BKcell.contentView addSubview:BKmaskView];
        UIImageView *BKimageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, BKlayout.itemSize.width, BKlayout.itemSize.height)];
        BKimageView.contentMode = UIViewContentModeCenter;
        BKimageView.image = [UIImage imageNamed:@"qmkit_filter_adjust"];
        [BKmaskView addSubview:BKimageView];
    }
    BKcell.layer.cornerRadius = 22.0f;
    BKcell.layer.masksToBounds = YES;
    if (_BKlastSelectedIndexPath == BKindexPath) {
        BKmaskView.hidden = NO;
    }else {
        BKmaskView.hidden = YES;
    }
    BKQMFilterModel *BKmodel = _BKfilterModels[BKindexPath.row];
    BKlabel.text = BKmodel.name;
    [BKimageView sd_setImageWithURL:[NSURL fileURLWithPath:BKmodel.icon]];
    return BKcell;
}
#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)BKcollectionView didSelectItemAtIndexPath:(NSIndexPath *)BKindexPath
{
    UICollectionViewCell *BKlastCell = [BKcollectionView cellForItemAtIndexPath:_BKlastSelectedIndexPath];
    UIView *BKlastMaskView = [BKlastCell viewWithTag:kCameraFilterCollectionMaskViewTag];
    BKlastMaskView.hidden = YES;
    UICollectionViewCell *BKcell = [BKcollectionView cellForItemAtIndexPath:BKindexPath];
    UIView *BKmaskView = [BKcell viewWithTag:kCameraFilterCollectionMaskViewTag];
    BKmaskView.hidden = NO;
    if (_BKlastSelectedIndexPath == BKindexPath) {
        [self BKtoggleSliderView];
    }
    BKQMFilterModel *BKmodel = _BKfilterModels[BKindexPath.row];
    [self BKsetFilterValue:BKmodel.currentAlphaValue animated:YES];
    [BKcollectionView scrollToItemAtIndexPath:BKindexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    if (_BKfilterItemClickBlock) {
        _BKfilterItemClickBlock(BKmodel, BKindexPath.row);
    }
    _BKlastSelectedIndexPath = BKindexPath;
}
@end
