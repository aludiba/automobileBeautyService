//
//  ALMineViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALMineViewController.h"
#import "ALMineModel.h"
#import "ALMineTableViewCell.h"
#import "ALModifyNicknameViewController.h"
#import "ALPasswordChangeViewController.h"
#import "ALproblemFeedbackViewController.h"
#import "ALLoginViewController.h"

@interface ALMineViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *ALviewDataArray;
@property(nonatomic, strong)UITableView *ALmainTable;//列表
@end

@implementation ALMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"我的";
    [self ALSetContentView];
}
- (void)ALSetContentView{
    ALMineModel *ALnicknameViewModel = [[ALMineModel alloc] init];
    ALnicknameViewModel.ALtitle = @"昵称";
    AVUser *user = [AVUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        ALnicknameViewModel.ALcontent = [user objectForKey:@"username"];
    }
    [self.ALviewDataArray addObject:ALnicknameViewModel];
    
    ALMineModel *ALpasswordViewModel = [[ALMineModel alloc] init];
    ALpasswordViewModel.ALtitle = @"密码";
    [self.ALviewDataArray addObject:ALpasswordViewModel];
    
    ALMineModel *ALFeedbackViewModel = [[ALMineModel alloc] init];
    ALFeedbackViewModel.ALtitle = @"问题反馈";
    [self.ALviewDataArray addObject:ALFeedbackViewModel];
    
    ALMineModel *ALloginViewModel = [[ALMineModel alloc] init];
    ALloginViewModel.ALtitle = @"登录&退出";
    [self.ALviewDataArray addObject:ALloginViewModel];
    
    [self.ALmainTable reloadData];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ALviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ALMineModel *ALminemodel = self.ALviewDataArray[indexPath.row];
    ALMineTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ALMineTableViewCell" forIndexPath:indexPath];
    cell.ALminemodel = ALminemodel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ALMineModel *ALminemodel = self.ALviewDataArray[indexPath.row];
    if (indexPath.row == 0) {

        AVUser *bUser = [AVUser currentUser];
           if (bUser) {
               ALModifyNicknameViewController *ALModifyNicknameVC = [[ALModifyNicknameViewController alloc] init];
               __weak __typeof(self)weakSelf = self;
               ALModifyNicknameVC.ALmodifynicknameB = ^(ALModifyNicknameViewController * _Nonnull nicknameVC) {
                   ALminemodel.ALcontent = nicknameVC.ALnickname;
                   [weakSelf.ALmainTable reloadData];
               };
               ALModifyNicknameVC.hidesBottomBarWhenPushed = YES;
               [self.navigationController pushViewController:ALModifyNicknameVC animated:YES];
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
    }else if (indexPath.row == 1){
        AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            ALPasswordChangeViewController *ALPasswordChangeVC = [[ALPasswordChangeViewController alloc] init];
            ALPasswordChangeVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:ALPasswordChangeVC animated:YES];
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
    }else if (indexPath.row == 2){
        AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            ALproblemFeedbackViewController *ALproblemFeedbackVC = [[ALproblemFeedbackViewController alloc] init];
            ALproblemFeedbackVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:ALproblemFeedbackVC animated:YES];
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
    }else{
        [AVUser logOut];
        ALLoginViewController *ALLoginVC = [[ALLoginViewController alloc] init];
        ALLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentViewController:ALLoginVC animated:YES completion:^{
            
        }];
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)ALviewDataArray{
    if (!_ALviewDataArray) {
        _ALviewDataArray = [[NSMutableArray alloc] init];
    }
    return _ALviewDataArray;
}
- (UITableView *)ALmainTable{
    if (!_ALmainTable) {
        _ALmainTable = [[UITableView alloc] init];
        _ALmainTable.backgroundColor = ALH_Color(242, 242, 242, 1);
        _ALmainTable.rowHeight = UITableViewAutomaticDimension;
        _ALmainTable.estimatedRowHeight = 48.0f;
        _ALmainTable.dataSource = self;
        _ALmainTable.delegate = self;
        _ALmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_ALmainTable registerClass:[ALMineTableViewCell class] forCellReuseIdentifier:@"ALMineTableViewCell"];
        [self.view addSubview:_ALmainTable];
        [_ALmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _ALmainTable;
}
@end
