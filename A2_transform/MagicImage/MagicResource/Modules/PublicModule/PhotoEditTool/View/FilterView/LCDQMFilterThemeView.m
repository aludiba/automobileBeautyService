#import "LCDQMFilterThemeView.h"
#import "LCDQMFilterThemeViewCell.h"
#import "LCDQMFilterThemeSilder.h"
#define kFilterThemeCollectionViewCellID @"FilterThemeCollectionViewCellID"
@interface LCDQMFilterThemeView()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) UICollectionView *LCDcollectionView;
@property (nonatomic, strong) NSIndexPath *LCDlastSelectIndexPath;
@property (nonatomic, strong) LCDQMFilterThemeSilder *LCDsliderThemeView;
@end
@implementation LCDQMFilterThemeView
- (instancetype)init
{
    return [self initWithFrame:CGRectZero];
}
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self LCDbuildCollectionView];
        [self setTitle:@"Filter"];
    }
    return self;
}
- (void)LCDbuildCollectionView
{
    UICollectionViewFlowLayout *LCDlayout = [[UICollectionViewFlowLayout alloc] init];
    LCDlayout.itemSize = CGSizeMake(80, 100);
    LCDlayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    LCDlayout.minimumLineSpacing = 10;
    UICollectionView *LCDcollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 20, self.frame.size.width,self.frame.size.height) collectionViewLayout:LCDlayout];
    LCDcollectionView.backgroundColor = self.contentView.backgroundColor;
    LCDcollectionView.delegate = self;
    LCDcollectionView.dataSource = self;
    LCDcollectionView.scrollsToTop = NO;
    LCDcollectionView.showsVerticalScrollIndicator = NO;
    LCDcollectionView.showsHorizontalScrollIndicator = NO;
    [LCDcollectionView registerNib:[UINib nibWithNibName:@"LCDQMFilterThemeViewCell" bundle:nil] forCellWithReuseIdentifier:kFilterThemeCollectionViewCellID];
    [self.contentView addSubview:LCDcollectionView];
    _LCDcollectionView = LCDcollectionView;
}
#pragma mark - PublicMethod
- (void)LCDreloadData
{
    [_LCDcollectionView reloadData];
}
#pragma mark - PrivateMethod
- (LCDQMFilterThemeSilder *)LCDsliderThemeView
{
    if (!_LCDsliderThemeView) {
        _LCDsliderThemeView = [[LCDQMFilterThemeSilder alloc] init];
        __weak typeof(self) wself = self;
        [_LCDsliderThemeView setLCDsliderValueChangeBlock:^(NSInteger index, float value) {
            if (wself.LCDsliderValueChangeBlock) {
                wself.LCDfilterModels[wself.LCDlastSelectIndexPath.row].currentAlphaValue = value;
                wself.LCDsliderValueChangeBlock(index, value);
            }
        }];
        [self.superview addSubview:_LCDsliderThemeView];
    }
    return _LCDsliderThemeView;
}
#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _LCDfilterModels.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    LCDQMFilterThemeViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kFilterThemeCollectionViewCellID forIndexPath:indexPath];
    LCDQMFilterModel *model = _LCDfilterModels[indexPath.row];
    cell.label.text = model.name;
    [cell.imageView sd_setImageWithURL:[NSURL fileURLWithPath:model.icon]];
    return cell;
}
#pragma mark - UICollectionViewDelegateFlowLayout
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *lastSelectCell = [collectionView cellForItemAtIndexPath:self.LCDlastSelectIndexPath];
    [lastSelectCell setSelected:NO];
    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    [cell setSelected:YES];
    [collectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    if (self.LCDlastSelectIndexPath == indexPath) {
        float value = self.LCDfilterModels[self.LCDlastSelectIndexPath.row].currentAlphaValue;
        [self.LCDsliderThemeView LCDshowWithValue:value];
    }else {
        if (self.LCDfilterClickBlock) {
            self.LCDfilterClickBlock(_LCDfilterModels[indexPath.row]);
        }
    }
    _LCDlastSelectIndexPath = indexPath;
}
@end
