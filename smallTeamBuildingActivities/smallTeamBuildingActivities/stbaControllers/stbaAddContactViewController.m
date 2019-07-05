//
//  stbaAddContactViewController.m
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/4.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaAddContactViewController.h"
#import "stbaAddContactTableViewCell.h"
#import "stbaAddContactSaveTableViewCell.h"
#import "stbaAddContactViewModel.h"
@interface stbaAddContactViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@end

@implementation stbaAddContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Add The Contact";
    [self setContentView];
}
- (void)setContentView{
    stbaAddContactViewModel *nameModel = [[stbaAddContactViewModel alloc] init];
    nameModel.currentType = stbaAddContactCellDefault;
    nameModel.title = @"Name";
    nameModel.placeholder = @"Please fill in name";
    [self.viewDataArray addObject:nameModel];
    
    stbaAddContactViewModel *lineModel0 = [[stbaAddContactViewModel alloc] init];
    lineModel0.currentType = stbaAddContactCellLine;
    [self.viewDataArray addObject:lineModel0];
    
    stbaAddContactViewModel *genderModel = [[stbaAddContactViewModel alloc] init];
    genderModel.currentType = stbaAddContactCellDefault;
    genderModel.title = @"Gender";
    genderModel.placeholder = @"Please fill in gender";
    [self.viewDataArray addObject:genderModel];
    
    stbaAddContactViewModel *lineModel1 = [[stbaAddContactViewModel alloc] init];
    lineModel1.currentType = stbaAddContactCellLine;
    [self.viewDataArray addObject:lineModel1];
    
    stbaAddContactViewModel *mobilePhoneModel = [[stbaAddContactViewModel alloc] init];
    mobilePhoneModel.currentType = stbaAddContactCellDefault;
    mobilePhoneModel.title = @"Mobile Phone";
    mobilePhoneModel.placeholder = @"Please fill in mobile phone";
    [self.viewDataArray addObject:mobilePhoneModel];
    
    stbaAddContactViewModel *lineModel2 = [[stbaAddContactViewModel alloc] init];
    lineModel2.currentType = stbaAddContactCellLine;
    [self.viewDataArray addObject:lineModel2];
    
    stbaAddContactViewModel *emailModel = [[stbaAddContactViewModel alloc] init];
    emailModel.currentType = stbaAddContactCellDefault;
    emailModel.title = @"Email";
    emailModel.placeholder = @"Please fill in email";
    [self.viewDataArray addObject:emailModel];

    stbaAddContactViewModel *lineModel3 = [[stbaAddContactViewModel alloc] init];
    lineModel3.currentType = stbaAddContactCellLine;
    [self.viewDataArray addObject:lineModel3];
    
    stbaAddContactViewModel *completeModel = [[stbaAddContactViewModel alloc] init];
    completeModel.currentType = stbaAddContactCellSave;
    [self.viewDataArray addObject:completeModel];
    [self.mainTable reloadData];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.viewDataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    stbaAddContactViewModel *model = self.viewDataArray[indexPath.row];
    if(model.currentType == stbaAddContactCellLine){
        return 10;
    }else{
        return UITableViewAutomaticDimension;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    stbaAddContactViewModel *model = self.viewDataArray[indexPath.row];
    if (model.currentType == stbaAddContactCellDefault) {
        stbaAddContactTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stbaAddContactTableViewCell" forIndexPath:indexPath];
        cell.model = model;
        return cell;
    }else if (model.currentType == stbaAddContactCellSave) {
        stbaAddContactSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stbaAddContactSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
        cell.contentView.backgroundColor = stbaH_Color(242, 242, 242, 1);
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    stbaAddContactViewModel *model = self.viewDataArray[indexPath.row];
    if (model.currentType == stbaAddContactCellDefault) {
        
    }else if (model.currentType == stbaAddContactCellSave) {
        NSLog(@"Complete~");
    }else{
       
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
        _mainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _mainTable.backgroundColor = [UIColor groupTableViewBackgroundColor];
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideBottom);
        }];
        [_mainTable registerClass:[stbaAddContactTableViewCell class] forCellReuseIdentifier:@"stbaAddContactTableViewCell"];
        [_mainTable registerClass:[stbaAddContactSaveTableViewCell class] forCellReuseIdentifier:@"stbaAddContactSaveTableViewCell"];
        [_mainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    }
    return _mainTable;
}
@end
