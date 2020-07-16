//
//  CDTodayViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDTodayViewController.h"
#import "CDTodayClockInCollectionViewCell.h"
#import "CDGuideCollectionReusableView.h"
#import "CDGuideModel.h"
#import "CDClockInViewController.h"
@interface CDTodayViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, strong)NSMutableArray *CDdataArray;
@property(nonatomic, strong)UICollectionView *collectionView;
@end

@implementation CDTodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"今天", nil);
    [self CDloadData];
}
- (void)CDloadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"CDClockProjects"];
    AVUser *author = [AVUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [weakSelf.collectionView.mj_header endRefreshing];
            [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }else{
            [weakSelf.collectionView.mj_header endRefreshing];
            if (array.count) {
                [weakSelf.CDdataArray removeAllObjects];
                AVObject *obj = [array lastObject];
                NSArray *CDdataArray = [obj objectForKey:@"data"];
                for (int i = 0; i < CDdataArray.count; i++) {
                    NSDictionary *dic = CDdataArray[i];
                    CDGuideModel *model = [CDGuideModel yy_modelWithDictionary:dic];
                    Boolean isAddSection = YES;
                    for (NSMutableDictionary *dic in self.CDdataArray) {
                        NSString *sectionString = [dic objectForKey:@"section"];
                        if ([sectionString isEqualToString:model.CDperiodTimeString]) {
                            isAddSection = NO;
                        }
                    }
                    if (isAddSection) {
                        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
                        [dic setObject:model.CDperiodTimeString forKey:@"section"];
                        NSMutableArray *CDdataArray = [[NSMutableArray alloc] init];
                        [dic setObject:CDdataArray forKey:@"data"];
                        [CDdataArray addObject:model];
                        [weakSelf.CDdataArray addObject:dic];
                    }else{
                        NSMutableDictionary *DIC;
                        for (NSMutableDictionary *dic in weakSelf.CDdataArray) {
                            NSString *sectionString = [dic objectForKey:@"section"];
                            if ([sectionString isEqualToString:model.CDperiodTimeString]) {
                                DIC = dic;
                            }
                        }
                        NSMutableArray *CDdataArray = [DIC objectForKey:@"data"];
                        [CDdataArray addObject:model];
                    }
                }
                if (weakSelf.CDdataArray.count) {
                    [weakSelf collectionViewReload];
                }else{
                    [MBProgressHUD CDshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                }
            }else{
                [self.collectionView.mj_header endRefreshing];
                [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }
    }];
}
- (void)collectionViewReload{
    [self.collectionView reloadData];
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    return CGSizeMake(CDWIDTH, 50);
}
// 返回cell的尺寸大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(82, 92);// 让每个cell尺寸都不一样
}
// 返回cell之间行间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    CGFloat maginX = (CDWIDTH - 3 * 100) / 4;
    return maginX * 0.7;
}
// 返回cell之间列间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    CGFloat maginX = (CDWIDTH - 3 * 100) / 4;
    return maginX;
}
// 设置上左下右边界缩进
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(20, 15, 20, 15);
}
#pragma mark - UICollectionViewDataSource
// 返回Section个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.CDdataArray.count;
}
// 返回cell个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSDictionary *dic = self.CDdataArray[section];
    NSArray *array = [dic objectForKey:@"data"];
    return array.count;
}
// 返回cell内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dic = self.CDdataArray[indexPath.section];
    NSArray *array = [dic objectForKey:@"data"];
    CDGuideModel *model = array[indexPath.row];
    CDTodayClockInCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CDTodayClockInCollectionViewCell" forIndexPath:indexPath];
    cell.model = model;
    return cell;
}
// 返回Header/Footer内容
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {          // Header视图
        // 从复用队列中获取HooterView
        CDGuideCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"CDGuideCollectionReusableView" forIndexPath:indexPath];
        NSDictionary *dic = self.CDdataArray[indexPath.section];
        NSString *title = [dic objectForKey:@"section"];
        headerView.CDtitleString = title;
        // 返回HooterView
        return headerView;
    }else if ([kind isEqualToString:UICollectionElementKindSectionFooter]) {
        return nil;
    }
    return nil;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *dic = self.CDdataArray[indexPath.section];
    NSArray *array = [dic objectForKey:@"data"];
    CDGuideModel *model = array[indexPath.row];
    CDClockInViewController *clockInVC = [[CDClockInViewController alloc] init];
    clockInVC.model = model;
    clockInVC.CDdataArray = self.CDdataArray;
    clockInVC.CDsuperVC = self;
    clockInVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:clockInVC animated:YES];
}
#pragma mark - 属性懒加载
- (NSMutableArray *)CDdataArray{
    if (!_CDdataArray) {
        _CDdataArray = [[NSMutableArray alloc] init];
    }
    return _CDdataArray;
}
- (UICollectionView *)collectionView{
    if (!_collectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        CGRect frame = CGRectMake(0, CDHeightNavBar, CDWIDTH, CDHEICDT);
        _collectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:flowLayout];
        // 设置代理
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        // 其他属性
        _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        [_collectionView registerClass:[CDTodayClockInCollectionViewCell class] forCellWithReuseIdentifier:@"CDTodayClockInCollectionViewCell"];
        [_collectionView registerClass:[CDGuideCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"CDGuideCollectionReusableView"];
        _collectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CDloadData)];
        [self.view addSubview:_collectionView];
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-CDHeightNavContentBar);
        }];
    }
    return _collectionView;
}
@end
