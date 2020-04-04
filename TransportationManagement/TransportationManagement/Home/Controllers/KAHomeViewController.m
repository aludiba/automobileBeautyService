//
//  KAHomeViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KAHomeViewController.h"
#import "KACargoRecordViewController.h"

@interface KAHomeViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, strong)UICollectionView *KACollectionView;
@property(nonatomic, strong)NSMutableArray *KADataArray;
@end

@implementation KAHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"首页";
    [self KASetContentView];
}
- (void)KASetContentView{
    [self.view addSubview:self.KACollectionView];
    [self.KACollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view).offset(-KAHeightTabBar);
    }];
    [self.KACollectionView reloadData];
}
#pragma mark - UICollectionViewDelegateFlowLayout
// 返回cell的尺寸大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake((KAWIDTH - 90) * 0.5, (KAWIDTH - 90) * 0.5 + 20);// 让每个cell尺寸都不一样
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
    NSString *title = self.KADataArray[indexPath.row];
    // 创建cell (重用)
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell.backgroundColor = [UIColor redColor];
    }else if (indexPath.row == 1){
        cell.backgroundColor = [UIColor orangeColor];
    }else if (indexPath.row == 2){
        cell.backgroundColor = [UIColor yellowColor];
    }else{
        cell.backgroundColor = [UIColor greenColor];
    }
    cell.layer.cornerRadius = 8.0f;
    cell.layer.masksToBounds = YES;
    UILabel *label = [[UILabel alloc] initWithFrame:cell.bounds];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont boldSystemFontOfSize:30];
    label.text = title;
    label.textColor = [UIColor whiteColor];
    [cell addSubview:label];
    return cell;
}
#pragma mark - UICollectionViewDelegate
// 选中某个cell
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    KACargoRecordViewController *vc = [[KACargoRecordViewController alloc] init];
    if (indexPath.row == 0) {
        vc.type = KACargoTypeWaitReceiving;
    }else if (indexPath.row == 1){
        vc.type = KACargoTypeWaitLoading;
    }else if (indexPath.row == 2){
        vc.type = KACargoTypeWaitDelivery;
    }else{
        vc.type = KACargoTypeCompleted;
    }
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:NO];
}
#pragma mark - 属性懒加载
- (NSMutableArray *)KADataArray{
    if (!_KADataArray) {
        _KADataArray = [[NSMutableArray alloc] init];
        [_KADataArray addObject:@"待接货"];
        [_KADataArray addObject:@"待装载"];
        [_KADataArray addObject:@"待送达"];
        [_KADataArray addObject:@"已完成"];
    }
    return _KADataArray;
}
- (UICollectionView *)KACollectionView{
    if (!_KACollectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        _KACollectionView = [[UICollectionView alloc] initWithFrame:CGRectNull collectionViewLayout:flowLayout];
        _KACollectionView.delegate = self;
        _KACollectionView.dataSource = self;
        // 其他属性
        _KACollectionView.backgroundColor = [UIColor clearColor];
        _KACollectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        // 注册cell
        [_KACollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    }
    return _KACollectionView;
}
@end
