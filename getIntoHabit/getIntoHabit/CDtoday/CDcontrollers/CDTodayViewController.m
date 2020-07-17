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
@property(nonatomic, strong)UICollectionView *CDcollectionView;
@end

@implementation CDTodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = NSLocalizedString(@"今天", nil);
    [self CDloadData];
}
- (void)CDloadData{
    AVQuery *CDquery = [AVQuery queryWithClassName:@"CDClockProjects"];
    AVUser *CDauthor = [AVUser currentUser];
    [CDquery whereKey:@"author" equalTo:CDauthor];
    __weak typeof(self) weakSelf = self;
    [CDquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [weakSelf.CDcollectionView.mj_header endRefreshing];
            [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }else{
            [weakSelf.CDcollectionView.mj_header endRefreshing];
            if (array.count) {
                [weakSelf.CDdataArray removeAllObjects];
                AVObject *CDobj = [array lastObject];
                NSArray *CDdataArray = [CDobj objectForKey:@"data"];
                for (int i = 0; i < CDdataArray.count; i++) {
                    NSDictionary *CDdic = CDdataArray[i];
                    CDGuideModel *CDmodel = [CDGuideModel yy_modelWithDictionary:CDdic];
                    Boolean CDisAddSection = YES;
                    for (NSMutableDictionary *CDdic in self.CDdataArray) {
                        NSString *CDsectionString = [CDdic objectForKey:@"section"];
                        if ([CDsectionString isEqualToString:CDmodel.CDperiodTimeString]) {
                            CDisAddSection = NO;
                        }
                    }
                    if (CDisAddSection) {
                        NSMutableDictionary *CDdic = [[NSMutableDictionary alloc] init];
                        [CDdic setObject:CDmodel.CDperiodTimeString forKey:@"section"];
                        NSMutableArray *CDdataArray = [[NSMutableArray alloc] init];
                        [CDdic setObject:CDdataArray forKey:@"data"];
                        [CDdataArray addObject:CDmodel];
                        [weakSelf.CDdataArray addObject:CDdic];
                    }else{
                        NSMutableDictionary *CDDIC;
                        for (NSMutableDictionary *CDdic in weakSelf.CDdataArray) {
                            NSString *CDsectionString = [CDdic objectForKey:@"section"];
                            if ([CDsectionString isEqualToString:CDmodel.CDperiodTimeString]) {
                                CDDIC = CDdic;
                            }
                        }
                        NSMutableArray *CDdataArray = [CDDIC objectForKey:@"data"];
                        [CDdataArray addObject:CDmodel];
                    }
                }
                if (weakSelf.CDdataArray.count) {
                    [weakSelf collectionViewReload];
                }else{
                    [MBProgressHUD CDshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                }
            }else{
                [self.CDcollectionView.mj_header endRefreshing];
                [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }
    }];
}
- (void)collectionViewReload{
    [self.CDcollectionView reloadData];
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
    CGFloat CDmaginX = (CDWIDTH - 3 * 100) / 4;
    return CDmaginX * 0.7;
}
// 返回cell之间列间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    CGFloat CDmaginX = (CDWIDTH - 3 * 100) / 4;
    return CDmaginX;
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
    NSDictionary *CDdic = self.CDdataArray[section];
    NSArray *CDarray = [CDdic objectForKey:@"data"];
    return CDarray.count;
}
// 返回cell内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *CDdic = self.CDdataArray[indexPath.section];
    NSArray *CDarray = [CDdic objectForKey:@"data"];
    CDGuideModel *CDmodel = CDarray[indexPath.row];
    CDTodayClockInCollectionViewCell *CDcell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CDTodayClockInCollectionViewCell" forIndexPath:indexPath];
    CDcell.model = CDmodel;
    return CDcell;
}
// 返回Header/Footer内容
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {          // Header视图
        // 从复用队列中获取HooterView
        CDGuideCollectionReusableView *CDheaderView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"CDGuideCollectionReusableView" forIndexPath:indexPath];
        NSDictionary *CDdic = self.CDdataArray[indexPath.section];
        NSString *CDtitle = [CDdic objectForKey:@"section"];
        CDheaderView.CDtitleString = CDtitle;
        // 返回HooterView
        return CDheaderView;
    }else if ([kind isEqualToString:UICollectionElementKindSectionFooter]) {
        return nil;
    }
    return nil;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *CDdic = self.CDdataArray[indexPath.section];
    NSArray *CDarray = [CDdic objectForKey:@"data"];
    CDGuideModel *CDmodel = CDarray[indexPath.row];
    CDClockInViewController *CDclockInVC = [[CDClockInViewController alloc] init];
    CDclockInVC.model = CDmodel;
    CDclockInVC.CDdataArray = self.CDdataArray;
    CDclockInVC.CDsuperVC = self;
    CDclockInVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:CDclockInVC animated:YES];
}
#pragma mark - 属性懒加载
- (NSMutableArray *)CDdataArray{
    if (!_CDdataArray) {
        _CDdataArray = [[NSMutableArray alloc] init];
    }
    return _CDdataArray;
}
- (UICollectionView *)CDcollectionView{
    if (!_CDcollectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        CGRect frame = CGRectMake(0, CDHeightNavBar, CDWIDTH, CDHEICDT);
        _CDcollectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:flowLayout];
        // 设置代理
        _CDcollectionView.delegate = self;
        _CDcollectionView.dataSource = self;
        // 其他属性
        _CDcollectionView.backgroundColor = [UIColor cyanColor];
        _CDcollectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        [_CDcollectionView registerClass:[CDTodayClockInCollectionViewCell class] forCellWithReuseIdentifier:@"CDTodayClockInCollectionViewCell"];
        [_CDcollectionView registerClass:[CDGuideCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"CDGuideCollectionReusableView"];
        _CDcollectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CDloadData)];
        [self.view addSubview:_CDcollectionView];
        [_CDcollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-CDHeightNavContentBar);
        }];
    }
    return _CDcollectionView;
}
@end
