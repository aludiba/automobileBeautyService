//
//  SDWriteDiaryDetailViewController.m
//  Simple Diary
//
//  Created by 褚红彪 on 2019/8/4.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDWriteDiaryDetailViewController.h"
#import "SDTabBarController.h"
#import "SDDiaryViewController.h"
#import "SDWriteDiaryViewController.h"
#import "SDWriteDiaryDetailTableViewCell.h"
#import "SDWriteDiaryModel.h"

@interface SDWriteDiaryDetailViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UIButton *deleteButton;
@property(nonatomic, strong)UIButton *editorButton;
@property(nonatomic, strong)UITableView *mainTable;
@end

@implementation SDWriteDiaryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"详情", nil);
    NSDictionary *themeDic = self.model.themeRGB;
    NSInteger themeR = [[themeDic objectForKey:@"R"] integerValue];
    NSInteger themeG = [[themeDic objectForKey:@"G"] integerValue];
    NSInteger themeB = [[themeDic objectForKey:@"B"] integerValue];
    self.mainTable.backgroundColor = SDH_Color(themeR, themeG, themeB, 1);
    self.view.backgroundColor = SDH_Color(themeR, themeG, themeB, 1);
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.mainTable reloadData];
}
- (void)SD_setupNavigationItems{
    [super SD_setupNavigationItems];
    UIBarButtonItem *fixWidthItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixWidthItem.width = 24;
    UIBarButtonItem *deleteItem = [[UIBarButtonItem alloc] initWithCustomView:self.deleteButton];
    UIBarButtonItem *editorItem = [[UIBarButtonItem alloc] initWithCustomView:self.editorButton];
    self.navigationItem.rightBarButtonItems = @[editorItem,fixWidthItem,deleteItem];
}
- (void)btnClick:(UIButton *)sender{
    if (sender.tag == 101){
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"确定删除?", nil) preferredStyle:UIAlertControllerStyleActionSheet];
        UIAlertAction *action = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            AVObject *Diary = [AVObject objectWithoutDataWithClassName:@"Diary" objectId:self.model.objectId];
            [Diary deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
                if (isSuccessful) {
                    [MBProgressHUD SDshowReminderText:NSLocalizedString(@"删除成功", nil)];
                    [self.navigationController popViewControllerAnimated:YES];
                }else{
                    [MBProgressHUD SDshowReminderText:NSLocalizedString(@"请稍后再试", nil)];
                }
            }];
        }];
        UIAlertAction *action2 = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        }];
        [alertVC addAction:action];
        [alertVC addAction:action2];
        [self presentViewController:alertVC animated:YES completion:nil];
    }else if (sender.tag == 102){
        [SDTabBarController shareInstance].SDDiaryVC.wdVC = [[SDWriteDiaryViewController alloc] init];
        [SDTabBarController shareInstance].SDDiaryVC.wdVC.type = SDWriteDiaryViewControllerTypeEdit;
        [SDTabBarController shareInstance].SDDiaryVC.wdVC.releaseModel = self.model;
        [self.navigationController pushViewController:[SDTabBarController shareInstance].SDDiaryVC.wdVC animated:YES];
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SDWriteDiaryDetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SDWriteDiaryDetailTableViewCell" forIndexPath:indexPath];
    cell.model = self.model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UIButton *)deleteButton{
    if (!_deleteButton) {
        _deleteButton = [[UIButton alloc] init];
        _deleteButton.tag = 101;
        [_deleteButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_deleteButton setImage:[UIImage imageNamed:@"SD_delete"] forState:UIControlStateNormal];
    }
    return _deleteButton;
}
- (UIButton *)editorButton{
    if (!_editorButton) {
        _editorButton = [[UIButton alloc] init];
        _editorButton.tag = 102;
        [_editorButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_editorButton setImage:[UIImage imageNamed:@"SD_edit"] forState:UIControlStateNormal];
    }
    return _editorButton;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] init];
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = SDHEIGHT;;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_mainTable registerClass:[SDWriteDiaryDetailTableViewCell class] forCellReuseIdentifier:@"SDWriteDiaryDetailTableViewCell"];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _mainTable;
}
@end
