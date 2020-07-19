#import "BKQMSuspensionView.h"
#define kSuspensionCollectionViewCellID           @"SuspensionCollectionViewCellID"
#define kSuspensionCollectionImageViewTag         123
#define kCameraRatioSuspensionViewMargin          11
#define kSuspensionIndicatorViewHeight            10
@interface BKQMSuspensionView() <UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) UICollectionView *BKcollectionView;
@end
@implementation BKQMSuspensionView
- (instancetype)initWithFrame:(CGRect)BKframe
{
    if (self = [super initWithFrame:BKframe]) {
        [self setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.6f]];
        [self BKbuildCollectionView];
    }
    return self;
}
- (UICollectionViewFlowLayout *)collectionViewForFlowLayout
{
    UICollectionViewFlowLayout *BKlayout = [[UICollectionViewFlowLayout alloc] init];
    BKlayout.itemSize = CGSizeMake(self.frame.size.height-20,self.frame.size.height-20);
    BKlayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    BKlayout.minimumLineSpacing = 10;
    return BKlayout;
}
- (void)BKbuildCollectionView
{
    UICollectionViewFlowLayout *BKlayout = [self collectionViewForFlowLayout];
    UICollectionView *BKcollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(10, 0, self.frame.size.width-20,self.frame.size.height) collectionViewLayout:BKlayout];
    BKcollectionView.delegate = self;
    BKcollectionView.dataSource = self;
    BKcollectionView.scrollsToTop = NO;
    BKcollectionView.showsVerticalScrollIndicator = NO;
    BKcollectionView.showsHorizontalScrollIndicator = NO;
    BKcollectionView.backgroundColor = [UIColor clearColor];
    [BKcollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:kSuspensionCollectionViewCellID];
    [self addSubview:BKcollectionView];
    _BKcollectionView = BKcollectionView;
}
#pragma mark - PublicMethod
- (void)BKreloadData
{
    [_BKcollectionView reloadData];
}
- (void)BKtoggleBelowInView:BKview
{
    if (!self.superview) {
        [self BKshowBelowInView:BKview];
    }else {
        self.hidden = !self.hidden;
    }
}
- (void)BKshowBelowInView:(UIView *)BKview
{
    if (self.superview) {
        return;
    }
    self.hidden = NO;
    CGFloat BKx = BKview.center.x;
    CGFloat BKy = BKview.frame.origin.y + BKview.frame.size.height + kCameraRatioSuspensionViewMargin;
    CGRect BKoriginRect = self.frame;
    BKoriginRect.origin.y = BKy;
    self.frame = BKoriginRect;
    [BKview.superview addSubview:self];
    UIView *BKindicatorView = [self BKindicatorViewWithPosition:CGPointMake(BKx, BKy)];
    [BKindicatorView setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.6f]];
    [self addSubview:BKindicatorView];
}
- (BOOL)BKhide
{
    if (self.isHidden) {
        return NO;
    }else {
        self.hidden = YES;
        return YES;
    }
}
- (UIView *)BKindicatorViewWithPosition:(CGPoint)BKpoint
{
    CGFloat BKx = BKpoint.x - self.frame.origin.x;
    UIView *BKindicator = [[UIView alloc] initWithFrame:CGRectMake(BKx-(kSuspensionIndicatorViewHeight+5)/2, -kSuspensionIndicatorViewHeight, kSuspensionIndicatorViewHeight+5, kSuspensionIndicatorViewHeight)];
    BKindicator.backgroundColor = [UIColor orangeColor];
    CGSize BKsize = BKindicator.frame.size;
    CAShapeLayer *BKshapeLayer = [CAShapeLayer layer];
    CGMutablePathRef BKpath = CGPathCreateMutable();
    CGPathMoveToPoint(BKpath, NULL, BKsize.width, BKsize.height);
    CGPathAddLineToPoint(BKpath, NULL, BKsize.width/2, 0.0);
    CGPathAddLineToPoint(BKpath, NULL, 0.0, BKsize.height);
    CGPathCloseSubpath(BKpath);
    [BKshapeLayer setPath:BKpath];
    CFRelease(BKpath);
    BKindicator.layer.mask = BKshapeLayer;
    return BKindicator;
}
#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)BKcollectionView numberOfItemsInSection:(NSInteger)BKsection{
    return _BKsuspensionModels.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)BKcollectionView cellForItemAtIndexPath:(NSIndexPath *)BKindexPath
{
    UICollectionViewCell *BKcell = [BKcollectionView dequeueReusableCellWithReuseIdentifier:kSuspensionCollectionViewCellID forIndexPath:BKindexPath];
    UIImageView *BKimageView = [BKcell.contentView viewWithTag:kSuspensionCollectionImageViewTag];
    if (!BKimageView) {
        UICollectionViewFlowLayout *BKlayout = (id)BKcollectionView.collectionViewLayout;
        CGRect BKrect = CGRectMake(0, 0, BKlayout.itemSize.width, BKlayout.itemSize.height);
        BKimageView = [[UIImageView alloc] initWithFrame:BKrect];
        BKimageView.tag = kSuspensionCollectionImageViewTag;
        BKimageView.contentMode = UIViewContentModeScaleAspectFit;
        [BKcell.contentView addSubview:BKimageView];
    }
    BKQMSuspensionModel *BKmodel = _BKsuspensionModels[BKindexPath.row];
    BKimageView.image = [UIImage imageNamed:BKmodel.icon];
    return BKcell;
}
#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)BKcollectionView didSelectItemAtIndexPath:(NSIndexPath *)BKindexPath
{
    BKQMSuspensionModel *BKmodel = _BKsuspensionModels[BKindexPath.row];
    if (_BKsuspensionItemClickBlock) {
        _BKsuspensionItemClickBlock(BKmodel);
    }
}
@end
@implementation BKQMSuspensionModel
+ (NSArray<BKQMSuspensionModel *> *)buildSuspensionModelsWithJson:(NSString *)BKjsonStr
{
    NSData *BKjsonData = [BKjsonStr dataUsingEncoding:NSUTF8StringEncoding];
    NSArray *BKarray = [NSJSONSerialization JSONObjectWithData:BKjsonData options:NSJSONReadingMutableContainers error:nil];
    if (!BKarray) {
        return nil;
    }
    NSMutableArray *BKcropsArr = [NSMutableArray array];
    for (NSDictionary *BKdict in BKarray) {
        BKQMSuspensionModel *BKmodel = [BKQMSuspensionModel yy_modelWithDictionary:BKdict];
        if (BKmodel) {
            [BKcropsArr addObject:BKmodel];
        }
    }
    return BKcropsArr;
}
+ (NSArray<BKQMSuspensionModel *> *)buildSuspensionModelsWithConfig:(NSString *)BKpath
{
    NSData *BKjsonConfig = [NSData dataWithContentsOfFile:BKpath];
    NSArray *BKarray = [NSJSONSerialization JSONObjectWithData:BKjsonConfig options:NSJSONReadingMutableContainers error:nil];
    if (!BKarray) {
        return nil;
    }
    NSMutableArray *BKcropsArr = [NSMutableArray array];
    for (NSDictionary *BKdict in BKarray) {
        BKQMSuspensionModel *BKmodel = [BKQMSuspensionModel yy_modelWithDictionary:BKdict];
        if (BKmodel) {
            [BKcropsArr addObject:BKmodel];
        }
    }
    return BKcropsArr;
}
@end
