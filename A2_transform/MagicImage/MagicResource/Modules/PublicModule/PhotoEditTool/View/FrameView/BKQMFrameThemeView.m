#import "BKQMFrameThemeView.h"
#import "BKQMFrameThemeViewCell.h"
#define kCropThemeCollectionViewCellID @"FrameThemeCollectionViewCellID"
@interface BKQMFrameThemeView()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) UICollectionView *BKcollectionView;
@end
@implementation BKQMFrameThemeView
- (instancetype)init
{
    return [self initWithFrame:CGRectZero];
}
- (instancetype)initWithFrame:(CGRect)BKframe
{
    if (self = [super initWithFrame:BKframe]) {
        [self BKbuildCollectionView];
        [self setTitle:@"Sticker"];
    }
    return self;
}
- (void)BKbuildCollectionView
{
    UICollectionViewFlowLayout *BKlayout = [[UICollectionViewFlowLayout alloc] init];
    BKlayout.itemSize = CGSizeMake(50, 50);
    BKlayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    BKlayout.minimumLineSpacing = 10;
    BKlayout.minimumInteritemSpacing = 5;
    UICollectionView *BKcollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(10, 50, self.frame.size.width-20,self.frame.size.height-50) collectionViewLayout:BKlayout];
    BKcollectionView.backgroundColor = self.contentView.backgroundColor;
    BKcollectionView.delegate = self;
    BKcollectionView.dataSource = self;
    BKcollectionView.scrollsToTop = NO;
    BKcollectionView.showsVerticalScrollIndicator = NO;
    BKcollectionView.showsHorizontalScrollIndicator = NO;
    [BKcollectionView registerNib:[UINib nibWithNibName:@"BKQMFrameThemeViewCell" bundle:nil] forCellWithReuseIdentifier:kCropThemeCollectionViewCellID];
    [self.contentView addSubview:BKcollectionView];
    _BKcollectionView = BKcollectionView;
}
#pragma mark - PublicMethod
- (void)BKreloadData
{
    [_BKcollectionView reloadData];
}
#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _BKframeModels.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)BKcollectionView cellForItemAtIndexPath:(NSIndexPath *)BKindexPath
{
    BKQMFrameThemeViewCell *BKcell = [BKcollectionView dequeueReusableCellWithReuseIdentifier:kCropThemeCollectionViewCellID forIndexPath:BKindexPath];
    BKQMFrameModel *BKmodel = _BKframeModels[BKindexPath.row];
    if (self.BKexternal) {
        BKcell.imageView.image = [UIImage imageWithContentsOfFile:BKmodel.icon];
    }else{
        [BKcell.imageView sd_setImageWithURL:[[NSBundle mainBundle] URLForResource:BKmodel.icon withExtension:nil]];
    }
    return BKcell;
}
#pragma mark - UICollectionViewDelegateFlowLayout
- (void)collectionView:(UICollectionView *)BKcollectionView didSelectItemAtIndexPath:(NSIndexPath *)BKindexPath
{
    [BKcollectionView scrollToItemAtIndexPath:BKindexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    BKQMFrameModel *BKmodel = _BKframeModels[BKindexPath.row];
    if (self.BKframeClickBlock) {
        self.BKframeClickBlock(BKmodel);
    }
}
@end
