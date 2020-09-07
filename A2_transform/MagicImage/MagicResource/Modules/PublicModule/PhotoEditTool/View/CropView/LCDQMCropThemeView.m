#import "LCDQMCropThemeView.h"
#import "BKQMCropThemeViewCell.h"
#import "LCDQMCropModel.h"
#define kCropThemeCollectionViewCellID @"LCDQMCropThemeViewCell"
@interface LCDQMCropThemeView()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) UICollectionView *LCDcollectionView;
@end
@implementation LCDQMCropThemeView
- (instancetype)init
{
    return [self initWithFrame:CGRectZero];
}
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self LCDbuildCollectionView];
        [self setTitle:@"Crop"];
        [self LCDsetCropData];
    }
    return self;
}
- (void)LCDbuildCollectionView
{
    UICollectionViewFlowLayout *LCDlayout = [[UICollectionViewFlowLayout alloc] init];
    LCDlayout.itemSize = CGSizeMake(80, 100);
    LCDlayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    LCDlayout.minimumLineSpacing = 10;
    UICollectionView *LCDcollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(10, 20, self.frame.size.width-20,self.frame.size.height) collectionViewLayout:LCDlayout];
    LCDcollectionView.backgroundColor = self.contentView.backgroundColor;
    LCDcollectionView.delegate = self;
    LCDcollectionView.dataSource = self;
    LCDcollectionView.scrollsToTop = NO;
    LCDcollectionView.showsVerticalScrollIndicator = NO;
    LCDcollectionView.showsHorizontalScrollIndicator = NO;
    [LCDcollectionView registerNib:[UINib nibWithNibName:@"BKQMCropThemeViewCell" bundle:nil] forCellWithReuseIdentifier:kCropThemeCollectionViewCellID];
    [self.contentView addSubview:LCDcollectionView];
    _LCDcollectionView = LCDcollectionView;
}
- (void)LCDsetCropData
{
    _LCDcropModels = [LCDQMCropModel buildCropModels];
    [self LCDreloadData];
}
#pragma mark - PublicMethod
- (void)LCDreloadData
{
    [_LCDcollectionView reloadData];
}
#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _LCDcropModels.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)LCDcollectionView cellForItemAtIndexPath:(NSIndexPath *)LCDindexPath
{
    BKQMCropThemeViewCell *LCDcell = [LCDcollectionView dequeueReusableCellWithReuseIdentifier:kCropThemeCollectionViewCellID forIndexPath:LCDindexPath];
    LCDQMCropModel *LCDmodel = _LCDcropModels[LCDindexPath.row];
    LCDcell.label.text = LCDmodel.name;
    LCDcell.imageView.image = [UIImage imageNamed:LCDmodel.icon];
    return LCDcell;
}
#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)LCDcollectionView didSelectItemAtIndexPath:(NSIndexPath *)LCDindexPath
{
    [LCDcollectionView scrollToItemAtIndexPath:LCDindexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    LCDQMCropModel *LCDmodel = _LCDcropModels[LCDindexPath.row];
    if (self.LCDcroperClickBlock) {
        CGSize LCDsize = CGSizeZero;
        CGFloat LCDrotation = 0;
        switch (LCDmodel.type) {
            case QMRatioTypeNone:
                LCDsize = CGSizeMake(0.0f, 1.0f);
                break;
            case QMRatioType11:
                LCDsize = CGSizeMake(1.0f, 1.0f);
                break;
            case QMRatioType32:
                LCDsize = CGSizeMake(3.0f, 2.0f);
                break;
            case QMRatioType43:
                LCDsize = CGSizeMake(4.0f, 3.0f);
                break;
            case QMRatioType54:
                LCDsize = CGSizeMake(5.0f, 4.0f);
                break;
            case QMRatioType75:
                LCDsize = CGSizeMake(7.0f, 5.0f);
                break;
            case QMRatioType169:
                LCDsize = CGSizeMake(16.0f, 9.0f);
                break;
            case QMRatioTypeFree:
                LCDsize = CGSizeMake(0.0f, 1.0f);
                break;
            case QMRatioTypeRotate:
                LCDrotation = M_PI_2;
                break;
            default:
                break;
        }
        self.LCDcroperClickBlock(LCDsize, LCDrotation);
    }
}
@end
