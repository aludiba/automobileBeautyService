//
//  stbaAddContactViewController.m
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/4.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaAddContactViewController.h"
#import "stbaAddContactTableViewCell.h"
#import "stbaAddContactGenderTableViewCell.h"
#import "stbaAddContactSaveTableViewCell.h"
#import "stbaAddressBookModel.h"
#import "stbaAddContactViewModel.h"
@interface stbaAddContactViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)stbaAddressBookModel *model;
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
    genderModel.currentType = stbaAddContactCellGender;
    genderModel.title = @"Gender";
    genderModel.placeholder = @"Please select gender";
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
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    [self.view endEditing:YES];
}
- (void)closeKeyboard:(UITapGestureRecognizer *)recognizer {
    [self.view endEditing:YES];
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
        NSString *KMyCellID = @"stbaAddContactTableViewCell";
        NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
        stbaAddContactTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (!cell) {
            cell = [[stbaAddContactTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        }
        cell.model = model;
        __weak typeof(self) weakSelf = self;
        cell.editblock = ^(stbaAddContactTableViewCell * _Nonnull cell) {
            if ([model.title isEqualToString:@"Email"]) {
            if (cell.contentHeight > model.editorContentHeight) {
                [UIView animateWithDuration:0.2 animations:^{
                    CGRect frame = self.view.frame;
                    frame.origin.y = frame.origin.y - 48;
                    self.view.frame = frame;
                }];
            }
            }
            model.editorContentHeight = cell.contentHeight;
            model.content = cell.contentString;
            [weakSelf.mainTable beginUpdates];
            [weakSelf.mainTable endUpdates];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (model.currentType == stbaAddContactCellGender) {
        stbaAddContactGenderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stbaAddContactGenderTableViewCell" forIndexPath:indexPath];
        cell.model = model;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (model.currentType == stbaAddContactCellSave) {
        stbaAddContactSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stbaAddContactSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
        cell.contentView.backgroundColor = stbaH_Color(242, 242, 242, 1);
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    stbaAddContactViewModel *model = self.viewDataArray[indexPath.row];
    if (model.currentType == stbaAddContactCellDefault) {
        
    }else if (model.currentType == stbaAddContactCellGender) {
        [self presentActionSheetWithIndexPath:indexPath];
    }else if (model.currentType == stbaAddContactCellSave) {
        stbaAddContactViewModel *nameModel = self.viewDataArray[0];
        if (!nameModel.content.length) {
            [MBProgressHUD stbashowReminderText:@"Please fill in name"];
        }
        self.model.name = nameModel.content;
        stbaAddContactViewModel *genderModel = self.viewDataArray[2];
        if (!genderModel.content.length) {
            [MBProgressHUD stbashowReminderText:@"Please fill in gender"];
        }
        self.model.gender = genderModel.content;
        stbaAddContactViewModel *mobilePhoneModel = self.viewDataArray[4];
        if (!mobilePhoneModel.content.length) {
            [MBProgressHUD stbashowReminderText:@"Please fill in mobile phone"];
        }
        self.model.phoneNumber = mobilePhoneModel.content;
        stbaAddContactViewModel *emailModel = self.viewDataArray[6];
        if (!emailModel.content.length) {
            [MBProgressHUD stbashowReminderText:@"Please fill in email"];
        }
        self.model.email = emailModel.content;
        NSString *documentPath = [stbaHBTool getDocumentPath:@"stbaData.plist"];
        NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"stbaData" ofType:@"plist"];
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
        NSDictionary *dic = (NSDictionary *)[self.model yy_modelToJSONObject];
        NSDictionary *dict = @{@"id":self.model.name,@"data":dic};
        for (NSMutableDictionary *dictd in documentData) {
            if ([dictd[@"id"] isEqualToString:self.model.name]) {
                [documentData removeObject:dictd];
                break;
            }
        }
        [documentData addObject:dict];
        [documentData writeToFile:documentPath atomically:YES];
        [MBProgressHUD stbashowReminderText:@"Save success!"];
        [self.navigationController popViewControllerAnimated:YES];
    }else{
       
    }
}
- (void)presentActionSheetWithIndexPath:(NSIndexPath *)indexPath {
    NSArray *itemTypesArray = @[@"Male",@"Female"];
    if (itemTypesArray.count > 0) {
        [self presentActionSheetWithItems:itemTypesArray atIndexPath:indexPath];
        return;
    }
}
- (void)presentActionSheetWithItems:(NSArray *)items atIndexPath:(NSIndexPath *)indexPath{
    if (items.count == 0) {
        return;
    }
    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    for (NSString *objString in items) {
        __weak typeof(self) weakSelf = self;
        UIAlertAction *itemTypeMenuAction = [UIAlertAction actionWithTitle:objString style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            stbaAddContactViewModel *model = weakSelf.viewDataArray[indexPath.row];
            model.content = objString;
            [weakSelf.mainTable reloadData];
        }];
        [actionSheet addAction:itemTypeMenuAction];
    }
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    [actionSheet addAction:cancelAction];
    [self presentViewController:actionSheet animated:YES completion:nil];
}
#pragma mark - 属性懒加载
- (stbaAddressBookModel *)model{
    if (!_model) {
        _model = [[stbaAddressBookModel alloc] init];
    }
    return _model;
}
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
        [_mainTable registerClass:[stbaAddContactGenderTableViewCell class] forCellReuseIdentifier:@"stbaAddContactGenderTableViewCell"];
        [_mainTable registerClass:[stbaAddContactSaveTableViewCell class] forCellReuseIdentifier:@"stbaAddContactSaveTableViewCell"];
        [_mainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_mainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
    }
    return _mainTable;
}
@end
