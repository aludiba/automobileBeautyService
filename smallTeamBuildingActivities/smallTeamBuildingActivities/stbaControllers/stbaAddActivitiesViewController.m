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
#import "stbaChooseAddressBookViewController.h"
#import "stbaAddressBookModel.h"
#import "stbaAddActivitieModel.h"
@interface stbaAddActivitiesViewController()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)stbaAddActivitieModel *activityModel;
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UIButton *stbaSaveButton;
@property(nonatomic, strong)UIDatePicker *datePicker;
@property(nonatomic, strong)UIToolbar *toolbar;
@end
@implementation stbaAddActivitiesViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"Meeting";
    if (self.currentType == stbaAddActivitiesViewControllerTypeDetail) {
    [self stbaSetContent];
    }
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    if (self.currentType != stbaAddActivitiesViewControllerTypeDetail && self.currentType != stbaAddActivitiesViewControllerTypeOther) {
        [self stbaSetContent];
    }
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.currentType = stbaAddActivitiesViewControllerTypeAdd;
}
- (void)stba_setupNavigationItems{
    [super stba_setupNavigationItems];
    if (self.currentType != stbaAddActivitiesViewControllerTypeDetail) {
        UIBarButtonItem *rightbaritem = [[UIBarButtonItem alloc] initWithCustomView:self.stbaSaveButton];
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
        contactsModel.contactsArray = [[NSMutableArray alloc] init];
        [self.viewDataArray addObject:contactsModel];
        [self.mainTable reloadData];
    }else if(self.currentType == stbaAddActivitiesViewControllerTypeDetail){
        [self.viewDataArray removeAllObjects];
        stbaAddActivitiesViewModel *themeModel = [[stbaAddActivitiesViewModel alloc] init];
        themeModel.currentType = stbaAddActivitiesCellDefault;
        themeModel.title = @"theme";
        themeModel.placeholder = @"Please fill in theme";
        if (self.model.theme.length) {
            themeModel.content = self.model.theme;
        }else{
            themeModel.content = @"-";
        }
        themeModel.isDetail = YES;
        [self.viewDataArray addObject:themeModel];
        
        stbaAddActivitiesViewModel *contentModel = [[stbaAddActivitiesViewModel alloc] init];
        contentModel.currentType = stbaAddActivitiesCellDefault;
        contentModel.title = @"content";
        contentModel.placeholder = @"Please fill in content";
        if (self.model.content.length) {
            contentModel.content = self.model.content;
        }else{
            contentModel.content = @"-";
        }
        contentModel.isDetail = YES;
        [self.viewDataArray addObject:contentModel];
        
        stbaAddActivitiesViewModel *noteModel = [[stbaAddActivitiesViewModel alloc] init];
        noteModel.currentType = stbaAddActivitiesCellDefault;
        noteModel.title = @"note";
        noteModel.placeholder = @"Please fill in note";
        if (self.model.note.length) {
            noteModel.content = self.model.note;
        }else{
            noteModel.content = @"-";
        }
        noteModel.isDetail = YES;
        [self.viewDataArray addObject:noteModel];
        
        stbaAddActivitiesViewModel *lineModel = [[stbaAddActivitiesViewModel alloc] init];
        lineModel.currentType = stbaAddActivitiesCellLine;
        [self.viewDataArray addObject:lineModel];
        
        stbaAddActivitiesViewModel *dateModel = [[stbaAddActivitiesViewModel alloc] init];
        dateModel.currentType = stbaAddActivitiesCellDate;
        dateModel.title = @"date";
        dateModel.placeholder = @"Please select the time";
        if (self.model.date.length) {
            dateModel.content = self.model.date;
        }else{
            dateModel.content = @"-";
        }
        dateModel.isDetail = YES;
        [self.viewDataArray addObject:dateModel];
        
        stbaAddActivitiesViewModel * contactsModel = [[stbaAddActivitiesViewModel alloc] init];
        contactsModel.currentType = stbaAddActivitiesCellChoose;
        contactsModel.contactsArray = [[NSMutableArray alloc] init];
        contactsModel.title = @"contacts";
        contactsModel.placeholder = @"Please select contact person";
        if (self.model.contacts.length) {
            contactsModel.content = self.model.contacts;
        }else{
            contactsModel.content = @"-";
        }
        contactsModel.isDetail = YES;
        contactsModel.contactsArray = [[NSMutableArray alloc] init];
        [self.viewDataArray addObject:contactsModel];
        self.stbaSaveButton.hidden = YES;
        [self.mainTable reloadData];
    }
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)closeKeyboard:(UITapGestureRecognizer *)recognizer{
    [self.view endEditing:YES];
}
#pragma mark - 保存
- (void)stbaSave{
    NSLog(@"save~~~");
    stbaAddActivitiesViewModel *viewModel0 = self.viewDataArray[0];
    if (!viewModel0.content.length) {
        [MBProgressHUD stbashowReminderText:@"Please fill in theme"];
        return;
    }
    self.activityModel.theme = viewModel0.content;
    stbaAddActivitiesViewModel *viewModel1 = self.viewDataArray[1];
    if (!viewModel1.content.length) {
        [MBProgressHUD stbashowReminderText:@"Please fill in content"];
        return;
    }
    self.activityModel.content = viewModel1.content;
    stbaAddActivitiesViewModel *viewModel2 = self.viewDataArray[2];
    if (!viewModel2.content.length) {
        [MBProgressHUD stbashowReminderText:@"Please fill in note"];
        return;
    }
    self.activityModel.note = viewModel2.content;
    stbaAddActivitiesViewModel *viewModel3 = self.viewDataArray[4];
    if (!viewModel3.content.length) {
        [MBProgressHUD stbashowReminderText:@"Please select the time"];
        return;
    }
    self.activityModel.date = viewModel3.content;
    stbaAddActivitiesViewModel *viewModel4 = self.viewDataArray[5];
    if (!viewModel4.content.length) {
        [MBProgressHUD stbashowReminderText:@"Please select contact person"];
        return;
    }
    self.activityModel.contacts = viewModel4.content;
    NSString *documentPath = [stbaHBTool getDocumentPath:@"stbaActivityData.plist"];
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"stbaActivityData" ofType:@"plist"];
    NSFileManager *manager = [NSFileManager defaultManager];
    NSError *error;
    if ([manager fileExistsAtPath:documentPath]) {
        NSLog(@"file is exists");
        
    }else{
        if ([manager copyItemAtPath:plistPath toPath:documentPath error:&error]) {
            NSLog(@"file is not exists, copy success!");
            
        }else{
            NSLog(@"error = %@",error);
            return;
        }
    }
    NSMutableArray *documentData = [[NSMutableArray alloc] initWithContentsOfFile:documentPath];
    NSDictionary *dic = (NSDictionary *)[self.activityModel yy_modelToJSONObject];
    NSDictionary *dict = @{@"id":self.activityModel.theme,@"data":dic};
    for (NSMutableDictionary *dictd in documentData) {
        if ([dictd[@"id"] isEqualToString:self.activityModel.theme]) {
            [documentData removeObject:dictd];
            break;
        }
    }
    [documentData addObject:dict];
    [documentData writeToFile:documentPath atomically:YES];
    [MBProgressHUD stbashowReminderText:@"Save success!"];
    [self.tabBarController setSelectedIndex:0];
}
- (void)dateChange:(UIDatePicker *)datePicker {
    
}
- (void)dateResult:(UIBarButtonItem *)sender{
    if (sender.tag == 100) {
        stbaAddActivitiesViewModel *model = self.viewDataArray[4];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //设置时间格式
        formatter.dateFormat = @"yyyy-MM-dd HH:mm";
        NSString *dateStr = [formatter  stringFromDate:self.datePicker.date];
        model.content = dateStr;
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:4 inSection:0];
        [self.mainTable reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }else{
        [self.view endEditing:YES];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.viewDataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    stbaAddActivitiesViewModel *model = self.viewDataArray[indexPath.row];
    if (model.currentType == stbaAddActivitiesCellLine) {
        return 10;
    }else{
        return UITableViewAutomaticDimension;
    }
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
        stbaAddActivitiesSelectAddTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stbaAddActivitiesSelectAddTableViewCell" forIndexPath:indexPath];
        if (model.currentType == stbaAddActivitiesCellDate) {
            cell.timeTextField.inputView = self.datePicker;
            cell.timeTextField.inputAccessoryView = self.toolbar;
        }
        cell.model = model;
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    stbaAddActivitiesViewModel *model = self.viewDataArray[indexPath.row];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (model.currentType == stbaAddActivitiesCellLine) {
        
    }else if (model.currentType == stbaAddActivitiesCellDefault){

    }else{
        if (model.currentType == stbaAddActivitiesCellChoose) {
            stbaChooseAddressBookViewController *VC = [[stbaChooseAddressBookViewController alloc] init];
            if (model.contactsArray.count) {
                VC.selectArray = [model.contactsArray mutableCopy];
            }
            VC.superVC = self;
            VC.hidesBottomBarWhenPushed = YES;
            __weak typeof(self) weakSelf = self;
            VC.finishSelectBlock = ^(stbaChooseAddressBookViewController * _Nonnull selectVC) {
                model.contactsArray = [selectVC.selectArray copy];
                NSArray *tempArray = [model.contactsArray valueForKey:@"name"];
                model.content = [tempArray componentsJoinedByString:@","];
                [weakSelf.mainTable reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
            };
            [self.navigationController pushViewController:VC animated:YES];
        }else{
            
        }
    }
}
#pragma mark - 属性懒加载
- (stbaAddActivitieModel *)activityModel{
    if (!_activityModel) {
        _activityModel = [[stbaAddActivitieModel alloc] init];
    }
    return _activityModel;
}
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
        [_stbaSaveButton setTitle:@"Complete" forState:UIControlStateNormal];
        [_stbaSaveButton setTitleColor:[UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0] forState:UIControlStateNormal];
        [_stbaSaveButton.titleLabel setFont:[UIFont fontWithName:@"PingFangSC-Regular" size:17]];
        [_stbaSaveButton addTarget:self action:@selector(stbaSave) forControlEvents:UIControlEventTouchUpInside];
        [_stbaSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(22);
        }];
    }
    return _stbaSaveButton;
}
- (UIDatePicker *)datePicker{
    if (!_datePicker) {
        _datePicker = [[UIDatePicker alloc] init];
        _datePicker.datePickerMode = UIDatePickerModeDateAndTime;
        [_datePicker setDate:[NSDate date] animated:YES];
        [_datePicker addTarget:self action:@selector(dateChange:) forControlEvents:UIControlEventValueChanged];
    }
    return _datePicker;
}
- (UIToolbar *)toolbar{
    if (!_toolbar) {
        UIToolbar *toolbar = [[UIToolbar alloc] init];
        toolbar.barTintColor = stbaH_Color(242, 242, 242, 1);
        //设置工具条的frame
        toolbar.frame = CGRectMake(0, 0, stbaWIDTH, 44);
        //给工具条添加按钮
        UIBarButtonItem *item0 = [[UIBarButtonItem alloc]initWithTitle:@"cancel" style:UIBarButtonItemStylePlain target:self action:@selector(dateResult:)];
        item0.tag = 101;
        UIBarButtonItem *item1 = [[UIBarButtonItem alloc]initWithTitle:@"                                                 " style:UIBarButtonItemStyleDone target:self action:@selector(dateResult:)];
        UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithTitle:@"complete" style:UIBarButtonItemStylePlain target:self action:@selector(dateResult:)];
        item2.tag = 100;
        toolbar.items = @[item0, item1, item2];
        _toolbar = toolbar;
    }
    return _toolbar;
}
@end
