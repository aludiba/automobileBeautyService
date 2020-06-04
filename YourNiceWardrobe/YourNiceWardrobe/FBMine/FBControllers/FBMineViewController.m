//
//  FBMineViewController.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/4/25.
//  Copyright © 2020 hb. FBl rights reserved.
//

#import "FBMineViewController.h"
#import "FBModifyNicknameViewController.h"
#import "FBPasswordChangeViewController.h"
#import "FBproblemFeedbackViewController.h"
#import "FBLoginViewController.h"

@interface FBMineViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, strong)NSMutableArray *FBDataArray;
@property(nonatomic, strong)UICollectionView *FBCollectionView;
@property(nonatomic, strong)UIView *FBBackView;
@property(nonatomic, strong)UIImageView *FBhatImgView;//头像
@end

@implementation FBMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additionFB setup after loading the view.
    self.title = @"我的";
    [self FBsetcontentView];
}
- (void)FBsetcontentView{
    self.view.backgroundColor = FBH_Color(242, 242, 242, 1);
    [self.view addSubview:self.FBBackView];
    [self.FBBackView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.top.equalTo(self.view).offset(FBHeightNavBar);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(140);
    }];
    [self.FBBackView addSubview:self.FBhatImgView];
    [self.FBhatImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.FBBackView).offset(20);
        make.centerX.equalTo(self.FBBackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.view addSubview:self.FBCollectionView];
    [self.FBCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.FBBackView.mas_bottom).offset(40);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
    make.bottom.equalTo(self.view).offset(-FBHeightTabBar);
    }];
    [self.FBCollectionView reloadData];
}
#pragma mark - UICollectionViewDelegateFlowLayout
// 返回cell的尺寸大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake((FBWIDTH - 120) * 0.5 + 20, (FBWIDTH - 120) * 0.5 - 20);// 让每个cell尺寸都不一样
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
    NSString *FBtitle = self.FBDataArray[indexPath.row];
    // 创建cell (重用)
    UICollectionViewCell *FBcell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    FBcell.backgroundColor = [UIColor systemBlueColor];
    FBcell.layer.cornerRadius = 60.0f;
    FBcell.layer.masksToBounds = YES;
    UILabel *FBlabel = [[UILabel alloc] initWithFrame:FBcell.bounds];
    FBlabel.textAlignment = NSTextAlignmentCenter;
    FBlabel.font = [UIFont systemFontOfSize:28];
    FBlabel.text = FBtitle;
    FBlabel.textColor = [UIColor blackColor];
    [FBcell addSubview:FBlabel];
    return FBcell;
}
#pragma mark - UICollectionViewDelegate
// 选中某个cell
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        AVQuery *FBbquery = [AVQuery queryWithClassName:@"FBYourNiceWardrobe"];
        [FBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
                NSDictionary *FBDic = (NSDictionary *)[array lastObject];
                NSString *FBstring = [FBDic objectForKey:@"YourNiceWardrobe"];
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:FBstring] options:@{} completionHandler:nil];
        }];
    }if (indexPath.row == 1) {
        AVUser *FBbUser = [AVUser currentUser];
        if (FBbUser) {
            FBModifyNicknameViewController *FBModifyNicknameVC = [[FBModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            FBModifyNicknameVC.FBmodifynicknameB = ^(FBModifyNicknameViewController * _Nonnull nicknameVC) {
                
            };
        FBModifyNicknameVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:FBModifyNicknameVC animated:YES];
        }else{
            UIAlertController *FBalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *FBcancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *FBsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                FBLoginViewController *FBLoginVC = [[FBLoginViewController alloc] init];
                FBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                [self presentViewController:FBLoginVC animated:YES completion:^{
                    
                }];
            }];
            [FBalertVC addAction:FBcancelAction];
            [FBalertVC addAction:FBsureAction];
            [self presentViewController:FBalertVC animated:YES completion:nil];
        }
    }else if (indexPath.row == 2){
        AVUser *FBbUser = [AVUser currentUser];
        if (FBbUser) {
            FBPasswordChangeViewController *FBPasswordChangeVC = [[FBPasswordChangeViewController alloc] init];
            FBPasswordChangeVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:FBPasswordChangeVC animated:YES];
        }else{
            UIAlertController *FBalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *FBcancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *FBsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                FBLoginViewController *FBLoginVC = [[FBLoginViewController alloc] init];
                FBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                [self presentViewController:FBLoginVC animated:YES completion:^{
                    
                }];
            }];
            [FBalertVC addAction:FBcancelAction];
            [FBalertVC addAction:FBsureAction];
            [self presentViewController:FBalertVC animated:YES completion:nil];
        }
    }else if (indexPath.row == 3){
        AVUser *FBbUser = [AVUser currentUser];
        if (FBbUser) {
            FBproblemFeedbackViewController *FBproblemFeedbackVC = [[FBproblemFeedbackViewController alloc] init];
            FBproblemFeedbackVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:FBproblemFeedbackVC animated:YES];
        }else{
            UIAlertController *FBalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *FBcancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *FBsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                FBLoginViewController *FBLoginVC = [[FBLoginViewController alloc] init];
                FBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                [self presentViewController:FBLoginVC animated:YES completion:^{
                    
                }];
            }];
            [FBalertVC addAction:FBcancelAction];
            [FBalertVC addAction:FBsureAction];
            [self presentViewController:FBalertVC animated:YES completion:nil];
        }
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)FBDataArray{
    if (!_FBDataArray) {
        _FBDataArray = [[NSMutableArray alloc] init];
        [_FBDataArray addObject:@"我们的评价"];
        [_FBDataArray addObject:@"昵称"];
        [_FBDataArray addObject:@"密码"];
        [_FBDataArray addObject:@"反馈"];
    }
    return _FBDataArray;
}
- (UICollectionView *)FBCollectionView{
    if (!_FBCollectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *FBflowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        FBflowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        _FBCollectionView = [[UICollectionView alloc] initWithFrame:CGRectNull collectionViewLayout:FBflowLayout];
        _FBCollectionView.delegate = self;
        _FBCollectionView.dataSource = self;
        // 其他属性
        _FBCollectionView.backgroundColor = [UIColor clearColor];
        _FBCollectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        // 注册cell
        [_FBCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    }
    return _FBCollectionView;
}
- (UIView *)FBBackView{
    if (!_FBBackView) {
        _FBBackView = [[UIView alloc] init];
        _FBBackView.backgroundColor = FBH_Color(250, 250, 250, 1);
    }
    return _FBBackView;
}
- (UIImageView *)FBhatImgView{
    if (!_FBhatImgView) {
        _FBhatImgView = [[UIImageView alloc] init];
        _FBhatImgView.image = [UIImage imageNamed:@"hat"];
    }
    return _FBhatImgView;
}
@end
