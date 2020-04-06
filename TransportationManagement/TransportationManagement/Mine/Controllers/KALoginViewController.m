//
//  KALoginViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KALoginViewController.h"
#import "KALoginTableViewCell.h"

@interface KALoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *KAmainTable;
@end

@implementation KALoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self KAsetContentView];
}
- (void)KAsetContentView{
    [self.view addSubview:self.KAmainTable];
    [self.KAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
- (void)closeKeyboard:(UITapGestureRecognizer *)recognizer {
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    KALoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"KALoginTableViewCell" forIndexPath:indexPath];
    cell.KASuperVC = self;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)KAmainTable{
    if (!_KAmainTable) {
        _KAmainTable = [[UITableView alloc] init];
        _KAmainTable.showsVerticalScrollIndicator = NO;
        _KAmainTable.scrollEnabled = NO;
        _KAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _KAmainTable.delegate = self;
        _KAmainTable.dataSource = self;
        _KAmainTable.rowHeight = UITableViewAutomaticDimension;
        _KAmainTable.estimatedRowHeight = 55.0f;
        _KAmainTable.tableHeaderView = [[UIView alloc] init];
        _KAmainTable.tableFooterView = [[UIView alloc] init];
        [_KAmainTable registerClass:[KALoginTableViewCell class] forCellReuseIdentifier:@"KALoginTableViewCell"];
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_KAmainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
    }
    return _KAmainTable;
}
@end
