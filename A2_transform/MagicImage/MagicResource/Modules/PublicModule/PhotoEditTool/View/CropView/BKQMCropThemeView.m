#import "BKQMCropThemeView.h"
#import "BKQMCropThemeViewCell.h"
#import "BKQMCropModel.h"
#define kCropThemeCollectionViewCellID @"BKQMCropThemeViewCell"
@interface BKQMCropThemeView()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) UICollectionView *BKcollectionView;
@end
@implementation BKQMCropThemeView
- (instancetype)init
{
    return [self initWithFrame:CGRectZero];
}
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self BKbuildCollectionView];
        [self setTitle:@"Crop"];
        [self BKsetCropData];
    }
    return self;
}
- (void)BKbuildCollectionView
{
    UICollectionViewFlowLayout *BKlayout = [[UICollectionViewFlowLayout alloc] init];
    BKlayout.itemSize = CGSizeMake(80, 100);
    BKlayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    BKlayout.minimumLineSpacing = 10;
    UICollectionView *BKcollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(10, 20, self.frame.size.width-20,self.frame.size.height) collectionViewLayout:BKlayout];
    BKcollectionView.backgroundColor = self.contentView.backgroundColor;
    BKcollectionView.delegate = self;
    BKcollectionView.dataSource = self;
    BKcollectionView.scrollsToTop = NO;
    BKcollectionView.showsVerticalScrollIndicator = NO;
    BKcollectionView.showsHorizontalScrollIndicator = NO;
    [BKcollectionView registerNib:[UINib nibWithNibName:@"BKQMCropThemeViewCell" bundle:nil] forCellWithReuseIdentifier:kCropThemeCollectionViewCellID];
    [self.contentView addSubview:BKcollectionView];
    _BKcollectionView = BKcollectionView;
}
- (void)BKsetCropData
{
    _BKcropModels = [BKQMCropModel buildCropModels];
    [self BKreloadData];
}
#pragma mark - PublicMethod
- (void)BKreloadData
{
    [_BKcollectionView reloadData];
}
#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _BKcropModels.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)BKcollectionView cellForItemAtIndexPath:(NSIndexPath *)BKindexPath
{
    BKQMCropThemeViewCell *BKcell = [BKcollectionView dequeueReusableCellWithReuseIdentifier:kCropThemeCollectionViewCellID forIndexPath:BKindexPath];
    BKQMCropModel *BKmodel = _BKcropModels[BKindexPath.row];
    BKcell.label.text = BKmodel.name;
    BKcell.imageView.image = [UIImage imageNamed:BKmodel.icon];
    return BKcell;
}
#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)BKcollectionView didSelectItemAtIndexPath:(NSIndexPath *)BKindexPath
{
    [BKcollectionView scrollToItemAtIndexPath:BKindexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    BKQMCropModel *BKmodel = _BKcropModels[BKindexPath.row];
    if (self.BKcroperClickBlock) {
        CGSize BKsize = CGSizeZero;
        CGFloat BKrotation = 0;
        switch (BKmodel.type) {
            case QMRatioTypeNone:
                BKsize = CGSizeMake(0.0f, 1.0f);
                break;
            case QMRatioType11:
                BKsize = CGSizeMake(1.0f, 1.0f);
                break;
            case QMRatioType32:
                BKsize = CGSizeMake(3.0f, 2.0f);
                break;
            case QMRatioType43:
                BKsize = CGSizeMake(4.0f, 3.0f);
                break;
            case QMRatioType54:
                BKsize = CGSizeMake(5.0f, 4.0f);
                break;
            case QMRatioType75:
                BKsize = CGSizeMake(7.0f, 5.0f);
                break;
            case QMRatioType169:
                BKsize = CGSizeMake(16.0f, 9.0f);
                break;
            case QMRatioTypeFree:
                BKsize = CGSizeMake(0.0f, 1.0f);
                break;
            case QMRatioTypeRotate:
                BKrotation = M_PI_2;
                break;
            default:
                break;
        }
        self.BKcroperClickBlock(BKsize, BKrotation);
    }
}
@end
