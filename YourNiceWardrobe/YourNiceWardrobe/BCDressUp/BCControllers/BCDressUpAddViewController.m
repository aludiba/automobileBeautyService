//
//  BCDressUpAddViewController.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BCDressUpAddViewController.h"
#import "BCDressUpViewController.h"
#import "BCDressUpAddTableViewCell.h"
#import "BCDressUpAddModel.h"
#import "BCDressUpModel.h"

@interface BCDressUpAddViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)BCDressUpModel *BCModel;
@property(nonatomic, strong)NSMutableArray *BCViewDataArray;
@property(nonatomic, strong)UIButton *BCsaveButton;//保存按钮
@property(nonatomic, strong)UITableView *BCmainTable;//列表
@end

@implementation BCDressUpAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(BCkeyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    self.title = @"添加";
    [self BCsetContentView];
}
- (void)BCkeyboardWillHide:(NSNotification *)BCnote{
    //取得键盘弹出时间
    CGFloat BCduration = [BCnote.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    //取得键盘高度
       [UIView animateWithDuration:BCduration delay:0 options:7 << 16 animations:^{
           self.view.transform = CGAffineTransformIdentity;
           self.view.frame = self.view.bounds;
       } completion:nil];
}
#pragma mark - actions
- (void)BC_setupNavigationItems{
    [super BC_setupNavigationItems];
    UIBarButtonItem *BCsaveButton = [[UIBarButtonItem alloc] initWithCustomView:self.BCsaveButton];
    self.navigationItem.rightBarButtonItem = BCsaveButton;
}
- (void)BCsetContentView{
    BCDressUpAddModel *BCViewModel = [[BCDressUpAddModel alloc] init];
    BCViewModel.BCDefault = @"请输入打扮穿搭内容";
    [self.BCViewDataArray addObject:BCViewModel];
    [self.BCmainTable reloadData];
}
- (void)BCsaveAction:(UIButton *)sender{
    for (int i = 0; i < self.BCViewDataArray.count; i++) {
        BCDressUpAddModel *BCviewModel = self.BCViewDataArray[i];
        NSString *BCtitleString = [BCHBTool BCremoveSpaceAndNewline:BCviewModel.BCTitle];
        NSString *BCcontentString = [BCHBTool BCremoveSpaceAndNewline:BCviewModel.BCContent];
        if (!BCtitleString.length) {
            if (i == 0) {
                [MBProgressHUD BCshowReminderText:@"请输入打扮穿搭标题"];
                return;
            }
        }
        if (!BCcontentString.length) {
            if (i == 0) {
                [MBProgressHUD BCshowReminderText:@"请输入打扮穿搭内容"];
                return;
            }
        }
    }
    BCDressUpAddModel *BCviewModel = self.BCViewDataArray[0];
    self.BCModel.BCTitle = BCviewModel.BCTitle;
    self.BCModel.BCContent = BCviewModel.BCContent;
    NSMutableDictionary *BCjsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.BCModel yy_modelToJSONObject]];
    AVUser *BCauthor = [AVUser currentUser];
    AVObject *BCdiary = [AVObject objectWithClassName:@"BCDressUp"];
    for (NSString *BCkey in BCjsonDictionary.allKeys) {
        [BCdiary setObject:[BCjsonDictionary objectForKey:BCkey]  forKey:BCkey];
    }
    [BCdiary setObject:BCauthor forKey:@"author"];
    [BCdiary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD BCshowReminderText:@"保存成功"];
            [self.BCsuperVC.BCmainTable.mj_header beginRefreshing];
            [self.navigationController popToRootViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD BCshowReminderText:@"请稍后重试"];
        } else {
            [MBProgressHUD BCshowReminderText:@"请稍后重试"];
        }
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BCViewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BCDressUpAddModel *BCViewModel = self.BCViewDataArray[indexPath.row];
    NSString *BCKMyCellID = @"BCDressUpAddTableViewCell";
    NSString *BCcellID = [NSString stringWithFormat:@"%@%zd",BCKMyCellID, indexPath.row];
    BCDressUpAddTableViewCell *BCcell = [tableView dequeueReusableCellWithIdentifier:BCcellID];
    if (!BCcell) {
        BCcell = [[BCDressUpAddTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:BCcellID];
    }
    BCcell.BCViewModel = BCViewModel;
    BCcell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    BCcell.BCeditBlock = ^(BCDressUpAddTableViewCell * _Nonnull cell) {
        if (BCcell.BCcontentHeight > BCViewModel.BCEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect BCframe = self.view.frame;
            BCframe.origin.y = BCframe.origin.y -  22;
            self.view.frame = BCframe;
        }];
        }
        BCViewModel.BCEditHeight = cell.BCcontentHeight;
        [weakSelf.BCmainTable beginUpdates];
        [weakSelf.BCmainTable endUpdates];
    };
    return BCcell;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)BCcloseKeyboard:(UITapGestureRecognizer *)recognizer{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (BCDressUpModel *)BCModel{
    if (!_BCModel) {
        _BCModel = [[BCDressUpModel alloc] init];
    }
    return _BCModel;
}
- (NSMutableArray *)BCViewDataArray{
    if (!_BCViewDataArray) {
        _BCViewDataArray = [[NSMutableArray alloc] init];
    }
    return _BCViewDataArray;
}
- (UIButton *)BCsaveButton{
    if (!_BCsaveButton) {
        _BCsaveButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_BCsaveButton setTitle:@"保存" forState:UIControlStateNormal];
        [_BCsaveButton addTarget:self action:@selector(BCsaveAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BCsaveButton;
}
- (UITableView *)BCmainTable{
    if (!_BCmainTable) {
        _BCmainTable = [[UITableView alloc] init];
        _BCmainTable.rowHeight = UITableViewAutomaticDimension;
        _BCmainTable.estimatedRowHeight = 48.0f;
        _BCmainTable.dataSource = self;
        _BCmainTable.delegate = self;
        _BCmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        UITapGestureRecognizer *BCsingleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(BCcloseKeyboard:)];
        BCsingleTapGesture.numberOfTapsRequired = 1;
        BCsingleTapGesture.cancelsTouchesInView = NO;
        [_BCmainTable addGestureRecognizer:BCsingleTapGesture];
        [self.view addGestureRecognizer:BCsingleTapGesture];
        UIPanGestureRecognizer *BCpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(BCcloseKeyboard:)];
        [self.view addGestureRecognizer:BCpanGesture];
        [self.view addSubview:_BCmainTable];
        [_BCmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        
    }
    return _BCmainTable;
}

@end
