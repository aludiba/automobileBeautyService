//
//  JBMoreViewController.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/9.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBMoreViewController.h"
#import "JBMineModel.h"
#import "JBMineTableViewCell.h"
#import "JBModifyNicknameViewController.h"
#import "JBPasswordChangeViewController.h"
#import "JBproblemFeedbackViewController.h"
#import "JBLoginViewController.h"

@interface JBMoreViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *JBviewDataArray;
@property(nonatomic, strong)UIImageView *JJBoodLifeAndGoodHabitsImgView;
@property(nonatomic, strong)UILabel *JJBoodLifeAndGoodHabitsLabel;
@property(nonatomic, strong)UITableView *JBmainTable;
@end

@implementation JBMoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"更多", nil);
    [self JBSetContentView];
}
- (void)JBSetContentView{
    JBMineModel *JBshareViewModel = [[JBMineModel alloc] init];
    JBshareViewModel.JBtitle = NSLocalizedString(@"分享App", nil);
    [self.JBviewDataArray addObject:JBshareViewModel];
    
    JBMineModel *JBCommentourViewModel = [[JBMineModel alloc] init];
    JBCommentourViewModel.JBtitle = NSLocalizedString(@"评价我们", nil);
    [self.JBviewDataArray addObject:JBCommentourViewModel];
    
    JBMineModel *JBnicknameViewModel = [[JBMineModel alloc] init];
    JBnicknameViewModel.JBtitle = NSLocalizedString(@"昵称", nil);
    AVUser *user = [AVUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        JBnicknameViewModel.JBcontent = [user objectForKey:@"username"];
    }
    [self.JBviewDataArray addObject:JBnicknameViewModel];
    
    JBMineModel *JBpasswordViewModel = [[JBMineModel alloc] init];
    JBpasswordViewModel.JBtitle = NSLocalizedString(@"密码", nil);
    [self.JBviewDataArray addObject:JBpasswordViewModel];
    
    JBMineModel *JBFeedbackViewModel = [[JBMineModel alloc] init];
    JBFeedbackViewModel.JBtitle = NSLocalizedString(@"问题反馈", nil);
    [self.JBviewDataArray addObject:JBFeedbackViewModel];
    
    JBMineModel *JBloginViewModel = [[JBMineModel alloc] init];
    JBloginViewModel.JBtitle = NSLocalizedString(@"退出", nil);
    [self.JBviewDataArray addObject:JBloginViewModel];
    
    [self.JBmainTable reloadData];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.JBviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    JBMineModel *JBminemodel = self.JBviewDataArray[indexPath.row];
    JBMineTableViewCell *JBcell = [tableView dequeueReusableCellWithIdentifier:@"JBMineTableViewCell" forIndexPath:indexPath];
    JBcell.JBminemodel = JBminemodel;
    JBcell.selectionStyle = UITableViewCellSelectionStyleNone;
    return JBcell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    JBMineModel *JBminemodel = self.JBviewDataArray[indexPath.row];
    if (indexPath.row == 0) {
        [self JBshareToSocialAction];
    }if (indexPath.row == 1) {
        AVQuery *JBbquery = [AVQuery queryWithClassName:@"JJBoodLifeAndGoodHabits"];
        [JBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
                NSDictionary *JBDic = (NSDictionary *)[array lastObject];
                NSString *JBstring = [JBDic objectForKey:@"GoodLifeAndGoodHabits"];
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:JBstring] options:@{} completionHandler:nil];
        }];
    }else if (indexPath.row == 2) {
        AVUser *JBbUser = [AVUser currentUser];
           if (JBbUser) {
              JBModifyNicknameViewController *JBModifyNicknameVC = [[JBModifyNicknameViewController alloc] init];
              __weak __typeof(self)weakSelf = self;
              JBModifyNicknameVC.JBmodifynicknameB = ^(JBModifyNicknameViewController * _Nonnull nicknameVC) {
                  JBminemodel.JBcontent = nicknameVC.JBnickname;
                  [weakSelf.JBmainTable reloadData];
              };
              JBModifyNicknameVC.hidesBottomBarWhenPushed = YES;
              [self.navigationController pushViewController:JBModifyNicknameVC animated:YES];
           }else{
               UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
               UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
               UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                   JBLoginViewController *JBLoginVC = [[JBLoginViewController alloc] init];
                   JBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                   [self presentViewController:JBLoginVC animated:YES completion:^{
                       
                   }];
               }];
               [alertVC addAction:cancelAction];
               [alertVC addAction:sureAction];
               [self presentViewController:alertVC animated:YES completion:nil];
           }
    }else if (indexPath.row == 3){
        AVUser *JBbUser = [AVUser currentUser];
        if (JBbUser) {
            JBPasswordChangeViewController *JBPasswordChangeVC = [[JBPasswordChangeViewController alloc] init];
            JBPasswordChangeVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:JBPasswordChangeVC animated:YES];
        }else{
            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                JBLoginViewController *JBLoginVC = [[JBLoginViewController alloc] init];
                JBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                [self presentViewController:JBLoginVC animated:YES completion:^{
                    
                }];
            }];
            [alertVC addAction:cancelAction];
            [alertVC addAction:sureAction];
            [self presentViewController:alertVC animated:YES completion:nil];
        }
    }else if (indexPath.row == 4){
        AVUser *JBbUser = [AVUser currentUser];
        if (JBbUser) {
            JBproblemFeedbackViewController *JBproblemFeedbackVC = [[JBproblemFeedbackViewController alloc] init];
            JBproblemFeedbackVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:JBproblemFeedbackVC animated:YES];
        }else{
            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                JBLoginViewController *JBLoginVC = [[JBLoginViewController alloc] init];
                JBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                [self presentViewController:JBLoginVC animated:YES completion:^{
                    
                }];
            }];
            [alertVC addAction:cancelAction];
            [alertVC addAction:sureAction];
            [self presentViewController:alertVC animated:YES completion:nil];
        }
    }else if(indexPath.row == 5){
       [AVUser logOut];
        JBLoginViewController *JBLoginVC = [[JBLoginViewController alloc] init];
        JBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentViewController:JBLoginVC animated:YES completion:^{
            
        }];
    }
}
#pragma mark - 分享功能
- (void)JBshareToSocialAction{
    NSURL *JBurlToShare = [NSURL URLWithString:@"https://apps.apple.com/cn/app/SupermarketOperationAssistant/id1516138753"];
    NSArray *JBactivityItems =@[JBurlToShare];
    UIActivityViewController *JBactivityViewController = [[UIActivityViewController alloc] initWithActivityItems:JBactivityItems applicationActivities:nil];
    JBactivityViewController.excludedActivityTypes = @[UIActivityTypePostToFacebook,UIActivityTypePostToTwitter, UIActivityTypePostToWeibo,UIActivityTypeMessage,UIActivityTypeMail,

    UIActivityTypePrint,UIActivityTypeCopyToPasteboard,

    UIActivityTypeAssignToContact,UIActivityTypeSaveToCameraRoll,

    UIActivityTypeAddToReadingList,UIActivityTypePostToFlickr,

    UIActivityTypePostToVimeo,UIActivityTypePostToTencentWeibo,

    UIActivityTypeAirDrop,UIActivityTypeOpenInIBooks];
    [self presentViewController: JBactivityViewController animated: YES completion: nil];
}
#pragma mark - 属性懒加载
- (UIImageView *)JJBoodLifeAndGoodHabitsImgView{
    if (!_JJBoodLifeAndGoodHabitsImgView) {
        _JJBoodLifeAndGoodHabitsImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"GoodLifeAndGoodHabits"]];
    }
    return _JJBoodLifeAndGoodHabitsImgView;
}
- (UILabel *)JJBoodLifeAndGoodHabitsLabel{
    if (!_JJBoodLifeAndGoodHabitsLabel) {
        _JJBoodLifeAndGoodHabitsLabel = [[UILabel alloc] init];
        _JJBoodLifeAndGoodHabitsLabel.textColor = [UIColor blueColor];
        _JJBoodLifeAndGoodHabitsLabel.font = [UIFont systemFontOfSize:18];
        _JJBoodLifeAndGoodHabitsLabel.text = NSLocalizedString(@"用心记录每一天", nil);
    }
    return _JJBoodLifeAndGoodHabitsLabel;
}
- (NSMutableArray *)JBviewDataArray{
    if (!_JBviewDataArray) {
        _JBviewDataArray = [[NSMutableArray alloc] init];
    }
    return _JBviewDataArray;
}
- (UITableView *)JBmainTable{
    if (!_JBmainTable) {
        _JBmainTable = [[UITableView alloc] init];
        _JBmainTable.rowHeight = UITableViewAutomaticDimension;
        _JBmainTable.estimatedRowHeight = 48.0f;
        _JBmainTable.dataSource = self;
        _JBmainTable.delegate = self;
        _JBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_JBmainTable registerClass:[JBMineTableViewCell class] forCellReuseIdentifier:@"JBMineTableViewCell"];
        [self.view addSubview:self.JJBoodLifeAndGoodHabitsImgView];
        [self.view addSubview:self.JJBoodLifeAndGoodHabitsLabel];
        [self.JJBoodLifeAndGoodHabitsImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(16);
            make.leading.equalTo(self.view).offset(20);
            make.width.mas_equalTo(125);
            make.height.mas_equalTo(125);
        }];
        [self.JJBoodLifeAndGoodHabitsLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.JJBoodLifeAndGoodHabitsImgView);
            make.leading.equalTo(self.JJBoodLifeAndGoodHabitsImgView.mas_trailing).offset(16);
            make.trailing.equalTo(self.view).offset(-20);
            make.height.mas_equalTo(40);
        }];
        [self.view addSubview:_JBmainTable];
        [_JBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.JJBoodLifeAndGoodHabitsImgView.mas_bottom).offset(20);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-JBHeightTabBar);
        }];
    }
    return _JBmainTable;
}
@end
