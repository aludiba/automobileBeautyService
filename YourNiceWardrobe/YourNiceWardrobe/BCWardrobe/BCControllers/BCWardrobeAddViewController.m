//
//  BCWardrobeAddViewController.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/3.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BCWardrobeAddViewController.h"
#import "BCWardrobeAddTableViewCell.h"
#import "BCWardrobeAddModel.h"
#import "BCWardrobeViewController.h"

@interface BCWardrobeAddViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *BCViewDataArray;
@property(nonatomic, strong)UIButton *BCsaveButton;//保存按钮
@property(nonatomic, strong)UITableView *BCmainTable;//列表
@end

@implementation BCWardrobeAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Add";
    [self BCsetContentView];
}
#pragma mark - actions
- (void)BC_setupNavigationItems{
    [super BC_setupNavigationItems];
    UIBarButtonItem *BCsaveButton = [[UIBarButtonItem alloc] initWithCustomView:self.BCsaveButton];
    self.navigationItem.rightBarButtonItem = BCsaveButton;
}
- (void)BCsetContentView{
    BCWardrobeAddModel *BCtypesViewModel = [[BCWardrobeAddModel alloc] init];
    BCtypesViewModel.BCTitle = @"类型";
    BCtypesViewModel.BCDefault = @"请输入类型";
    [self.BCViewDataArray addObject:BCtypesViewModel];
    
    BCWardrobeAddModel *BCnumberViewModel = [[BCWardrobeAddModel alloc] init];
    BCnumberViewModel.BCTitle = @"尺码数";
    BCnumberViewModel.BCDefault = @"请输入尺码";
    [self.BCViewDataArray addObject:BCnumberViewModel];
    
    BCWardrobeAddModel *BCstorageViewModel = [[BCWardrobeAddModel alloc] init];
    BCstorageViewModel.BCTitle = @"储存位置";
    BCstorageViewModel.BCDefault = @"请输入储存位置";
    [self.BCViewDataArray addObject:BCstorageViewModel];
    
    BCWardrobeAddModel *BCpurchasetimeViewModel = [[BCWardrobeAddModel alloc] init];
    BCpurchasetimeViewModel.BCTitle = @"购买时间";
    BCpurchasetimeViewModel.BCDefault = @"请输入购买时间";
    [self.BCViewDataArray addObject:BCpurchasetimeViewModel];
    
    [self.BCmainTable reloadData];
}
- (void)BCsaveAction:(UIButton *)sender{
    NSLog(@"保存~~~");
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BCViewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BCWardrobeAddModel *BCViewModel = self.BCViewDataArray[indexPath.row];
    NSString *KMyCellID = @"BCWardrobeAddTableViewCell";
    NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
    BCWardrobeAddTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[BCWardrobeAddTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.BCViewModel = BCViewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.BCeditBlock = ^(BCWardrobeAddTableViewCell * _Nonnull cell) {
        if ([BCViewModel.BCTitle hasPrefix:@"购买时间"]) {
        if (cell.BCcontentHeight > BCViewModel.BCEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect frame = self.view.frame;
            frame.origin.y = frame.origin.y -  22;
            self.view.frame = frame;
        }];
        }
        }
        BCViewModel.BCEditHeight = cell.BCcontentHeight;
        [weakSelf.BCmainTable beginUpdates];
        [weakSelf.BCmainTable endUpdates];
    };
    return cell;
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
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _BCmainTable;
}
@end
