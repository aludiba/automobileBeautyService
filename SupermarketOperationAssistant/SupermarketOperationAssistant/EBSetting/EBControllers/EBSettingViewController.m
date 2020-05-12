//
//  EBSettingViewController.m
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/9.
//  Copyright © 2020 HEB. All rights reserved.
//

#import "EBSettingViewController.h"
#import "EBLoginViewController.h"

@interface EBSettingViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, strong)NSMutableArray *EBDataArray;//数据存储
@property(nonatomic, strong)UICollectionView *EEBollectionView;//collection表
@property(nonatomic, strong)UIView *EBBackView;
@property(nonatomic, strong)UIView *EBHatBackView;
@property(nonatomic, strong)UILabel *EBHatLbl;
@property(nonatomic, strong)UIImageView *EBhatImgView;//头像
@end

@implementation EBSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"设置";
    [self EBsetcontentView];
}
- (void)EBsetcontentView{
    [self.view addSubview:self.EBBackView];
    [self.view addSubview:self.EBHatBackView];
    [self.EBHatBackView addSubview:self.EBhatImgView];
    [self.EBHatBackView addSubview:self.EBHatLbl];
    [self.view addSubview:self.EEBollectionView];
    
    [self.EBBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(250);
    }];
    [self.EBHatBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(180);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(250);
        make.height.mas_equalTo(250);
    }];
    [self.EBhatImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.EBHatBackView).offset(32);
        make.centerX.equalTo(self.EBHatBackView);
        make.width.mas_equalTo(150);
        make.height.mas_equalTo(150);
    }];
    [self.EBHatLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.EBhatImgView.mas_bottom).offset(15);
        make.centerX.equalTo(self.EBHatBackView);
        make.width.mas_equalTo(126);
        make.height.mas_equalTo(24);
    }];
    [self.EEBollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.EBHatBackView.mas_bottom);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UICollectionViewDelegateFlowLayout
// 返回cell的尺寸大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake((EBWIDTH - 120) * 0.5, (EBWIDTH - 120) * 0.5 - 60);// 让每个cell尺寸都不一样
}
// 返回cell之间行间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 25;
}
// 返回cell之间列间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 25;
}
// 设置上左下右边界缩进
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(25, 25, 25, 25);
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
    NSString *EBtitle = self.EBDataArray[indexPath.row];
    // 创建cell (重用)
    UICollectionViewCell *EEBell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    EEBell.backgroundColor = [UIColor systemGreenColor];
    EEBell.layer.cornerRadius = 20.0f;
    EEBell.layer.masksToBounds = YES;
    UILabel *EBlabel = [[UILabel alloc] initWithFrame:EEBell.bounds];
    EBlabel.textAlignment = NSTextAlignmentCenter;
    EBlabel.font = [UIFont systemFontOfSize:20];
    EBlabel.text = EBtitle;
    EBlabel.textColor = [UIColor whiteColor];
    [EEBell addSubview:EBlabel];
    return EEBell;
}
#pragma mark - UICollectionViewDelegate
// 选中某个cell
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
       
    }if (indexPath.row == 1) {
        AVUser *EBbUser = [AVUser currentUser];
        if (EBbUser) {
            
        }else{
            UIAlertController *EBalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *EEBancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *EBsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                EBLoginViewController *EBLoginVC = [[EBLoginViewController alloc] init];
                EBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                [self presentViewController:EBLoginVC animated:YES completion:^{
                    
                }];
            }];
            [EBalertVC addAction:EEBancelAction];
            [EBalertVC addAction:EBsureAction];
            [self presentViewController:EBalertVC animated:YES completion:nil];
        }
    }else if (indexPath.row == 2){
        AVUser *EBbUser = [AVUser currentUser];
        if (EBbUser) {
            
        }else{
            UIAlertController *EBalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *EEBancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *EBsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                EBLoginViewController *EBLoginVC = [[EBLoginViewController alloc] init];
                EBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                [self presentViewController:EBLoginVC animated:YES completion:^{
                    
                }];
            }];
            [EBalertVC addAction:EEBancelAction];
            [EBalertVC addAction:EBsureAction];
            [self presentViewController:EBalertVC animated:YES completion:nil];
        }
    }else if (indexPath.row == 3){
        AVUser *EBbUser = [AVUser currentUser];
        if (EBbUser) {
            
        }else{
            UIAlertController *EBalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *EEBancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *EBsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                EBLoginViewController *EBLoginVC = [[EBLoginViewController alloc] init];
                EBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                [self presentViewController:EBLoginVC animated:YES completion:^{
                    
                }];
            }];
            [EBalertVC addAction:EEBancelAction];
            [EBalertVC addAction:EBsureAction];
            [self presentViewController:EBalertVC animated:YES completion:nil];
        }
    }
}
#pragma mark - 属性懒加载
- (UIView *)EBBackView{
    if (!_EBBackView) {
        _EBBackView = [[UIView alloc] init];
        _EBBackView.backgroundColor = [UIColor orangeColor];
    }
    return _EBBackView;
}
- (UIView *)EBHatBackView{
    if (!_EBHatBackView) {
        _EBHatBackView = [[UIView alloc] init];
        _EBHatBackView.backgroundColor = [UIColor whiteColor];
        _EBHatBackView.layer.cornerRadius = 124.0f;
        _EBHatBackView.layer.masksToBounds = YES;
        _EBHatBackView.layer.borderColor = [UIColor orangeColor].CGColor;
        _EBHatBackView.layer.borderWidth = 2.0f;
    }
    return _EBHatBackView;
}
- (UILabel *)EBHatLbl{
    if (!_EBHatLbl) {
        _EBHatLbl = [[UILabel alloc] init];
        _EBHatLbl.font = [UIFont boldSystemFontOfSize:20];
        _EBHatLbl.textColor = [UIColor blackColor];
        _EBHatLbl.textAlignment = NSTextAlignmentCenter;
        _EBHatLbl.text = @"超市运营助手";
    }
    return _EBHatLbl;
}
- (UIImageView *)EBhatImgView{
    if (!_EBhatImgView) {
        _EBhatImgView = [[UIImageView alloc] init];
        _EBhatImgView.image = [UIImage imageNamed:@"EBsuperMarket"];
    }
    return _EBhatImgView;
}
- (NSMutableArray *)EBDataArray{
    if (!_EBDataArray) {
        _EBDataArray = [[NSMutableArray alloc] init];
        [_EBDataArray addObject:@"我们的评价"];
        [_EBDataArray addObject:@"昵称"];
        [_EBDataArray addObject:@"密码"];
        [_EBDataArray addObject:@"反馈"];
    }
    return _EBDataArray;
}
- (UICollectionView *)EEBollectionView{
    if (!_EEBollectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *EBflowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        EBflowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        _EEBollectionView = [[UICollectionView alloc] initWithFrame:CGRectNull collectionViewLayout:EBflowLayout];
        _EEBollectionView.delegate = self;
        _EEBollectionView.dataSource = self;
        // 其他属性
        _EEBollectionView.backgroundColor = [UIColor clearColor];
        _EEBollectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        // 注册cell
        [_EEBollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    }
    return _EEBollectionView;
}
@end
