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
#import <SafariServices/SafariServices.h>

@interface JBMoreViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *JBviewDataArray;
@property(nonatomic, strong)UIImageView *JBGoodLifeAndGoodHabitsImgView;
@property(nonatomic, strong)UILabel *JBGoodLifeAndGoodHabitsLabel;
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
    JBMineTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"JBMineTableViewCell" forIndexPath:indexPath];
    cell.JBminemodel = JBminemodel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    JBMineModel *JBminemodel = self.JBviewDataArray[indexPath.row];
    if (indexPath.row == 0) {
        
    }if (indexPath.row == 1) {
        AVQuery *JBbquery = [AVQuery queryWithClassName:@"JBGoodLifeAndGoodHabits"];
         __weak typeof(self) weakSelf = self;
        [JBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
                NSDictionary *JBDic = (NSDictionary *)[array lastObject];
                NSString *JBstring = [JBDic objectForKey:@"GoodLifeAndGoodHabits"];
                NSString *JBstring1 = [JBDic objectForKey:@"GoodLifeAndGoodHabits1"];
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:JBstring] options:@{} completionHandler:nil];
                if (JBstring1.length) {
                SFSafariViewController *JBsafariVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:JBstring1]];
                [weakSelf presentViewController:JBsafariVC animated:YES completion:nil];
                }
        }];
    }else if (indexPath.row == 2) {
        AVUser *bUser = [AVUser currentUser];
           if (bUser) {

           }else{
               UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
               UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
               UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                   
               }];
               [alertVC addAction:cancelAction];
               [alertVC addAction:sureAction];
               [self presentViewController:alertVC animated:YES completion:nil];
           }
    }else if (indexPath.row == 3){
        AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            
        }else{
            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                
            }];
            [alertVC addAction:cancelAction];
            [alertVC addAction:sureAction];
            [self presentViewController:alertVC animated:YES completion:nil];
        }
    }else if (indexPath.row == 4){
        AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            
        }else{
            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {

            }];
            [alertVC addAction:cancelAction];
            [alertVC addAction:sureAction];
            [self presentViewController:alertVC animated:YES completion:nil];
        }
    }else{
        
    }
}
#pragma mark - 属性懒加载
- (UIImageView *)JBGoodLifeAndGoodHabitsImgView{
    if (!_JBGoodLifeAndGoodHabitsImgView) {
        _JBGoodLifeAndGoodHabitsImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"GoodLifeAndGoodHabits"]];
    }
    return _JBGoodLifeAndGoodHabitsImgView;
}
- (UILabel *)JBGoodLifeAndGoodHabitsLabel{
    if (!_JBGoodLifeAndGoodHabitsLabel) {
        _JBGoodLifeAndGoodHabitsLabel = [[UILabel alloc] init];
        _JBGoodLifeAndGoodHabitsLabel.textColor = [UIColor blueColor];
        _JBGoodLifeAndGoodHabitsLabel.font = [UIFont systemFontOfSize:18];
        _JBGoodLifeAndGoodHabitsLabel.text = NSLocalizedString(@"用心记录每一天", nil);
    }
    return _JBGoodLifeAndGoodHabitsLabel;
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
        [self.view addSubview:self.JBGoodLifeAndGoodHabitsImgView];
        [self.view addSubview:self.JBGoodLifeAndGoodHabitsLabel];
        [self.JBGoodLifeAndGoodHabitsImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(16);
            make.leading.equalTo(self.view).offset(20);
            make.width.mas_equalTo(125);
            make.height.mas_equalTo(125);
        }];
        [self.JBGoodLifeAndGoodHabitsLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.JBGoodLifeAndGoodHabitsImgView);
            make.leading.equalTo(self.JBGoodLifeAndGoodHabitsImgView.mas_trailing).offset(16);
            make.trailing.equalTo(self.view).offset(-20);
            make.height.mas_equalTo(40);
        }];
        [self.view addSubview:_JBmainTable];
        [_JBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.JBGoodLifeAndGoodHabitsImgView.mas_bottom).offset(20);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _JBmainTable;
}
@end
