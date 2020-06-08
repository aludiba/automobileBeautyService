//
//  BGMineViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGMineViewController.h"
#import "BGMineModel.h"
#import "BGMineTableViewCell.h"
#import "BGModifyNicknameViewController.h"
#import "BGPasswordChangeViewController.h"
#import "BGproblemFeedbackViewController.h"
#import "BGLoginViewController.h"
#import <SafariServices/SafariServices.h>

@interface BGMineViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *BGviewDataArray;
@property(nonatomic, strong)UITableView *BGmainTable;//列表
@end

@implementation BGMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self BGSetContentView];
}
- (void)BGSetContentView{
    self.view.backgroundColor = [UIColor cyanColor];
    
    BGMineModel *BGCommentourViewModel = [[BGMineModel alloc] init];
    BGCommentourViewModel.BGtitle = NSLocalizedString(@"评价我们", nil);
    [self.BGviewDataArray addObject:BGCommentourViewModel];
    
    BGMineModel *BGnicknameViewModel = [[BGMineModel alloc] init];
    BGnicknameViewModel.BGtitle = NSLocalizedString(@"昵称", nil);
    AVUser *user = [AVUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        BGnicknameViewModel.BGcontent = [user objectForKey:@"username"];
    }
    [self.BGviewDataArray addObject:BGnicknameViewModel];
    
    BGMineModel *BGpasswordViewModel = [[BGMineModel alloc] init];
    BGpasswordViewModel.BGtitle = NSLocalizedString(@"密码", nil);
    [self.BGviewDataArray addObject:BGpasswordViewModel];
    
    BGMineModel *BGFeedbackViewModel = [[BGMineModel alloc] init];
    BGFeedbackViewModel.BGtitle = NSLocalizedString(@"问题反馈", nil);
    [self.BGviewDataArray addObject:BGFeedbackViewModel];
    
    BGMineModel *BGloginViewModel = [[BGMineModel alloc] init];
    BGloginViewModel.BGtitle = NSLocalizedString(@"登录&退出", nil);
    [self.BGviewDataArray addObject:BGloginViewModel];
    
    [self.BGmainTable reloadData];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BGviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BGMineModel *BGminemodel = self.BGviewDataArray[indexPath.row];
    BGMineTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BGMineTableViewCell" forIndexPath:indexPath];
    cell.BGminemodel = BGminemodel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    BGMineModel *BGminemodel = self.BGviewDataArray[indexPath.row];
    if (indexPath.row == 0) {
        AVQuery *EBbquery = [AVQuery queryWithClassName:@"EBimmediateTransportManagement"];
         __weak typeof(self) weakSelf = self;
        [EBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
                NSDictionary *EBDic = (NSDictionary *)[array lastObject];
                NSString *EBstring = [EBDic objectForKey:@"immediateTransportManagement"];
                NSString *EBstring1 = [EBDic objectForKey:@"immediateTransportManagement1"];
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:EBstring] options:@{} completionHandler:nil];
                if (EBstring1.length) {
                SFSafariViewController *EBsafariVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:EBstring1]];
                [weakSelf presentViewController:EBsafariVC animated:YES completion:nil];
                }
        }];
    }else if (indexPath.row == 1) {

        AVUser *bUser = [AVUser currentUser];
           if (bUser) {
               BGModifyNicknameViewController *BGModifyNicknameVC = [[BGModifyNicknameViewController alloc] init];
               __weak __typeof(self)weakSelf = self;
               BGModifyNicknameVC.BGmodifynicknameB = ^(BGModifyNicknameViewController * _Nonnull nicknameVC) {
                   BGminemodel.BGcontent = nicknameVC.BGnickname;
                   [weakSelf.BGmainTable reloadData];
               };
               BGModifyNicknameVC.hidesBottomBarWhenPushed = YES;
               [self.navigationController pushViewController:BGModifyNicknameVC animated:YES];
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
    }else if (indexPath.row == 2){
        AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            BGPasswordChangeViewController *BGPasswordChangeVC = [[BGPasswordChangeViewController alloc] init];
            BGPasswordChangeVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:BGPasswordChangeVC animated:YES];
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
    }else if (indexPath.row == 3){
        AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            BGproblemFeedbackViewController *BGproblemFeedbackVC = [[BGproblemFeedbackViewController alloc] init];
            BGproblemFeedbackVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:BGproblemFeedbackVC animated:YES];
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
    }else{
        [AVUser logOut];
        BGLoginViewController *BGLoginVC = [[BGLoginViewController alloc] init];
        BGLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentViewController:BGLoginVC animated:YES completion:^{
            
        }];
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)BGviewDataArray{
    if (!_BGviewDataArray) {
        _BGviewDataArray = [[NSMutableArray alloc] init];
    }
    return _BGviewDataArray;
}
- (UITableView *)BGmainTable{
    if (!_BGmainTable) {
        _BGmainTable = [[UITableView alloc] init];
        _BGmainTable.backgroundColor = [UIColor cyanColor];
        _BGmainTable.rowHeight = UITableViewAutomaticDimension;
        _BGmainTable.estimatedRowHeight = 48.0f;
        _BGmainTable.dataSource = self;
        _BGmainTable.delegate = self;
        _BGmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_BGmainTable registerClass:[BGMineTableViewCell class] forCellReuseIdentifier:@"BGMineTableViewCell"];
        [self.view addSubview:_BGmainTable];
        [_BGmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _BGmainTable;
}
@end
