//
//  PHTodayViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHTodayViewController.h"
#import "PHTodayClockInCollectionViewCell.h"
#import "PHGuideCollectionReusableView.h"
#import "PHGuideModel.h"
#import "PHClockInViewController.h"
@interface PHTodayViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, strong)NSMutableArray *PHdataArray;
@property(nonatomic, strong)UICollectionView *collectionView;
@end

@implementation PHTodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"今天", nil);
    [self PHloadData];
}
- (void)PHloadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PHClockProjects"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [weakSelf.collectionView.mj_header endRefreshing];
            [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }else{
            [weakSelf.collectionView.mj_header endRefreshing];
            if (array.count) {
                [weakSelf.PHdataArray removeAllObjects];
                BmobObject *obj = [array lastObject];
                NSArray *PHdataArray = [obj objectForKey:@"data"];
                for (int i = 0; i < PHdataArray.count; i++) {
                    NSDictionary *dic = PHdataArray[i];
                    PHGuideModel *model = [PHGuideModel yy_modelWithDictionary:dic];
                    Boolean isAddSection = YES;
                    for (NSMutableDictionary *dic in self.PHdataArray) {
                        NSString *sectionString = [dic objectForKey:@"section"];
                        if ([sectionString isEqualToString:model.PHperiodTimeString]) {
                            isAddSection = NO;
                        }
                    }
                    if (isAddSection) {
                        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
                        [dic setObject:model.PHperiodTimeString forKey:@"section"];
                        NSMutableArray *PHdataArray = [[NSMutableArray alloc] init];
                        [dic setObject:PHdataArray forKey:@"data"];
                        [PHdataArray addObject:model];
                        [weakSelf.PHdataArray addObject:dic];
                    }else{
                        NSMutableDictionary *DIC;
                        for (NSMutableDictionary *dic in weakSelf.PHdataArray) {
                            NSString *sectionString = [dic objectForKey:@"section"];
                            if ([sectionString isEqualToString:model.PHperiodTimeString]) {
                                DIC = dic;
                            }
                        }
                        NSMutableArray *PHdataArray = [DIC objectForKey:@"data"];
                        [PHdataArray addObject:model];
                    }
                }
                if (weakSelf.PHdataArray.count) {
                    [weakSelf collectionViewReload];
                }else{
                    [MBProgressHUD PHshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                }
            }else{
                [self.collectionView.mj_header endRefreshing];
                [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }
    }];
}
- (void)collectionViewReload{
    [self.collectionView reloadData];
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    return CGSizeMake(PHWIDTH, 50);
}
// 返回cell的尺寸大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(82, 92);// 让每个cell尺寸都不一样
}
// 返回cell之间行间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    CGFloat maginX = (PHWIDTH - 3 * 100) / 4;
    return maginX * 0.7;
}
// 返回cell之间列间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    CGFloat maginX = (PHWIDTH - 3 * 100) / 4;
    return maginX;
}
// 设置上左下右边界缩进
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(20, 15, 20, 15);
}
#pragma mark - UICollectionViewDataSource
// 返回Section个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.PHdataArray.count;
}
// 返回cell个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSDictionary *dic = self.PHdataArray[section];
    NSArray *array = [dic objectForKey:@"data"];
    return array.count;
}
// 返回cell内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dic = self.PHdataArray[indexPath.section];
    NSArray *array = [dic objectForKey:@"data"];
    PHGuideModel *model = array[indexPath.row];
    PHTodayClockInCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PHTodayClockInCollectionViewCell" forIndexPath:indexPath];
    cell.model = model;
    return cell;
}
// 返回Header/Footer内容
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {          // Header视图
        // 从复用队列中获取HooterView
        PHGuideCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"PHGuideCollectionReusableView" forIndexPath:indexPath];
        NSDictionary *dic = self.PHdataArray[indexPath.section];
        NSString *title = [dic objectForKey:@"section"];
        headerView.PHtitleString = title;
        // 返回HooterView
        return headerView;
    }else if ([kind isEqualToString:UICollectionElementKindSectionFooter]) {
        return nil;
    }
    return nil;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *dic = self.PHdataArray[indexPath.section];
    NSArray *array = [dic objectForKey:@"data"];
    PHGuideModel *model = array[indexPath.row];
    PHClockInViewController *clockInVC = [[PHClockInViewController alloc] init];
    clockInVC.model = model;
    clockInVC.PHdataArray = self.PHdataArray;
    clockInVC.PHsuperVC = self;
    clockInVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:clockInVC animated:YES];
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PHdataArray{
    if (!_PHdataArray) {
        _PHdataArray = [[NSMutableArray alloc] init];
    }
    return _PHdataArray;
}
- (UICollectionView *)collectionView{
    if (!_collectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        CGRect frame = CGRectMake(0, PHHeightNavBar, PHWIDTH, PHHEIPHT);
        _collectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:flowLayout];
        // 设置代理
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        // 其他属性
        _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        [_collectionView registerClass:[PHTodayClockInCollectionViewCell class] forCellWithReuseIdentifier:@"PHTodayClockInCollectionViewCell"];
        [_collectionView registerClass:[PHGuideCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"PHGuideCollectionReusableView"];
        _collectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PHloadData)];
        [self.view addSubview:_collectionView];
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-PHHeightNavContentBar);
        }];
    }
    return _collectionView;
}
@end
