//
//  PKCategoryManagementViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKCategoryManagementViewController.h"
#import "PKLimitesMensuellesModel.h"
#import "PKCategoryManagerCollectionReusableView.h"
#import "PKCategoryManagerCollectionViewCell.h"

@interface PKCategoryManagementViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, assign)Boolean isEdit;
@property(nonatomic, assign)Boolean isEdited;
@property(nonatomic, strong)UIButton *editButton;
@property(nonatomic, strong)NSMutableArray *selectArray;
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)UICollectionView *collectionView;
@property(nonatomic, copy)NSString *objectId;
@end

@implementation PKCategoryManagementViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"类别管理", nil);
    [self setContentView];
}
- (void)PK_setupNavigationItems{
    [super PK_setupNavigationItems];
    [self setNavigationBarItems];
}
- (void)setNavigationBarItems{
    UIBarButtonItem *editButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.editButton];
    self.navigationItem.rightBarButtonItem = editButtonItem;
}
-(void)setContentView{
    PKLimitesMensuellesModel *model = [[PKLimitesMensuellesModel alloc] init];
    model.title = NSLocalizedString(@"服饰", nil);
    model.code = 000;
    [self.dataArray addObject:model];
    
    PKLimitesMensuellesModel *model1 = [[PKLimitesMensuellesModel alloc] init];
    model1.title = NSLocalizedString(@"食品", nil);
    model1.code = 001;
    [self.dataArray addObject:model1];
    
    PKLimitesMensuellesModel *model2 = [[PKLimitesMensuellesModel alloc] init];
    model2.title = NSLocalizedString(@"房屋", nil);
    model2.code = 002;
    [self.dataArray addObject:model2];
    
    PKLimitesMensuellesModel *model3 = [[PKLimitesMensuellesModel alloc] init];
    model3.title = NSLocalizedString(@"交通", nil);
    model3.code = 003;
    [self.dataArray addObject:model3];
    
    PKLimitesMensuellesModel *model4 = [[PKLimitesMensuellesModel alloc] init];
    model4.title = NSLocalizedString(@"健康", nil);
    model4.code = 004;
    [self.dataArray addObject:model4];
    
    PKLimitesMensuellesModel *model5 = [[PKLimitesMensuellesModel alloc] init];
    model5.title = NSLocalizedString(@"空闲", nil);
    model5.code = 005;
    [self.dataArray addObject:model5];
    
    PKLimitesMensuellesModel *model6 = [[PKLimitesMensuellesModel alloc] init];
    model6.title = NSLocalizedString(@"网费", nil);
    model6.code = 006;
    [self.dataArray addObject:model6];
    
    PKLimitesMensuellesModel *model7 = [[PKLimitesMensuellesModel alloc] init];
    model7.title = NSLocalizedString(@"手机", nil);
    model7.code = 007;
    [self.dataArray addObject:model7];
    
    PKLimitesMensuellesModel *model8 = [[PKLimitesMensuellesModel alloc] init];
    model8.title = NSLocalizedString(@"水费", nil);
    model8.code = 071;
    [self.dataArray addObject:model8];
    
    PKLimitesMensuellesModel *model9 = [[PKLimitesMensuellesModel alloc] init];
    model9.title = NSLocalizedString(@"电费", nil);
    model9.code = 072;
    [self.dataArray addObject:model9];
    
    PKLimitesMensuellesModel *model10 = [[PKLimitesMensuellesModel alloc] init];
    model10.title = NSLocalizedString(@"取暖费", nil);
    model10.code = 010;
    [self.dataArray addObject:model10];
    
    PKLimitesMensuellesModel *model11 = [[PKLimitesMensuellesModel alloc] init];
    model11.title = NSLocalizedString(@"物业", nil);
    model11.code = 011;
    [self.dataArray addObject:model11];
    
    PKLimitesMensuellesModel *model12 = [[PKLimitesMensuellesModel alloc] init];
    model12.title = NSLocalizedString(@"车位", nil);
    model12.code = 012;
    [self.dataArray addObject:model12];
    
    PKLimitesMensuellesModel *model13 = [[PKLimitesMensuellesModel alloc] init];
    model13.title = NSLocalizedString(@"装修", nil);
    model13.code = 013;
    [self.dataArray addObject:model13];
    
    PKLimitesMensuellesModel *model14 = [[PKLimitesMensuellesModel alloc] init];
    model14.title = NSLocalizedString(@"家电", nil);
    model14.code = 014;
    [self.dataArray addObject:model14];
    
    PKLimitesMensuellesModel *model15 = [[PKLimitesMensuellesModel alloc] init];
    model15.title = NSLocalizedString(@"服务", nil);
    model15.code = 015;
    [self.dataArray addObject:model15];
    
    PKLimitesMensuellesModel *model16 = [[PKLimitesMensuellesModel alloc] init];
    model16.title = NSLocalizedString(@"家居", nil);
    model16.code = 016;
    [self.dataArray addObject:model16];
    
    PKLimitesMensuellesModel *model17 = [[PKLimitesMensuellesModel alloc] init];
    model17.title = NSLocalizedString(@"其它", nil);
    model17.code = 017;
    [self.dataArray addObject:model17];
    [self loadData];
}
- (void)loadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PKCategory"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [MBProgressHUD PKshowReminderText:[NSString stringWithFormat:@"%@",error]];
        }else{
            [weakSelf.selectArray removeAllObjects];
            BmobObject *obj = [array lastObject];
            weakSelf.objectId = [obj objectId];
            NSArray *dataArray  = [obj objectForKey:@"data"];
            for (int i = 0;i < dataArray.count; i++) {
                NSDictionary *dic = dataArray[i];
                PKLimitesMensuellesModel *model = [[PKLimitesMensuellesModel alloc] init];
                model.code = [[dic objectForKey:@"code"] integerValue];
                switch (model.code) {
                    case 000:
                        model.title = NSLocalizedString(@"服饰", nil);
                        break;
                    case 001:
                        model.title = NSLocalizedString(@"食品", nil);
                        break;
                    case 002:
                        model.title = NSLocalizedString(@"房屋", nil);
                        break;
                    case 003:
                        model.title = NSLocalizedString(@"交通", nil);
                        break;
                    case 004:
                        model.title = NSLocalizedString(@"健康", nil);
                        break;
                    case 005:
                        model.title = NSLocalizedString(@"空闲", nil);
                        break;
                    case 006:
                        model.title = NSLocalizedString(@"网费", nil);
                        break;
                    case 007:
                        model.title = NSLocalizedString(@"手机", nil);
                        break;
                    case 071:
                        model.title = NSLocalizedString(@"水费", nil);
                        break;
                    case 072:
                        model.title = NSLocalizedString(@"电费", nil);
                        break;
                    case 010:
                        model.title = NSLocalizedString(@"取暖费", nil);
                        break;
                    case 011:
                        model.title = NSLocalizedString(@"物业", nil);
                        break;
                    case 012:
                        model.title = NSLocalizedString(@"车位", nil);
                        break;
                    case 013:
                        model.title = NSLocalizedString(@"装修", nil);
                        break;
                    case 014:
                        model.title = NSLocalizedString(@"家电", nil);
                        break;
                    case 015:
                        model.title = NSLocalizedString(@"服务", nil);
                        break;
                    case 016:
                        model.title = NSLocalizedString(@"家居", nil);
                        break;
                    case 017:
                        model.title = NSLocalizedString(@"其它", nil);
                        break;
                    default:
                        break;
                }
                model.isSelect = [[dic objectForKey:@"isSelect"] boolValue];
                model.unit = [dic objectForKey:@"unit"];
                model.content = [dic objectForKey:@"content"];
                [weakSelf.selectArray addObject:model];
            }
            for (int j = 0; j < self.dataArray.count; j++) {
                PKLimitesMensuellesModel *model = self.dataArray[j];
                for (PKLimitesMensuellesModel *selectmodel in self.selectArray) {
                    if (model.code == selectmodel.code) {
                        [self.dataArray removeObject:model];
                        j--;
                    }
                }
            }
            [weakSelf.collectionView reloadData];
        }
    }];
}
- (void)PKbackButtonAction{
    if (self.isEdited) {
    if (self.selectArray.count) {
        if (self.objectId.length) {
        BmobObject *Diary = [BmobObject objectWithoutDataWithClassName:@"PKCategory" objectId:self.objectId];
        NSMutableArray *tempArray = [[NSMutableArray alloc] init];
        for (int i = 0; i < self.selectArray.count; i++) {
            PKLimitesMensuellesModel *selectModel = self.selectArray[i];
            NSDictionary *jsonDictionary = (NSDictionary *)[selectModel yy_modelToJSONObject];
            [tempArray addObject:jsonDictionary];
        }
        NSDictionary *dic = @{@"data":tempArray};
        [Diary saveAllWithDictionary:dic];
        [Diary updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                [self.navigationController popViewControllerAnimated:YES];
            }else{
                [MBProgressHUD PKshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
            }
        }];
        }else{
            [self setNewCategory];
        }
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
}
- (void)setNewCategory{
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.selectArray.count; i++) {
        PKLimitesMensuellesModel *selectModel = self.selectArray[i];
        NSDictionary *jsonDictionary = (NSDictionary *)[selectModel yy_modelToJSONObject];
        [tempArray addObject:jsonDictionary];
    }
    NSDictionary *dic = @{@"data":tempArray};
    BmobObject *diary = [BmobObject objectWithClassName:@"PKCategory"];
    [diary saveAllWithDictionary:dic];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [self.navigationController popViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD PKshowReminderText:[NSString stringWithFormat:@"%@",error]];
        } else {
//            [MBProgressHUD PKshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
        }
    }];
}
#pragma mark - UICollectionViewDelegateFlowLayout
// 返回Header的尺寸大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    return CGSizeMake(PKWIDTH, 50);
}
// 返回cell的尺寸大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(100, 60);// 让每个cell尺寸都不一样
}
// 返回cell之间行间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 10;
}
// 返回cell之间列间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 10;
}
// 设置上左下右边界缩进
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(20, 20, 20, 20);
}
#pragma mark - UICollectionViewDataSource
// 返回Section个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}
// 返回cell个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if (section == 0) {
        return self.selectArray.count;
    }else{
        return self.dataArray.count;
    }
}
// 返回cell内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    // 创建cell (重用)
    PKCategoryManagerCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PKCategoryManagerCollectionViewCell" forIndexPath:indexPath];
    cell.isEdit = self.isEdit;
    // 设置cell
    if (indexPath.section == 0) {
        PKLimitesMensuellesModel *model = self.selectArray[indexPath.row];
        cell.model = model;
    }else {
        PKLimitesMensuellesModel *model = self.dataArray[indexPath.row];
        cell.model = model;
    }
    __weak typeof(self) weakSelf = self;
    cell.finishSelectCategoryBlock = ^(PKLimitesMensuellesModel * _Nonnull categoryModel) {
        weakSelf.isEdited = YES;
        Boolean isContain = NO;
        PKLimitesMensuellesModel *selectModel;
        for (PKLimitesMensuellesModel *selectmodel in self.selectArray) {
            if (categoryModel.code == selectmodel.code) {
                isContain = YES;
                selectModel = selectmodel;
                break;
            }
        }
        if (categoryModel.isSelect) {
            if (isContain == NO) {
                [self.selectArray addObject:categoryModel];
                [self.dataArray removeObject:categoryModel];
            }
        }else{
            if (isContain == YES) {
                [self.selectArray removeObject:selectModel];
                [self.dataArray addObject:selectModel];
                selectModel.isSelect = NO;
            }
        }
        [weakSelf.collectionView reloadData];
    };
    return cell;
}
// 返回Header/Footer内容
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {          // Header视图
        // 从复用队列中获取HooterView
        PKCategoryManagerCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"PKCategoryManagerCollectionReusableView" forIndexPath:indexPath];
        if (indexPath.section == 0) {
            headerView.contentLabel.text = NSLocalizedString(@"我的项目", nil);
        }else{
            headerView.contentLabel.text = NSLocalizedString(@"所有类别", nil);
        }
        // 返回HooterView
        return headerView;
    }else if ([kind isEqualToString:UICollectionElementKindSectionFooter]) {    // Footer视图
//        // 从复用队列中获取FooterView
//        UICollectionReusableView *footerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"MyFooter" forIndexPath:indexPath];
//        // 设置FooterView
//        footerView.backgroundColor = [UIColor blueColor];
//        UILabel *label = [[UILabel alloc] initWithFrame:footerView.bounds];
//        label.textAlignment = NSTextAlignmentCenter;
//        label.text = @"我是Footer";
//        label.textColor = [UIColor whiteColor];
//        [footerView addSubview:label];
//        // 返回FooterView
        return nil;
    }
    return nil;
}
- (void)btnClick:(UIButton *)sender{
    sender.selected = !sender.selected;
    if (sender.selected) {
        [self.editButton setTitle:NSLocalizedString(@"完成", nil) forState:UIControlStateNormal];
        self.isEdit = YES;
        [self.collectionView reloadData];
    }else{
        if (self.selectArray.count < 4) {
            [MBProgressHUD PKshowReminderText:NSLocalizedString(@"请至少选择4项", nil)];
            sender.selected = YES;
            return;
        }
        [self.editButton setTitle:NSLocalizedString(@"编辑", nil) forState:UIControlStateNormal];
        self.isEdit = NO;
        [self.collectionView reloadData];
    }
}

#pragma mark - 属性懒加载
- (UIButton *)editButton{
    if (!_editButton) {
        _editButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_editButton setTitle:NSLocalizedString(@"编辑", nil) forState:UIControlStateNormal];
        [_editButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_editButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_editButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _editButton;
}
- (NSMutableArray *)selectArray{
    if (!_selectArray) {
        _selectArray = [[NSMutableArray alloc] init];
    }
    return _selectArray;
}
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
- (UICollectionView *)collectionView{
    if (!_collectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        CGRect frame = CGRectMake(0, PKHeightNavBar, PKWIDTH, PKHEIGHT);
        _collectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:flowLayout];
        // 设置代理
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        // 其他属性
        _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.showsVerticalScrollIndicator = NO;          // 隐藏垂直方向滚动条
//        // 注册cell
        [_collectionView registerClass:[PKCategoryManagerCollectionViewCell class] forCellWithReuseIdentifier:@"PKCategoryManagerCollectionViewCell"];
//        // 注册Header
        [_collectionView registerClass:[PKCategoryManagerCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"PKCategoryManagerCollectionReusableView"];
        [self.view addSubview:_collectionView];
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(10);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
//        // 注册Footer
//        [_collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"MyFooter"];
    }
    return _collectionView;
}
@end
