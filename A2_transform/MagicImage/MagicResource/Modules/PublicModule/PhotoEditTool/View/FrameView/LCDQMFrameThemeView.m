#import "LCDQMFrameThemeView.h"
#import "LCDQMFrameThemeViewCell.h"
#define kCropThemeCollectionViewCellID @"FrameThemeCollectionViewCellID"
@interface LCDQMFrameThemeView()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) UICollectionView *LCDcollectionView;
@end
@implementation LCDQMFrameThemeView
- (instancetype)init
{
    return [self initWithFrame:CGRectZero];
}
- (instancetype)initWithFrame:(CGRect)LCDframe
{
    if (self = [super initWithFrame:LCDframe]) {
        [self LCDbuildCollectionView];
        [self setTitle:@"Sticker"];
    }
    return self;
}
- (void)LCDbuildCollectionView
{
    UICollectionViewFlowLayout *LCDlayout = [[UICollectionViewFlowLayout alloc] init];
    LCDlayout.itemSize = CGSizeMake(50, 50);
    LCDlayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    LCDlayout.minimumLineSpacing = 10;
    LCDlayout.minimumInteritemSpacing = 5;
    UICollectionView *LCDcollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(10, 50, self.frame.size.width-20,self.frame.size.height-50) collectionViewLayout:LCDlayout];
    LCDcollectionView.backgroundColor = self.contentView.backgroundColor;
    LCDcollectionView.delegate = self;
    LCDcollectionView.dataSource = self;
    LCDcollectionView.scrollsToTop = NO;
    LCDcollectionView.showsVerticalScrollIndicator = NO;
    LCDcollectionView.showsHorizontalScrollIndicator = NO;
    [LCDcollectionView registerNib:[UINib nibWithNibName:@"LCDQMFrameThemeViewCell" bundle:nil] forCellWithReuseIdentifier:kCropThemeCollectionViewCellID];
    [self.contentView addSubview:LCDcollectionView];
    _LCDcollectionView = LCDcollectionView;
}
#pragma mark - PublicMethod
- (void)LCDreloadData
{
    [_LCDcollectionView reloadData];
}
#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _LCDframeModels.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)LCDcollectionView cellForItemAtIndexPath:(NSIndexPath *)LCDindexPath
{
    LCDQMFrameThemeViewCell *LCDcell = [LCDcollectionView dequeueReusableCellWithReuseIdentifier:kCropThemeCollectionViewCellID forIndexPath:LCDindexPath];
    LCDQMFrameModel *LCDmodel = _LCDframeModels[LCDindexPath.row];
    if (self.LCDexternal) {
        LCDcell.imageView.image = [UIImage imageWithContentsOfFile:LCDmodel.icon];
    }else{
        [LCDcell.imageView sd_setImageWithURL:[[NSBundle mainBundle] URLForResource:LCDmodel.icon withExtension:nil]];
    }
    return LCDcell;
}
#pragma mark - UICollectionViewDelegateFlowLayout
- (void)collectionView:(UICollectionView *)LCDcollectionView didSelectItemAtIndexPath:(NSIndexPath *)LCDindexPath
{
    [LCDcollectionView scrollToItemAtIndexPath:LCDindexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    LCDQMFrameModel *LCDmodel = _LCDframeModels[LCDindexPath.row];
    if (self.LCDframeClickBlock) {
        self.LCDframeClickBlock(LCDmodel);
    }
}
@end
