//
//  ALHomeViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALHomeViewController.h"
#import "ALCargoRecordViewController.h"
#import "ALLoginViewController.h"

@interface ALHomeViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, strong)UICollectionView *ALCollectionView;
@property(nonatomic, strong)NSMutableArray *ALDataArray;
@end

@implementation ALHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"首页";
    [self ALSetContentView];
}
- (void)ALSetContentView{
    [self.view addSubview:self.ALCollectionView];
    [self.ALCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view).offset(-ALHeightTabBar);
    }];
    [self.ALCollectionView reloadData];
}
#pragma mark - UICollectionViewDelegateFlowLayout
// 返回cell的尺寸大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake((ALWIDTH - 90) * 0.5, (ALWIDTH - 90) * 0.5 + 20);// 让每个cell尺寸都不一样
}
// 返回cell之间行间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 30;
}
// 返回cell之间列间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 30;
}
// 设置上左下右边界缩进
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(30, 30, 30, 30);
}
#pragma mark - UICollectionViewDataSource
// 返回Section个数
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}
// 返回cell个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 4;
}
// 返回cell内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSString *title = self.ALDataArray[indexPath.row];
    // 创建cell (重用)
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell.backgroundColor = [UIColor systemRedColor];
    }else if (indexPath.row == 1){
        cell.backgroundColor = [UIColor systemOrangeColor];
    }else if (indexPath.row == 2){
        cell.backgroundColor = [UIColor systemYellowColor];
    }else{
        cell.backgroundColor = [UIColor systemGreenColor];
    }
    cell.layer.cornerRadius = 40.0f;
    cell.layer.masksToBounds = YES;
    UILabel *label = [[UILabel alloc] initWithFrame:cell.bounds];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:25];
    label.text = title;
    label.textColor = [UIColor blueColor];
    [cell addSubview:label];
    return cell;
}
#pragma mark - UICollectionViewDelegate
// 选中某个cell
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    AVUser *bUser = [AVUser currentUser];
    if (bUser) {
    ALCargoRecordViewController *vc = [[ALCargoRecordViewController alloc] init];
    if (indexPath.row == 0) {
        vc.type = ALCargoTypeWaitReceiving;
    }else if (indexPath.row == 1){
        vc.type = ALCargoTypeWaitLoading;
    }else if (indexPath.row == 2){
        vc.type = ALCargoTypeWaitDelivery;
    }else{
        vc.type = ALCargoTypeCompleted;
    }
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:NO];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            ALLoginViewController *ALLoginVC = [[ALLoginViewController alloc] init];
            ALLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:ALLoginVC animated:YES completion:^{
                
            }];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)ALDataArray{
    if (!_ALDataArray) {
        _ALDataArray = [[NSMutableArray alloc] init];
        [_ALDataArray addObject:@"待接货"];
        [_ALDataArray addObject:@"待装载"];
        [_ALDataArray addObject:@"待送达"];
        [_ALDataArray addObject:@"已完成"];
    }
    return _ALDataArray;
}
- (UICollectionView *)ALCollectionView{
    if (!_ALCollectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        _ALCollectionView = [[UICollectionView alloc] initWithFrame:CGRectNull collectionViewLayout:flowLayout];
        _ALCollectionView.delegate = self;
        _ALCollectionView.dataSource = self;
        // 其他属性
        _ALCollectionView.backgroundColor = [UIColor clearColor];
        _ALCollectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        // 注册cell
        [_ALCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    }
    return _ALCollectionView;
}
@end
