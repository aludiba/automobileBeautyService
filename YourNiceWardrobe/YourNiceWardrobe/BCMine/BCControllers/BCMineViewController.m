//
//  BCMineViewController.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/4/25.
//  Copyright © 2020 hb. BCl rights reserved.
//

#import "BCMineViewController.h"
#import "BCModifyNicknameViewController.h"
#import "BCPasswordChangeViewController.h"
#import "BCproblemFeedbackViewController.h"
#import "BCLoginViewController.h"

@interface BCMineViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, strong)NSMutableArray *BCDataArray;
@property(nonatomic, strong)UICollectionView *BCCollectionView;
@property(nonatomic, strong)UIView *BCBackView;
@property(nonatomic, strong)UIImageView *BChatImgView;//日常
@end

@implementation BCMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additionBC setup after loading the view.
    self.title = @"我的";
    [self BCsetcontentView];
}
- (void)BCsetcontentView{
    self.view.backgroundColor = BCH_Color(242, 242, 242, 1);
    [self.view addSubview:self.BCBackView];
    [self.BCBackView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.top.equalTo(self.view).offset(BCHeightNavBar);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(140);
    }];
    [self.BCBackView addSubview:self.BChatImgView];
    [self.BChatImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BCBackView).offset(20);
        make.centerX.equalTo(self.BCBackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.view addSubview:self.BCCollectionView];
    [self.BCCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BCBackView.mas_bottom).offset(40);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
    make.bottom.equalTo(self.view).offset(-BCHeightTabBar);
    }];
    [self.BCCollectionView reloadData];
}
#pragma mark - UICollectionViewDelegateFlowLayout
// 返回cell的尺寸大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake((BCWIDTH - 120) * 0.5 + 20, (BCWIDTH - 120) * 0.5 - 20);// 让每个cell尺寸都不一样
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
    NSString *title = self.BCDataArray[indexPath.row];
    // 创建cell (重用)
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor systemBlueColor];
    cell.layer.cornerRadius = 60.0f;
    cell.layer.masksToBounds = YES;
    UILabel *label = [[UILabel alloc] initWithFrame:cell.bounds];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:28];
    label.text = title;
    label.textColor = [UIColor blackColor];
    [cell addSubview:label];
    return cell;
}
#pragma mark - UICollectionViewDelegate
// 选中某个cell
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        AVQuery *BCbquery = [AVQuery queryWithClassName:@"BCYourNiceWardrobe"];
        [BCbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
                NSDictionary *BCDic = (NSDictionary *)[array lastObject];
                NSString *BCstring = [BCDic objectForKey:@"YourNiceWardrobe"];
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:BCstring] options:@{} completionHandler:nil];
        }];
    }if (indexPath.row == 1) {
        AVUser *BCbUser = [AVUser currentUser];
        if (BCbUser) {
            BCModifyNicknameViewController *BCModifyNicknameVC = [[BCModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            BCModifyNicknameVC.BCmodifynicknameB = ^(BCModifyNicknameViewController * _Nonnull nicknameVC) {
                
            };
        BCModifyNicknameVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:BCModifyNicknameVC animated:YES];
        }else{
            UIAlertController *BCalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *BCcancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *BCsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                BCLoginViewController *BCLoginVC = [[BCLoginViewController alloc] init];
                BCLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                [self presentViewController:BCLoginVC animated:YES completion:^{
                    
                }];
            }];
            [BCalertVC addAction:BCcancelAction];
            [BCalertVC addAction:BCsureAction];
            [self presentViewController:BCalertVC animated:YES completion:nil];
        }
    }else if (indexPath.row == 2){
        AVUser *BCbUser = [AVUser currentUser];
        if (BCbUser) {
            BCPasswordChangeViewController *BCPasswordChangeVC = [[BCPasswordChangeViewController alloc] init];
            BCPasswordChangeVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:BCPasswordChangeVC animated:YES];
        }else{
            UIAlertController *BCalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *BCcancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *BCsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                BCLoginViewController *BCLoginVC = [[BCLoginViewController alloc] init];
                BCLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                [self presentViewController:BCLoginVC animated:YES completion:^{
                    
                }];
            }];
            [BCalertVC addAction:BCcancelAction];
            [BCalertVC addAction:BCsureAction];
            [self presentViewController:BCalertVC animated:YES completion:nil];
        }
    }else if (indexPath.row == 3){
        AVUser *BCbUser = [AVUser currentUser];
        if (BCbUser) {
            BCproblemFeedbackViewController *BCproblemFeedbackVC = [[BCproblemFeedbackViewController alloc] init];
            BCproblemFeedbackVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:BCproblemFeedbackVC animated:YES];
        }else{
            UIAlertController *BCalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *BCcancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *BCsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                BCLoginViewController *BCLoginVC = [[BCLoginViewController alloc] init];
                BCLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                [self presentViewController:BCLoginVC animated:YES completion:^{
                    
                }];
            }];
            [BCalertVC addAction:BCcancelAction];
            [BCalertVC addAction:BCsureAction];
            [self presentViewController:BCalertVC animated:YES completion:nil];
        }
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)BCDataArray{
    if (!_BCDataArray) {
        _BCDataArray = [[NSMutableArray alloc] init];
        [_BCDataArray addObject:@"我们的评价"];
        [_BCDataArray addObject:@"昵称"];
        [_BCDataArray addObject:@"密码"];
        [_BCDataArray addObject:@"反馈"];
    }
    return _BCDataArray;
}
- (UICollectionView *)BCCollectionView{
    if (!_BCCollectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        _BCCollectionView = [[UICollectionView alloc] initWithFrame:CGRectNull collectionViewLayout:flowLayout];
        _BCCollectionView.delegate = self;
        _BCCollectionView.dataSource = self;
        // 其他属性
        _BCCollectionView.backgroundColor = [UIColor clearColor];
        _BCCollectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        // 注册cell
        [_BCCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    }
    return _BCCollectionView;
}
- (UIView *)BCBackView{
    if (!_BCBackView) {
        _BCBackView = [[UIView alloc] init];
        _BCBackView.backgroundColor = BCH_Color(250, 250, 250, 1);
    }
    return _BCBackView;
}
- (UIImageView *)BChatImgView{
    if (!_BChatImgView) {
        _BChatImgView = [[UIImageView alloc] init];
        _BChatImgView.image = [UIImage imageNamed:@"hat"];
    }
    return _BChatImgView;
}
@end
