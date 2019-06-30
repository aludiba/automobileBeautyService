//
//  mag5sAddViewController.m
//  workshopManagement5s
//
//  Created by bykj on 2019/6/28.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "mag5sAddViewController.h"
#import "mag5sAddViewModel.h"
#import "mag5sDataModel.h"
#import "mag5sSeirModel.h"
#import "mag5sSeitonModel.h"
#import "mag5sSeisoModel.h"
#import "mag5sSeiketsuModel.h"
#import "mag5sShitsukeModel.h"
#import "mag5sEditorTableViewCell.h"
#import "mag5sAddSingleTableViewCell.h"

@interface mag5sAddViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *mag5sMainTable;
@property(nonatomic, strong)NSMutableArray *mag5sDataArray;
@property(nonatomic, strong)UIButton *mag5sEditButton;
@property(nonatomic, strong)UIButton *mag5sEaveButton;
@end

@implementation mag5sAddViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.currentType == mag5sAddViewControllerTypeAdd) {
        self.title = @"Add";
    }else if (self.currentType == mag5sAddViewControllerTypeDetail){
        self.title = @"Detail";
    }
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self mag5sSetContent];
}
- (void)mag5s_setupNavigationItems{
    [super mag5s_setupNavigationItems];
    if (self.currentType == mag5sAddViewControllerTypeAdd) {
        UIBarButtonItem *rightbaritem = [[UIBarButtonItem alloc] initWithCustomView:self.mag5sEaveButton];
        self.navigationItem.rightBarButtonItem = rightbaritem;
    }
}
- (void)mag5sSetContent{
    if (self.currentType == mag5sAddViewControllerTypeAdd) {
        [self.mag5sDataArray removeAllObjects];
        mag5sAddViewModel *sectionNameModel = [[mag5sAddViewModel alloc] init];
        sectionNameModel.currentType = mag5sAddCellDefault;
        sectionNameModel.title = @"section Name";
        sectionNameModel.placeholder = @"Please fill in section Name";
        [self.mag5sDataArray addObject:sectionNameModel];
        
        mag5sAddViewModel *responsibleForWorkModel = [[mag5sAddViewModel alloc] init];
        responsibleForWorkModel.currentType = mag5sAddCellDefault;
        responsibleForWorkModel.title = @"responsible";
        responsibleForWorkModel.placeholder = @"Please fill in responsible For Work";
        [self.mag5sDataArray addObject:responsibleForWorkModel];
        
        mag5sAddViewModel *scoreModel = [[mag5sAddViewModel alloc] init];
        scoreModel.currentType = mag5sAddCellDefault;
        scoreModel.title = @"score";
        scoreModel.placeholder = @"Please fill in score";
        [self.mag5sDataArray addObject:scoreModel];
        
        mag5sAddViewModel *mag5sSeirModel = [[mag5sAddViewModel alloc] init];
        mag5sSeirModel.currentType = mag5sAddCellSingle;
        mag5sSeirModel.title = @"seir";
        mag5sSeirModel.placeholder = @"Please fill in remarks";
       [self.mag5sDataArray addObject:mag5sSeirModel];

        mag5sAddViewModel *mag5sSeitonModel = [[mag5sAddViewModel alloc] init];
        mag5sSeitonModel.currentType = mag5sAddCellSingle;
        mag5sSeitonModel.title = @"seiton";
        mag5sSeitonModel.placeholder = @"Please fill in remarks";
        [self.mag5sDataArray addObject:mag5sSeitonModel];
        
        mag5sAddViewModel *mag5sSeisoModel = [[mag5sAddViewModel alloc] init];
        mag5sSeisoModel.currentType = mag5sAddCellSingle;
        mag5sSeisoModel.title = @"seiso";
        mag5sSeisoModel.placeholder = @"Please fill in remarks";
        [self.mag5sDataArray addObject:mag5sSeisoModel];
        
        mag5sAddViewModel *mag5sSeiketsuModel = [[mag5sAddViewModel alloc] init];
        mag5sSeiketsuModel.currentType = mag5sAddCellSingle;
        mag5sSeiketsuModel.title = @"seiketsu";
        mag5sSeiketsuModel.placeholder = @"Please fill in remarks";
        [self.mag5sDataArray addObject:mag5sSeiketsuModel];
        
        mag5sAddViewModel *mag5sShitsukeModel = [[mag5sAddViewModel alloc] init];
        mag5sShitsukeModel.currentType = mag5sAddCellSingle;
        mag5sShitsukeModel.title = @"shitsuke";
        mag5sShitsukeModel.placeholder = @"Please fill in remarks";
        [self.mag5sDataArray addObject:mag5sShitsukeModel];
    }else{
        mag5sAddViewModel *sectionNameModel = [[mag5sAddViewModel alloc] init];
        sectionNameModel.currentType = mag5sAddCellDefault;
        sectionNameModel.title = @"section Name";
        sectionNameModel.content = self.mag5sdatamodel.sectionName;
        sectionNameModel.isDetail = YES;
        sectionNameModel.placeholder = @"Please fill in section Name";
        [self.mag5sDataArray addObject:sectionNameModel];
        
        mag5sAddViewModel *responsibleForWorkModel = [[mag5sAddViewModel alloc] init];
        responsibleForWorkModel.currentType = mag5sAddCellDefault;
        responsibleForWorkModel.title = @"responsible";
        responsibleForWorkModel.content = self.mag5sdatamodel.responsibleForWork;
        responsibleForWorkModel.isDetail = YES;
        responsibleForWorkModel.placeholder = @"Please fill in responsible For Work";
        [self.mag5sDataArray addObject:responsibleForWorkModel];
        
        mag5sAddViewModel *scoreModel = [[mag5sAddViewModel alloc] init];
        scoreModel.currentType = mag5sAddCellDefault;
        scoreModel.title = @"score";
        scoreModel.content = self.mag5sdatamodel.score;
        scoreModel.isDetail = YES;
        scoreModel.placeholder = @"Please fill in score";
        [self.mag5sDataArray addObject:scoreModel];
        
        mag5sAddViewModel *mag5sSeirModel = [[mag5sAddViewModel alloc] init];
        mag5sSeirModel.currentType = mag5sAddCellSingle;
        mag5sSeirModel.title = @"seir";
        mag5sSeirModel.content = self.mag5sdatamodel.mag5sSeir.note;
        mag5sSeirModel.isSelect = self.mag5sdatamodel.mag5sSeir.isSelect;
        mag5sSeirModel.isDetail = YES;
        mag5sSeirModel.placeholder = @"Please fill in remarks";
        [self.mag5sDataArray addObject:mag5sSeirModel];
        
        mag5sAddViewModel *mag5sSeitonModel = [[mag5sAddViewModel alloc] init];
        mag5sSeitonModel.currentType = mag5sAddCellSingle;
        mag5sSeitonModel.title = @"seiton";
        mag5sSeitonModel.content = self.mag5sdatamodel.mag5sSeiton.note;
        mag5sSeitonModel.isSelect = self.mag5sdatamodel.mag5sSeiton.isSelect;
        mag5sSeitonModel.isDetail = YES;
        mag5sSeitonModel.placeholder = @"Please fill in remarks";
        [self.mag5sDataArray addObject:mag5sSeitonModel];
        
        mag5sAddViewModel *mag5sSeisoModel = [[mag5sAddViewModel alloc] init];
        mag5sSeisoModel.currentType = mag5sAddCellSingle;
        mag5sSeisoModel.title = @"seiso";
        mag5sSeisoModel.content = self.mag5sdatamodel.mag5sSeiso.note;
        mag5sSeisoModel.isSelect = self.mag5sdatamodel.mag5sSeiso.isSelect;
        mag5sSeisoModel.isDetail = YES;
        mag5sSeisoModel.placeholder = @"Please fill in remarks";
        [self.mag5sDataArray addObject:mag5sSeisoModel];
        
        mag5sAddViewModel *mag5sSeiketsuModel = [[mag5sAddViewModel alloc] init];
        mag5sSeiketsuModel.currentType = mag5sAddCellSingle;
        mag5sSeiketsuModel.title = @"seiketsu";
        mag5sSeiketsuModel.content = self.mag5sdatamodel.mag5sSeiketsu.note;
        mag5sSeiketsuModel.isSelect = self.mag5sdatamodel.mag5sSeiketsu.isSelect;
        mag5sSeiketsuModel.isDetail = YES;
        mag5sSeiketsuModel.placeholder = @"Please fill in remarks";
        [self.mag5sDataArray addObject:mag5sSeiketsuModel];
        
        mag5sAddViewModel *mag5sShitsukeModel = [[mag5sAddViewModel alloc] init];
        mag5sShitsukeModel.currentType = mag5sAddCellSingle;
        mag5sShitsukeModel.title = @"shitsuke";
        mag5sShitsukeModel.content = self.mag5sdatamodel.mag5sShitsuke.note;
        mag5sShitsukeModel.isSelect = self.mag5sdatamodel.mag5sShitsuke.isSelect;
        mag5sShitsukeModel.isDetail = YES;
        mag5sShitsukeModel.placeholder = @"Please fill in remarks";
        [self.mag5sDataArray addObject:mag5sShitsukeModel];
    }
    [self.mag5sMainTable reloadData];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.mag5sDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    mag5sAddViewModel *vModel = self.mag5sDataArray[indexPath.row];
    if (vModel.currentType == mag5sAddCellDefault) {
        NSString *KMyCellID = @"mag5sEditorTableViewCell";
        NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
        mag5sEditorTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (!cell) {
            cell = [[mag5sEditorTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        }
        cell.model = vModel;
        __weak typeof(self) weakSelf = self;
        cell.editblock = ^(mag5sEditorTableViewCell * _Nonnull cell) {
            [weakSelf.mag5sMainTable beginUpdates];
            [weakSelf.mag5sMainTable endUpdates];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        NSString *KMyCellID = @"mag5sAddSingleTableViewCell";
        NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
        mag5sAddSingleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (!cell) {
            cell = [[mag5sAddSingleTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        }
        cell.model = vModel;
        __weak typeof(self) weakSelf = self;
        cell.mag5sAddSingleblock = ^(mag5sAddSingleTableViewCell * _Nonnull cell) {
            [weakSelf.mag5sMainTable beginUpdates];
            [weakSelf.mag5sMainTable endUpdates];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)mag5scloseKeyboard:(UITapGestureRecognizer *)recognizer{
    [self.view endEditing:YES];
}
#pragma mark - 保存
- (void)mag5ssave{
    mag5sAddViewModel *sectionName = self.mag5sDataArray[0];
    if (!sectionName.content.length) {
        [MBProgressHUD mag5sshowReminderText:@"Please fill in section name"];
        return;
    }
    self.mag5sdatamodel.sectionName = sectionName.content;
    
    mag5sAddViewModel *responsible = self.mag5sDataArray[1];
    if (!responsible.content.length) {
        [MBProgressHUD mag5sshowReminderText:@"Please fill in responsible"];
        return;
    }
    self.mag5sdatamodel.responsibleForWork = responsible.content;
    
    mag5sAddViewModel *score = self.mag5sDataArray[2];
    if (!score.content.length) {
        [MBProgressHUD mag5sshowReminderText:@"Please fill in score"];
        return;
    }
    self.mag5sdatamodel.score = score.content;
    
    mag5sAddViewModel *seir = self.mag5sDataArray[3];
    self.mag5sdatamodel.mag5sSeir.isSelect = seir.isSelect;
    self.mag5sdatamodel.mag5sSeir.note = seir.content;
    
    mag5sAddViewModel *seiton = self.mag5sDataArray[4];
    self.mag5sdatamodel.mag5sSeiton.isSelect = seiton.isSelect;
    self.mag5sdatamodel.mag5sSeiton.note = seiton.content;
    
    mag5sAddViewModel *seiso = self.mag5sDataArray[5];
    self.mag5sdatamodel.mag5sSeiso.isSelect = seiso.isSelect;
    self.mag5sdatamodel.mag5sSeiso.note = seiso.content;
    
    mag5sAddViewModel *seiketsu = self.mag5sDataArray[6];
    self.mag5sdatamodel.mag5sSeiketsu.isSelect = seiketsu.isSelect;
    self.mag5sdatamodel.mag5sSeiketsu.note = seiketsu.content;
    
    mag5sAddViewModel *shitsuke = self.mag5sDataArray[7];
    self.mag5sdatamodel.mag5sShitsuke.isSelect = shitsuke.isSelect;
    self.mag5sdatamodel.mag5sShitsuke.note = shitsuke.content;
    
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *dateString = [mag5sUIUtilities mag5sformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd HH:mm"];
    self.mag5sdatamodel.date = dateString;
    NSString *documentPath = [mag5sHBTool getDocumentPath:@"mag5sData.plist"];
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"mag5sData" ofType:@"plist"];
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
    NSDictionary *dic = (NSDictionary *)[self.mag5sdatamodel yy_modelToJSONObject];
    NSString *dateStringForId = [mag5sUIUtilities mag5sformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
    NSString *id = [NSString stringWithFormat:@"%@_%@",self.mag5sdatamodel.sectionName,dateStringForId];
    NSDictionary *dict = @{@"id":id,@"data":dic};
    for (NSMutableDictionary *dictd in documentData) {
        if ([dictd[@"id"] isEqualToString:id]) {
            [documentData removeObject:dictd];
            break;
        }
    }
    [documentData addObject:dict];
    [documentData writeToFile:documentPath atomically:YES];
    [MBProgressHUD mag5sshowReminderText:@"Save success!"];
    if (self.currentType == mag5sAddViewControllerTypeAdd) {
        self.navigationController.tabBarController.selectedIndex = 0;
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
}
#pragma mark - 编辑
- (void)mag5seditor{
    
}
#pragma mark - 属性懒加载
- (mag5sDataModel *)mag5sdatamodel{
    if (!_mag5sdatamodel) {
        _mag5sdatamodel = [[mag5sDataModel alloc] init];
        _mag5sdatamodel.mag5sSeir = [[mag5sSeirModel alloc] init];
        _mag5sdatamodel.mag5sSeiton = [[mag5sSeitonModel alloc] init];
        _mag5sdatamodel.mag5sSeiso = [[mag5sSeisoModel alloc] init];
        _mag5sdatamodel.mag5sSeiketsu = [[mag5sSeiketsuModel alloc] init];
        _mag5sdatamodel.mag5sShitsuke = [[mag5sShitsukeModel alloc] init];
    }
    return _mag5sdatamodel;
}
- (UITableView *)mag5sMainTable{
    if (!_mag5sMainTable) {
        _mag5sMainTable = [[UITableView alloc] init];
        _mag5sMainTable.rowHeight = UITableViewAutomaticDimension;
        _mag5sMainTable.estimatedRowHeight = 0.1f;
        _mag5sMainTable.dataSource = self;
        _mag5sMainTable.delegate = self;
        _mag5sMainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_mag5sMainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(mag5scloseKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_mag5sMainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(mag5scloseKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
        [self.view addSubview:_mag5sMainTable];
        [_mag5sMainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-5);
        }];
    }
    return _mag5sMainTable;
}
- (UIButton *)mag5sEaveButton{
    if (!_mag5sEaveButton) {
        _mag5sEaveButton = [[UIButton alloc] init];
        [_mag5sEaveButton setTitle:@"save" forState:UIControlStateNormal];
        [_mag5sEaveButton setTitleColor:[UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0] forState:UIControlStateNormal];
        [_mag5sEaveButton.titleLabel setFont:[UIFont fontWithName:@"PingFangSC-Regular" size:17]];
        [_mag5sEaveButton addTarget:self action:@selector(mag5ssave) forControlEvents:UIControlEventTouchUpInside];
        [_mag5sEaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(22);
        }];
    }
    return _mag5sEaveButton;
}
- (UIButton *)mag5sEditButton{
    if (!_mag5sEditButton) {
        _mag5sEditButton = [[UIButton alloc] init];
        [_mag5sEditButton setTitle:@"Editor" forState:UIControlStateNormal];
        [_mag5sEditButton setTitleColor:[UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0] forState:UIControlStateNormal];
        [_mag5sEditButton.titleLabel setFont:[UIFont fontWithName:@"PingFangSC-Regular" size:17]];
        [_mag5sEditButton addTarget:self action:@selector(mag5seditor) forControlEvents:UIControlEventTouchUpInside];
        [_mag5sEditButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(22);
        }];
    }
    return _mag5sEditButton;
}
- (NSMutableArray *)mag5sDataArray{
    if (!_mag5sDataArray) {
        _mag5sDataArray = [[NSMutableArray alloc] init];
    }
    return _mag5sDataArray;
}
@end
