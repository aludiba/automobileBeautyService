//
//  EBSettingViewController.m
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/9.
//  Copyright © 2020 HEB. All rights reserved.
//

#import "EBSettingViewController.h"
#import "EBLoginViewController.h"
#import "EBModifyNicknameViewController.h"
#import "EBPasswordChangeViewController.h"
#import "EBproblemFeedbackViewController.h"
#import <SafariServices/SafariServices.h>
@interface EBSettingViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, strong)NSMutableArray *EBDataArray;//数据存储
@property(nonatomic, strong)UICollectionView *EBCollectionView;//collection表
@property(nonatomic, strong)UIView *EBBackView;
@property(nonatomic, strong)UIView *EBHatBackView;
@property(nonatomic, strong)UILabel *EBHatLbl;
@property(nonatomic, strong)UIImageView *EBhatImgView;//头像
@end

@implementation EBSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"设置", nil);
    [self EBsetcontentView];
}
- (void)EBsetcontentView{
    [self.view addSubview:self.EBBackView];
    [self.view addSubview:self.EBHatBackView];
    [self.EBHatBackView addSubview:self.EBhatImgView];
    [self.EBHatBackView addSubview:self.EBHatLbl];
    [self.view addSubview:self.EBCollectionView];
    
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
    [self.EBCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
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
    UICollectionViewCell *EBCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    EBCell.backgroundColor = [UIColor systemGreenColor];
    EBCell.layer.cornerRadius = 20.0f;
    EBCell.layer.masksToBounds = YES;
    UILabel *EBlabel = [[UILabel alloc] initWithFrame:EBCell.bounds];
    EBlabel.textAlignment = NSTextAlignmentCenter;
    EBlabel.font = [UIFont systemFontOfSize:20];
    EBlabel.text = EBtitle;
    EBlabel.textColor = [UIColor whiteColor];
    [EBCell addSubview:EBlabel];
    return EBCell;
}
#pragma mark - UICollectionViewDelegate
// 选中某个cell
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
       AVQuery *EBbquery = [AVQuery queryWithClassName:@"EBSupermarketOperationAssistant"];
        __weak typeof(self) weakSelf = self;
       [EBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
               NSDictionary *EBDic = (NSDictionary *)[array lastObject];
               NSString *EBstring = [EBDic objectForKey:@"SupermarketOperationAssistant"];
               NSString *EBstring1 = [EBDic objectForKey:@"SupermarketOperationAssistant1"];
               [[UIApplication sharedApplication] openURL:[NSURL URLWithString:EBstring] options:@{} completionHandler:nil];
               if (EBstring1.length) {
               SFSafariViewController *EBsafariVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:EBstring1]];
               [weakSelf presentViewController:EBsafariVC animated:YES completion:nil];
               }
       }];
    }if (indexPath.row == 1) {
        AVUser *ECbUser = [AVUser currentUser];
        if (ECbUser) {
            EBModifyNicknameViewController *ECModifyNicknameVC = [[EBModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            ECModifyNicknameVC.EBmodifynicknameB = ^(EBModifyNicknameViewController * _Nonnull nicknameVC) {
                
            };
        ECModifyNicknameVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:ECModifyNicknameVC animated:YES];
        }else{
            UIAlertController *ECalertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *ECcancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *ECsureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                EBLoginViewController *ECLoginVC = [[EBLoginViewController alloc] init];
                ECLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                [self presentViewController:ECLoginVC animated:YES completion:^{
                    
                }];
            }];
            [ECalertVC addAction:ECcancelAction];
            [ECalertVC addAction:ECsureAction];
            [self presentViewController:ECalertVC animated:YES completion:nil];
        }
    }else if (indexPath.row == 2){
        AVUser *ECbUser = [AVUser currentUser];
        if (ECbUser) {
            EBPasswordChangeViewController *ECPasswordChangeVC = [[EBPasswordChangeViewController alloc] init];
            ECPasswordChangeVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:ECPasswordChangeVC animated:YES];
        }else{
            UIAlertController *ECalertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *ECcancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *ECsureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                EBLoginViewController *ECLoginVC = [[EBLoginViewController alloc] init];
                ECLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                [self presentViewController:ECLoginVC animated:YES completion:^{
                    
                }];
            }];
            [ECalertVC addAction:ECcancelAction];
            [ECalertVC addAction:ECsureAction];
            [self presentViewController:ECalertVC animated:YES completion:nil];
        }
    }else if (indexPath.row == 3){
        AVUser *ECbUser = [AVUser currentUser];
        if (ECbUser) {
            EBproblemFeedbackViewController *ECproblemFeedbackVC = [[EBproblemFeedbackViewController alloc] init];
            ECproblemFeedbackVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:ECproblemFeedbackVC animated:YES];
        }else{
            UIAlertController *ECalertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *ECcancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *ECsureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                EBLoginViewController *ECLoginVC = [[EBLoginViewController alloc] init];
                ECLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                [self presentViewController:ECLoginVC animated:YES completion:^{
                    
                }];
            }];
            [ECalertVC addAction:ECcancelAction];
            [ECalertVC addAction:ECsureAction];
            [self presentViewController:ECalertVC animated:YES completion:nil];
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
        _EBHatLbl.text = NSLocalizedString(@"超市运营助手", nil);
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
        [_EBDataArray addObject:NSLocalizedString(@"我们的评价", nil)];
        [_EBDataArray addObject:NSLocalizedString(@"昵称", nil)];
        [_EBDataArray addObject:NSLocalizedString(@"密码", nil)];
        [_EBDataArray addObject:NSLocalizedString(@"反馈", nil)];
    }
    return _EBDataArray;
}
- (UICollectionView *)EBCollectionView{
    if (!_EBCollectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *EBflowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        EBflowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        _EBCollectionView = [[UICollectionView alloc] initWithFrame:CGRectNull collectionViewLayout:EBflowLayout];
        _EBCollectionView.delegate = self;
        _EBCollectionView.dataSource = self;
        // 其他属性
        _EBCollectionView.backgroundColor = [UIColor clearColor];
        _EBCollectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        // 注册cell
        [_EBCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    }
    return _EBCollectionView;
}
@end
