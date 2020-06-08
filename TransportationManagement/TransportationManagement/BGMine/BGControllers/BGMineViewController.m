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

@interface BGMineViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *BGviewDataArray;
@property(nonatomic, strong)UITableView *BGmainTable;//列表
@end

@implementation BGMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"我的";
    [self BGSetContentView];
}
- (void)BGSetContentView{
    BGMineModel *BGnicknameViewModel = [[BGMineModel alloc] init];
    BGnicknameViewModel.BGtitle = @"昵称";
    AVUser *user = [AVUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        BGnicknameViewModel.BGcontent = [user objectForKey:@"username"];
    }
    [self.BGviewDataArray addObject:BGnicknameViewModel];
    
    BGMineModel *BGpasswordViewModel = [[BGMineModel alloc] init];
    BGpasswordViewModel.BGtitle = @"密码";
    [self.BGviewDataArray addObject:BGpasswordViewModel];
    
    BGMineModel *BGFeedbackViewModel = [[BGMineModel alloc] init];
    BGFeedbackViewModel.BGtitle = @"问题反馈";
    [self.BGviewDataArray addObject:BGFeedbackViewModel];
    
    BGMineModel *BGloginViewModel = [[BGMineModel alloc] init];
    BGloginViewModel.BGtitle = @"登录&退出";
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
               UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
               UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
               UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                   BGLoginViewController *BGLoginVC = [[BGLoginViewController alloc] init];
                   BGLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                   [self presentViewController:BGLoginVC animated:YES completion:^{
                       
                   }];
               }];
               [alertVC addAction:cancelAction];
               [alertVC addAction:sureAction];
               [self presentViewController:alertVC animated:YES completion:nil];
           }
    }else if (indexPath.row == 1){
        AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            BGPasswordChangeViewController *BGPasswordChangeVC = [[BGPasswordChangeViewController alloc] init];
            BGPasswordChangeVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:BGPasswordChangeVC animated:YES];
        }else{
            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
            BGproblemFeedbackViewController *BGproblemFeedbackVC = [[BGproblemFeedbackViewController alloc] init];
            BGproblemFeedbackVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:BGproblemFeedbackVC animated:YES];
        }else{
            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
        _BGmainTable.backgroundColor = BGH_Color(242, 242, 242, 1);
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
