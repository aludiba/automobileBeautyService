#import "BKQMFilterThemeView.h"
#import "BKQMFilterThemeViewCell.h"
#import "BKQMFilterThemeSilder.h"
#define kFilterThemeCollectionViewCellID @"FilterThemeCollectionViewCellID"
@interface BKQMFilterThemeView()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) UICollectionView *BKcollectionView;
@property (nonatomic, strong) NSIndexPath *BKlastSelectIndexPath;
@property (nonatomic, strong) BKQMFilterThemeSilder *BKsliderThemeView;
@end
@implementation BKQMFilterThemeView
- (instancetype)init
{
    return [self initWithFrame:CGRectZero];
}
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self BKbuildCollectionView];
        [self setTitle:@"Filter"];
    }
    return self;
}
- (void)BKbuildCollectionView
{
    UICollectionViewFlowLayout *BKlayout = [[UICollectionViewFlowLayout alloc] init];
    BKlayout.itemSize = CGSizeMake(80, 100);
    BKlayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    BKlayout.minimumLineSpacing = 10;
    UICollectionView *BKcollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 20, self.frame.size.width,self.frame.size.height) collectionViewLayout:BKlayout];
    BKcollectionView.backgroundColor = self.contentView.backgroundColor;
    BKcollectionView.delegate = self;
    BKcollectionView.dataSource = self;
    BKcollectionView.scrollsToTop = NO;
    BKcollectionView.showsVerticalScrollIndicator = NO;
    BKcollectionView.showsHorizontalScrollIndicator = NO;
    [BKcollectionView registerNib:[UINib nibWithNibName:@"BKQMFilterThemeViewCell" bundle:nil] forCellWithReuseIdentifier:kFilterThemeCollectionViewCellID];
    [self.contentView addSubview:BKcollectionView];
    _BKcollectionView = BKcollectionView;
}
#pragma mark - PublicMethod
- (void)BKreloadData
{
    [_BKcollectionView reloadData];
}
#pragma mark - PrivateMethod
- (BKQMFilterThemeSilder *)BKsliderThemeView
{
    if (!_BKsliderThemeView) {
        _BKsliderThemeView = [[BKQMFilterThemeSilder alloc] init];
        __weak typeof(self) wself = self;
        [_BKsliderThemeView setBKsliderValueChangeBlock:^(NSInteger index, float value) {
            if (wself.BKsliderValueChangeBlock) {
                wself.BKfilterModels[wself.BKlastSelectIndexPath.row].currentAlphaValue = value;
                wself.BKsliderValueChangeBlock(index, value);
            }
        }];
        [self.superview addSubview:_BKsliderThemeView];
    }
    return _BKsliderThemeView;
}
#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _BKfilterModels.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    BKQMFilterThemeViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kFilterThemeCollectionViewCellID forIndexPath:indexPath];
    BKQMFilterModel *model = _BKfilterModels[indexPath.row];
    cell.label.text = model.name;
    [cell.imageView sd_setImageWithURL:[NSURL fileURLWithPath:model.icon]];
    return cell;
}
#pragma mark - UICollectionViewDelegateFlowLayout
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *lastSelectCell = [collectionView cellForItemAtIndexPath:self.BKlastSelectIndexPath];
    [lastSelectCell setSelected:NO];
    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    [cell setSelected:YES];
    [collectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    if (self.BKlastSelectIndexPath == indexPath) {
        float value = self.BKfilterModels[self.BKlastSelectIndexPath.row].currentAlphaValue;
        [self.BKsliderThemeView BKshowWithValue:value];
    }else {
        if (self.BKfilterClickBlock) {
            self.BKfilterClickBlock(_BKfilterModels[indexPath.row]);
        }
    }
    _BKlastSelectIndexPath = indexPath;
}
@end
