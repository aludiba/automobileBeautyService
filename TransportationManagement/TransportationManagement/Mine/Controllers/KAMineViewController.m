//
//  KAMineViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KAMineViewController.h"
#import "KAMineModel.h"
#import "KAMineTableViewCell.h"
#import "KAModifyNicknameViewController.h"
#import "KAPasswordChangeViewController.h"
#import "KAproblemFeedbackViewController.h"
#import "KALoginViewController.h"

@interface KAMineViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *KAviewDataArray;
@property(nonatomic, strong)UITableView *KAmainTable;//列表
@end

@implementation KAMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"我的";
    [self KASetContentView];
}
- (void)KASetContentView{
    KAMineModel *KAnicknameViewModel = [[KAMineModel alloc] init];
    KAnicknameViewModel.KAtitle = @"昵称";
    AVUser *user = [AVUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        KAnicknameViewModel.KAcontent = [user objectForKey:@"username"];
    }
    [self.KAviewDataArray addObject:KAnicknameViewModel];
    
    KAMineModel *KApasswordViewModel = [[KAMineModel alloc] init];
    KApasswordViewModel.KAtitle = @"密码";
    [self.KAviewDataArray addObject:KApasswordViewModel];
    
    KAMineModel *KAFeedbackViewModel = [[KAMineModel alloc] init];
    KAFeedbackViewModel.KAtitle = @"问题反馈";
    [self.KAviewDataArray addObject:KAFeedbackViewModel];
    
    KAMineModel *KAloginViewModel = [[KAMineModel alloc] init];
    KAloginViewModel.KAtitle = @"登录&退出";
    [self.KAviewDataArray addObject:KAloginViewModel];
    
    [self.KAmainTable reloadData];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.KAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    KAMineModel *KAminemodel = self.KAviewDataArray[indexPath.row];
    KAMineTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"KAMineTableViewCell" forIndexPath:indexPath];
    cell.KAminemodel = KAminemodel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    KAMineModel *KAminemodel = self.KAviewDataArray[indexPath.row];
    if (indexPath.row == 0) {
        KAModifyNicknameViewController *KAModifyNicknameVC = [[KAModifyNicknameViewController alloc] init];
        __weak __typeof(self)weakSelf = self;
        KAModifyNicknameVC.KAmodifynicknameB = ^(KAModifyNicknameViewController * _Nonnull nicknameVC) {
            KAminemodel.KAcontent = nicknameVC.KAnickname;
            [weakSelf.KAmainTable reloadData];
        };
        KAModifyNicknameVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:KAModifyNicknameVC animated:YES];
    }else if (indexPath.row == 1){
        KAPasswordChangeViewController *KAPasswordChangeVC = [[KAPasswordChangeViewController alloc] init];
        KAPasswordChangeVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:KAPasswordChangeVC animated:YES];
    }else if (indexPath.row == 2){
        KAproblemFeedbackViewController *KAproblemFeedbackVC = [[KAproblemFeedbackViewController alloc] init];
        KAproblemFeedbackVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:KAproblemFeedbackVC animated:YES];
    }else{
        [AVUser logOut];
        KALoginViewController *KALoginVC = [[KALoginViewController alloc] init];
        KALoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentViewController:KALoginVC animated:YES completion:^{
            
        }];
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)KAviewDataArray{
    if (!_KAviewDataArray) {
        _KAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _KAviewDataArray;
}
- (UITableView *)KAmainTable{
    if (!_KAmainTable) {
        _KAmainTable = [[UITableView alloc] init];
        _KAmainTable.backgroundColor = KAH_Color(242, 242, 242, 1);
        _KAmainTable.rowHeight = UITableViewAutomaticDimension;
        _KAmainTable.estimatedRowHeight = 48.0f;
        _KAmainTable.dataSource = self;
        _KAmainTable.delegate = self;
        _KAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_KAmainTable registerClass:[KAMineTableViewCell class] forCellReuseIdentifier:@"KAMineTableViewCell"];
        [self.view addSubview:_KAmainTable];
        [_KAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _KAmainTable;
}
@end
