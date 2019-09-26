//
//  GHTodayViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHTodayViewController.h"
#import "GHTodayClockInCollectionViewCell.h"
#import "GHGuideCollectionReusableView.h"
#import "GHGuideModel.h"
#import "GHClockInViewController.h"
@interface GHTodayViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)UICollectionView *collectionView;
@end

@implementation GHTodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"今天", nil);
    [self loadData];
}
- (void)loadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"GHClockProjects"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [weakSelf.collectionView.mj_header endRefreshing];
            [MBProgressHUD GHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }else{
            [weakSelf.collectionView.mj_header endRefreshing];
            if (array.count) {
                [weakSelf.dataArray removeAllObjects];
                BmobObject *obj = [array lastObject];
                NSArray *dataArray = [obj objectForKey:@"data"];
                for (int i = 0; i < dataArray.count; i++) {
                    NSDictionary *dic = dataArray[i];
                    GHGuideModel *model = [GHGuideModel yy_modelWithDictionary:dic];
                    Boolean isAddSection = YES;
                    for (NSMutableDictionary *dic in self.dataArray) {
                        NSString *sectionString = [dic objectForKey:@"section"];
                        if ([sectionString isEqualToString:model.periodTimeString]) {
                            isAddSection = NO;
                        }
                    }
                    if (isAddSection) {
                        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
                        [dic setObject:model.periodTimeString forKey:@"section"];
                        NSMutableArray *dataArray = [[NSMutableArray alloc] init];
                        [dic setObject:dataArray forKey:@"data"];
                        [dataArray addObject:model];
                        [weakSelf.dataArray addObject:dic];
                    }else{
                        NSMutableDictionary *DIC;
                        for (NSMutableDictionary *dic in weakSelf.dataArray) {
                            NSString *sectionString = [dic objectForKey:@"section"];
                            if ([sectionString isEqualToString:model.periodTimeString]) {
                                DIC = dic;
                            }
                        }
                        NSMutableArray *dataArray = [DIC objectForKey:@"data"];
                        [dataArray addObject:model];
                    }
                }
                if (weakSelf.dataArray.count) {
                    [weakSelf collectionViewReload];
                }else{
                    [MBProgressHUD GHshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                }
            }else{
                [self.collectionView.mj_header endRefreshing];
                [MBProgressHUD GHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }
    }];
}
- (void)collectionViewReload{
    [self.collectionView reloadData];
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    return CGSizeMake(GHWIDTH, 50);
}
// 返回cell的尺寸大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(82, 92);// 让每个cell尺寸都不一样
}
// 返回cell之间行间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    CGFloat maginX = (GHWIDTH - 3 * 100) / 4;
    return maginX * 0.7;
}
// 返回cell之间列间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    CGFloat maginX = (GHWIDTH - 3 * 100) / 4;
    return maginX;
}
// 设置上左下右边界缩进
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(20, 15, 20, 15);
}
#pragma mark - UICollectionViewDataSource
// 返回Section个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.dataArray.count;
}
// 返回cell个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSDictionary *dic = self.dataArray[section];
    NSArray *array = [dic objectForKey:@"data"];
    return array.count;
}
// 返回cell内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dic = self.dataArray[indexPath.section];
    NSArray *array = [dic objectForKey:@"data"];
    GHGuideModel *model = array[indexPath.row];
    GHTodayClockInCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"GHTodayClockInCollectionViewCell" forIndexPath:indexPath];
    cell.model = model;
    return cell;
}
// 返回Header/Footer内容
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {          // Header视图
        // 从复用队列中获取HooterView
        GHGuideCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"GHGuideCollectionReusableView" forIndexPath:indexPath];
        NSDictionary *dic = self.dataArray[indexPath.section];
        NSString *title = [dic objectForKey:@"section"];
        headerView.titleString = title;
        // 返回HooterView
        return headerView;
    }else if ([kind isEqualToString:UICollectionElementKindSectionFooter]) {
        return nil;
    }
    return nil;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *dic = self.dataArray[indexPath.section];
    NSArray *array = [dic objectForKey:@"data"];
    GHGuideModel *model = array[indexPath.row];
    GHClockInViewController *clockInVC = [[GHClockInViewController alloc] init];
    clockInVC.model = model;
    clockInVC.dataArray = self.dataArray;
    clockInVC.superVC = self;
    clockInVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:clockInVC animated:YES];
}
#pragma mark - 属性懒加载
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
- (UICollectionView *)collectionView{
    if (!_collectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        CGRect frame = CGRectMake(0, GHHeightNavBar, GHWIDTH, GHHEIGHT);
        _collectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:flowLayout];
        // 设置代理
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        // 其他属性
        _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        [_collectionView registerClass:[GHTodayClockInCollectionViewCell class] forCellWithReuseIdentifier:@"GHTodayClockInCollectionViewCell"];
        [_collectionView registerClass:[GHGuideCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"GHGuideCollectionReusableView"];
        _collectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
        [self.view addSubview:_collectionView];
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-GHHeightNavContentBar);
        }];
    }
    return _collectionView;
}
@end
