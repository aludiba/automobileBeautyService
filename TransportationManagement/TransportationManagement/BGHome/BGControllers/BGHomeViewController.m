//
//  BGHomeViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGHomeViewController.h"
#import "BGCargoRecordViewController.h"
#import "BGLoginViewController.h"

@interface BGHomeViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, strong)UICollectionView *BGCollectionView;
@property(nonatomic, strong)NSMutableArray *BGDataArray;
@end

@implementation BGHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"首页", nil);
    [self BGSetContentView];
}
- (void)BGSetContentView{
    [self.view addSubview:self.BGCollectionView];
    [self.BGCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view).offset(-BGHeightTabBar);
    }];
    [self.BGCollectionView reloadData];
}
#pragma mark - UICollectionViewDelegateFlowLayout
// 返回cell的尺寸大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake((BGWIDTH - 90) * 0.5, (BGWIDTH - 90) * 0.5 + 20);// 让每个cell尺寸都不一样
}
// 返回cell之间行间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 60;
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
    NSString *title = self.BGDataArray[indexPath.row];
    // 创建cell (重用)
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell.backgroundColor = [UIColor blueColor];
    }else if (indexPath.row == 1){
        cell.backgroundColor = [UIColor purpleColor];
    }else if (indexPath.row == 2){
        cell.backgroundColor = [UIColor systemBlueColor];
    }else{
        cell.backgroundColor = [UIColor systemPurpleColor];
    }
    cell.layer.cornerRadius = 16.0f;
    cell.layer.masksToBounds = YES;
    UILabel *label = [[UILabel alloc] initWithFrame:cell.bounds];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont boldSystemFontOfSize:22];
    label.text = title;
    label.textColor = [UIColor whiteColor];
    [cell addSubview:label];
    return cell;
}
#pragma mark - UICollectionViewDelegate
// 选中某个cell
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    AVUser *bUser = [AVUser currentUser];
    if (bUser) {
    BGCargoRecordViewController *vc = [[BGCargoRecordViewController alloc] init];
    if (indexPath.row == 0) {
        vc.type = BGCargoTypeWaitReceiving;
    }else if (indexPath.row == 1){
        vc.type = BGCargoTypeWaitLoading;
    }else if (indexPath.row == 2){
        vc.type = BGCargoTypeWaitDelivery;
    }else{
        vc.type = BGCargoTypeCompleted;
    }
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:NO];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            BGLoginViewController *BGLoginVC = [[BGLoginViewController alloc] init];
            BGLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:BGLoginVC animated:YES completion:^{
                
            }];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)BGDataArray{
    if (!_BGDataArray) {
        _BGDataArray = [[NSMutableArray alloc] init];
        [_BGDataArray addObject:NSLocalizedString(@"待接货", nil)];
        [_BGDataArray addObject:NSLocalizedString(@"待装载", nil)];
        [_BGDataArray addObject:NSLocalizedString(@"待送达", nil)];
        [_BGDataArray addObject:NSLocalizedString(@"已完成", nil)];
    }
    return _BGDataArray;
}
- (UICollectionView *)BGCollectionView{
    if (!_BGCollectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        _BGCollectionView = [[UICollectionView alloc] initWithFrame:CGRectNull collectionViewLayout:flowLayout];
        _BGCollectionView.delegate = self;
        _BGCollectionView.dataSource = self;
        // 其他属性
        _BGCollectionView.backgroundColor = [UIColor clearColor];
        _BGCollectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        // 注册cell
        [_BGCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    }
    return _BGCollectionView;
}
@end
