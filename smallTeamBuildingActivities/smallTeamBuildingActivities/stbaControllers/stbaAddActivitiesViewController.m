//
//  stbaAddActivitiesViewController.m
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/4.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaAddActivitiesViewController.h"
#import "stbaAddActivitiesViewModel.h"
#import "stbaAddActivitiesEditorTableViewCell.h"
#import "stbaAddActivitiesSelectAddTableViewCell.h"
@interface stbaAddActivitiesViewController()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UIButton *stbaEditButton;
@property(nonatomic, strong)UIButton *stbaSaveButton;
@end
@implementation stbaAddActivitiesViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"Activity";
}
- (void)stba_setupNavigationItems{
    [super stba_setupNavigationItems];
    if (self.currentType == stbaAddActivitiesViewControllerTypeDetail) {
        UIBarButtonItem *rightbaritem = [[UIBarButtonItem alloc] initWithCustomView:self.stbaEditButton];
        self.navigationItem.rightBarButtonItem = rightbaritem;
    }
}
- (void)stbaSetContent{
    if (self.currentType == stbaAddActivitiesViewControllerTypeAdd) {
        [self.viewDataArray removeAllObjects];
        stbaAddActivitiesViewModel *themeModel = [[stbaAddActivitiesViewModel alloc] init];
        themeModel.currentType = stbaAddActivitiesCellDefault;
        themeModel.title = @"theme";
        themeModel.placeholder = @"Please fill in theme";
        [self.viewDataArray addObject:themeModel];
        
        stbaAddActivitiesViewModel *contentModel = [[stbaAddActivitiesViewModel alloc] init];
        contentModel.currentType = stbaAddActivitiesCellDefault;
        contentModel.title = @"content";
        contentModel.placeholder = @"Please fill in content";
        [self.viewDataArray addObject:contentModel];
        
        stbaAddActivitiesViewModel *noteModel = [[stbaAddActivitiesViewModel alloc] init];
        noteModel.currentType = stbaAddActivitiesCellDefault;
        noteModel.title = @"note";
        noteModel.placeholder = @"Please fill in note";
        [self.viewDataArray addObject:noteModel];
        
        stbaAddActivitiesViewModel *lineModel = [[stbaAddActivitiesViewModel alloc] init];
        lineModel.currentType = stbaAddActivitiesCellLine;
        [self.viewDataArray addObject:lineModel];
        
        stbaAddActivitiesViewModel *dateModel = [[stbaAddActivitiesViewModel alloc] init];
        dateModel.currentType = stbaAddActivitiesCellDate;
        dateModel.title = @"date";
        dateModel.placeholder = @"Please select the time";
        [self.viewDataArray addObject:dateModel];
        
        stbaAddActivitiesViewModel * contactsModel = [[stbaAddActivitiesViewModel alloc] init];
        contactsModel.currentType = stbaAddActivitiesCellChoose;
        contactsModel.contactsArray = [[NSMutableArray alloc] init];
        contactsModel.title = @"contacts";
        contactsModel.placeholder = @"Please select contact person";
        [self.viewDataArray addObject:contactsModel];
        [self.mainTable reloadData];
    }else{
        
    }
}
#pragma mark - 关闭键盘
- (void)closeKeyboard:(UITapGestureRecognizer *)recognizer{
    [self.view endEditing:YES];
}
#pragma mark - 保存
- (void)stbaSave{
    NSLog(@"save~~~");
}
#pragma mark - 编辑
- (void)stbaEditor{
    NSLog(@"editor~~~");
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.viewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    stbaAddActivitiesViewModel *model = self.viewDataArray[indexPath.row];
    if (model.currentType == stbaAddActivitiesCellLine) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
        cell.contentView.backgroundColor = stbaH_Color(242, 242, 242, 1);
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (model.currentType == stbaAddActivitiesCellDefault){
        NSString *KMyCellID = @"stbaAddActivitiesEditorTableViewCell";
        NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
        stbaAddActivitiesEditorTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (!cell) {
            cell = [[stbaAddActivitiesEditorTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        }
        cell.model = model;
        __weak typeof(self) weakSelf = self;
        cell.editblock = ^(stbaAddActivitiesEditorTableViewCell * _Nonnull cell) {
            [weakSelf.mainTable beginUpdates];
            [weakSelf.mainTable endUpdates];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        return NULL;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)viewDataArray{
    if (!_viewDataArray) {
        _viewDataArray = [[NSMutableArray alloc] init];
    }
    return _viewDataArray;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] init];
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.dataSource = self;
        _mainTable.delegate = self;
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_mainTable registerClass:[stbaAddActivitiesSelectAddTableViewCell class] forCellReuseIdentifier:@"stbaAddActivitiesSelectAddTableViewCell"];
        [_mainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_mainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
        [self.view addSubview:self.stbaSaveButton];
        [self.stbaSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view).offset(16);
            make.trailing.equalTo(self.view).offset(-16);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-10);
            make.height.mas_equalTo(44);
        }];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
        make.top.equalTo(self.mas_topLayoutGuideBottom);
        make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-64);
        }];
    }
    return _mainTable;
}
- (UIButton *)stbaSaveButton{
    if (!_stbaSaveButton) {
        _stbaSaveButton = [[UIButton alloc] init];
        _stbaSaveButton.backgroundColor = [UIColor redColor];
        _stbaSaveButton.layer.cornerRadius = 2;
        _stbaSaveButton.layer.masksToBounds = YES;
        _stbaSaveButton.layer.borderColor = stbaH_Color(100, 141, 225, 1).CGColor;
        _stbaSaveButton.layer.borderWidth = 0.5f;
        [_stbaSaveButton setTitle:@"COMPLETE" forState:UIControlStateNormal];
        [_stbaSaveButton addTarget:self action:@selector(stbaSave) forControlEvents:UIControlEventTouchUpInside];
        [_stbaSaveButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_stbaSaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
    }
    return _stbaSaveButton;
}
- (UIButton *)stbaEditButton{
    if (!_stbaEditButton) {
        _stbaEditButton = [[UIButton alloc] init];
        [_stbaEditButton setTitle:@"Editor" forState:UIControlStateNormal];
        [_stbaEditButton setTitleColor:[UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0] forState:UIControlStateNormal];
        [_stbaEditButton.titleLabel setFont:[UIFont fontWithName:@"PingFangSC-Regular" size:17]];
        [_stbaEditButton addTarget:self action:@selector(stbaEditor) forControlEvents:UIControlEventTouchUpInside];
        [_stbaEditButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(22);
        }];
    }
    return _stbaEditButton;
}
@end
