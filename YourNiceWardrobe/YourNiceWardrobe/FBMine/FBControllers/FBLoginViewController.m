//
//  FBLoginViewController.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "FBLoginViewController.h"
#import "FBLoginTableViewCell.h"

@interface FBLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *FBmainTable;
@end

@implementation FBLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self FBsetContentView];
}
- (void)FBsetContentView{
    [self.view addSubview:self.FBmainTable];
    self.FBmainTable.backgroundColor = [UIColor blueColor];
    [self.FBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)FBcloseKeyboard:(UITapGestureRecognizer *)recognizer {
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FBLoginTableViewCell *FBcell = [tableView dequeueReusableCellWithIdentifier:@"FBLoginTableViewCell" forIndexPath:indexPath];
    FBcell.FBSuperVC = self;
    FBcell.selectionStyle = UITableViewCellSelectionStyleNone;
    return FBcell;
}
#pragma mark - 属性懒加载
- (UITableView *)FBmainTable{
    if (!_FBmainTable) {
        _FBmainTable = [[UITableView alloc] init];
        _FBmainTable.showsVerticalScrollIndicator = NO;
        _FBmainTable.scrollEnabled = NO;
        _FBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _FBmainTable.delegate = self;
        _FBmainTable.dataSource = self;
        _FBmainTable.rowHeight = UITableViewAutomaticDimension;
        _FBmainTable.estimatedRowHeight = 55.0f;
        _FBmainTable.tableHeaderView = [[UIView alloc] init];
        _FBmainTable.tableFooterView = [[UIView alloc] init];
        [_FBmainTable registerClass:[FBLoginTableViewCell class] forCellReuseIdentifier:@"FBLoginTableViewCell"];
        UITapGestureRecognizer *FBsingleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(FBcloseKeyboard:)];
        FBsingleTapGesture.numberOfTapsRequired = 1;
        FBsingleTapGesture.cancelsTouchesInView = NO;
        [_FBmainTable addGestureRecognizer:FBsingleTapGesture];
        [self.view addGestureRecognizer:FBsingleTapGesture];
        UIPanGestureRecognizer *FBpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(FBcloseKeyboard:)];
        [self.view addGestureRecognizer:FBpanGesture];
    }
    return _FBmainTable;
}
@end
