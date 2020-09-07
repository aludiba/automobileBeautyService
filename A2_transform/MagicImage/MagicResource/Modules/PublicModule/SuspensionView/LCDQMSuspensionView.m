#import "LCDQMSuspensionView.h"
#define kSuspensionCollectionViewCellID           @"SuspensionCollectionViewCellID"
#define kSuspensionCollectionImageViewTag         123
#define kCameraRatioSuspensionViewMargin          11
#define kSuspensionIndicatorViewHeight            10
@interface LCDQMSuspensionView() <UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) UICollectionView *LCDcollectionView;
@end
@implementation LCDQMSuspensionView
- (instancetype)initWithFrame:(CGRect)LCDframe
{
    if (self = [super initWithFrame:LCDframe]) {
        [self setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.6f]];
        [self LCDbuildCollectionView];
    }
    return self;
}
- (UICollectionViewFlowLayout *)collectionViewForFlowLayout
{
    UICollectionViewFlowLayout *LCDlayout = [[UICollectionViewFlowLayout alloc] init];
    LCDlayout.itemSize = CGSizeMake(self.frame.size.height-20,self.frame.size.height-20);
    LCDlayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    LCDlayout.minimumLineSpacing = 10;
    return LCDlayout;
}
- (void)LCDbuildCollectionView
{
    UICollectionViewFlowLayout *LCDlayout = [self collectionViewForFlowLayout];
    UICollectionView *LCDcollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(10, 0, self.frame.size.width-20,self.frame.size.height) collectionViewLayout:LCDlayout];
    LCDcollectionView.delegate = self;
    LCDcollectionView.dataSource = self;
    LCDcollectionView.scrollsToTop = NO;
    LCDcollectionView.showsVerticalScrollIndicator = NO;
    LCDcollectionView.showsHorizontalScrollIndicator = NO;
    LCDcollectionView.backgroundColor = [UIColor clearColor];
    [LCDcollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:kSuspensionCollectionViewCellID];
    [self addSubview:LCDcollectionView];
    _LCDcollectionView = LCDcollectionView;
}
#pragma mark - PublicMethod
- (void)LCDreloadData
{
    [_LCDcollectionView reloadData];
}
- (void)LCDtoggleBelowInView:LCDview
{
    if (!self.superview) {
        [self LCDshowBelowInView:LCDview];
    }else {
        self.hidden = !self.hidden;
    }
}
- (void)LCDshowBelowInView:(UIView *)LCDview
{
    if (self.superview) {
        return;
    }
    self.hidden = NO;
    CGFloat LCDx = LCDview.center.x;
    CGFloat LCDy = LCDview.frame.origin.y + LCDview.frame.size.height + kCameraRatioSuspensionViewMargin;
    CGRect LCDoriginRect = self.frame;
    LCDoriginRect.origin.y = LCDy;
    self.frame = LCDoriginRect;
    [LCDview.superview addSubview:self];
    UIView *LCDindicatorView = [self LCDindicatorViewWithPosition:CGPointMake(LCDx, LCDy)];
    [LCDindicatorView setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.6f]];
    [self addSubview:LCDindicatorView];
}
- (BOOL)LCDhide
{
    if (self.isHidden) {
        return NO;
    }else {
        self.hidden = YES;
        return YES;
    }
}
- (UIView *)LCDindicatorViewWithPosition:(CGPoint)LCDpoint
{
    CGFloat LCDx = LCDpoint.x - self.frame.origin.x;
    UIView *LCDindicator = [[UIView alloc] initWithFrame:CGRectMake(LCDx-(kSuspensionIndicatorViewHeight+5)/2, -kSuspensionIndicatorViewHeight, kSuspensionIndicatorViewHeight+5, kSuspensionIndicatorViewHeight)];
    LCDindicator.backgroundColor = [UIColor orangeColor];
    CGSize LCDsize = LCDindicator.frame.size;
    CAShapeLayer *LCDshapeLayer = [CAShapeLayer layer];
    CGMutablePathRef LCDpath = CGPathCreateMutable();
    CGPathMoveToPoint(LCDpath, NULL, LCDsize.width, LCDsize.height);
    CGPathAddLineToPoint(LCDpath, NULL, LCDsize.width/2, 0.0);
    CGPathAddLineToPoint(LCDpath, NULL, 0.0, LCDsize.height);
    CGPathCloseSubpath(LCDpath);
    [LCDshapeLayer setPath:LCDpath];
    CFRelease(LCDpath);
    LCDindicator.layer.mask = LCDshapeLayer;
    return LCDindicator;
}
#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)LCDcollectionView numberOfItemsInSection:(NSInteger)LCDsection{
    return _LCDsuspensionModels.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)LCDcollectionView cellForItemAtIndexPath:(NSIndexPath *)LCDindexPath
{
    UICollectionViewCell *LCDcell = [LCDcollectionView dequeueReusableCellWithReuseIdentifier:kSuspensionCollectionViewCellID forIndexPath:LCDindexPath];
    UIImageView *LCDimageView = [LCDcell.contentView viewWithTag:kSuspensionCollectionImageViewTag];
    if (!LCDimageView) {
        UICollectionViewFlowLayout *LCDlayout = (id)LCDcollectionView.collectionViewLayout;
        CGRect LCDrect = CGRectMake(0, 0, LCDlayout.itemSize.width, LCDlayout.itemSize.height);
        LCDimageView = [[UIImageView alloc] initWithFrame:LCDrect];
        LCDimageView.tag = kSuspensionCollectionImageViewTag;
        LCDimageView.contentMode = UIViewContentModeScaleAspectFit;
        [LCDcell.contentView addSubview:LCDimageView];
    }
    LCDQMSuspensionModel *LCDmodel = _LCDsuspensionModels[LCDindexPath.row];
    LCDimageView.image = [UIImage imageNamed:LCDmodel.icon];
    return LCDcell;
}
#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)LCDcollectionView didSelectItemAtIndexPath:(NSIndexPath *)LCDindexPath
{
    LCDQMSuspensionModel *LCDmodel = _LCDsuspensionModels[LCDindexPath.row];
    if (_LCDsuspensionItemClickBlock) {
        _LCDsuspensionItemClickBlock(LCDmodel);
    }
}
@end
@implementation LCDQMSuspensionModel
+ (NSArray<LCDQMSuspensionModel *> *)buildSuspensionModelsWithJson:(NSString *)LCDjsonStr
{
    NSData *LCDjsonData = [LCDjsonStr dataUsingEncoding:NSUTF8StringEncoding];
    NSArray *LCDarray = [NSJSONSerialization JSONObjectWithData:LCDjsonData options:NSJSONReadingMutableContainers error:nil];
    if (!LCDarray) {
        return nil;
    }
    NSMutableArray *LCDcropsArr = [NSMutableArray array];
    for (NSDictionary *LCDdict in LCDarray) {
        LCDQMSuspensionModel *LCDmodel = [LCDQMSuspensionModel yy_modelWithDictionary:LCDdict];
        if (LCDmodel) {
            [LCDcropsArr addObject:LCDmodel];
        }
    }
    return LCDcropsArr;
}
+ (NSArray<LCDQMSuspensionModel *> *)buildSuspensionModelsWithConfig:(NSString *)LCDpath
{
    NSData *LCDjsonConfig = [NSData dataWithContentsOfFile:LCDpath];
    NSArray *LCDarray = [NSJSONSerialization JSONObjectWithData:LCDjsonConfig options:NSJSONReadingMutableContainers error:nil];
    if (!LCDarray) {
        return nil;
    }
    NSMutableArray *LCDcropsArr = [NSMutableArray array];
    for (NSDictionary *LCDdict in LCDarray) {
        LCDQMSuspensionModel *LCDmodel = [LCDQMSuspensionModel yy_modelWithDictionary:LCDdict];
        if (LCDmodel) {
            [LCDcropsArr addObject:LCDmodel];
        }
    }
    return LCDcropsArr;
}
@end
