//
//  PKCategoryManagementViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKCategoryManagementViewController.h"
#import "PKCategoryManagementModel.h"
#import "PKCategoryManagerCollectionReusableView.h"
#import "PKCategoryManagerCollectionViewCell.h"

@interface PKCategoryManagementViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, assign)Boolean isEdit;
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
    PKCategoryManagementModel *model = [[PKCategoryManagementModel alloc] init];
    model.content = NSLocalizedString(@"服饰", nil);
    [self.dataArray addObject:model];
    
    PKCategoryManagementModel *model1 = [[PKCategoryManagementModel alloc] init];
    model1.content = NSLocalizedString(@"食品", nil);
    [self.dataArray addObject:model1];
    
    PKCategoryManagementModel *model2 = [[PKCategoryManagementModel alloc] init];
    model2.content = NSLocalizedString(@"房屋", nil);
    [self.dataArray addObject:model2];
    
    PKCategoryManagementModel *model3 = [[PKCategoryManagementModel alloc] init];
    model3.content = NSLocalizedString(@"交通", nil);
    [self.dataArray addObject:model3];
    
    PKCategoryManagementModel *model4 = [[PKCategoryManagementModel alloc] init];
    model4.content = NSLocalizedString(@"健康", nil);
    [self.dataArray addObject:model4];
    
    PKCategoryManagementModel *model5 = [[PKCategoryManagementModel alloc] init];
    model5.content = NSLocalizedString(@"空闲", nil);
    [self.dataArray addObject:model5];
    
    PKCategoryManagementModel *model6 = [[PKCategoryManagementModel alloc] init];
    model6.content = NSLocalizedString(@"网费", nil);
    [self.dataArray addObject:model6];
    
    PKCategoryManagementModel *model7 = [[PKCategoryManagementModel alloc] init];
    model7.content = NSLocalizedString(@"手机", nil);
    [self.dataArray addObject:model7];
    
    PKCategoryManagementModel *model8 = [[PKCategoryManagementModel alloc] init];
    model8.content = NSLocalizedString(@"水费", nil);
    [self.dataArray addObject:model8];
    
    PKCategoryManagementModel *model9 = [[PKCategoryManagementModel alloc] init];
    model9.content = NSLocalizedString(@"电费", nil);
    [self.dataArray addObject:model9];
    
    PKCategoryManagementModel *model10 = [[PKCategoryManagementModel alloc] init];
    model10.content = NSLocalizedString(@"取暖费", nil);
    [self.dataArray addObject:model10];
    
    PKCategoryManagementModel *model11 = [[PKCategoryManagementModel alloc] init];
    model11.content = NSLocalizedString(@"物业", nil);
    [self.dataArray addObject:model11];
    
    PKCategoryManagementModel *model12 = [[PKCategoryManagementModel alloc] init];
    model12.content = NSLocalizedString(@"车位", nil);
    [self.dataArray addObject:model12];
    
    PKCategoryManagementModel *model13 = [[PKCategoryManagementModel alloc] init];
    model13.content = NSLocalizedString(@"装修", nil);
    [self.dataArray addObject:model13];
    
    PKCategoryManagementModel *model14 = [[PKCategoryManagementModel alloc] init];
    model14.content = NSLocalizedString(@"家电", nil);
    [self.dataArray addObject:model14];
    
    PKCategoryManagementModel *model15 = [[PKCategoryManagementModel alloc] init];
    model15.content = NSLocalizedString(@"服务", nil);
    [self.dataArray addObject:model15];
    
    PKCategoryManagementModel *model16 = [[PKCategoryManagementModel alloc] init];
    model16.content = NSLocalizedString(@"家居", nil);
    [self.dataArray addObject:model16];
    
    PKCategoryManagementModel *model17 = [[PKCategoryManagementModel alloc] init];
    model17.content = NSLocalizedString(@"其它", nil);
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
                PKCategoryManagementModel *model = [[PKCategoryManagementModel alloc] init];
                model.content = [dic objectForKey:@"content"];
                model.isSelect = [[dic objectForKey:@"isSelect"] boolValue];
                [weakSelf.selectArray addObject:model];
            }
            for (int j = 0; j < self.dataArray.count; j++) {
                PKCategoryManagementModel *model = self.dataArray[j];
                for (PKCategoryManagementModel *selectmodel in self.selectArray) {
                    if ([model.content isEqualToString:selectmodel.content]) {
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
    if (self.selectArray.count) {
        BmobObject *Diary = [BmobObject objectWithoutDataWithClassName:@"PKCategory" objectId:self.objectId];
        [Diary deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                NSMutableArray *tempArray = [[NSMutableArray alloc] init];
                for (int i = 0; i < self.selectArray.count; i++) {
                    PKCategoryManagementModel *selectModel = self.selectArray[i];
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
                        NSLog(@"Unknow error");
                    }
                }];
            }else{
                NSLog(@"删除数据错误error:%@",error);
            }
        }];
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
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
        PKCategoryManagementModel *model = self.selectArray[indexPath.row];
        cell.model = model;
    }else {
        PKCategoryManagementModel *model = self.dataArray[indexPath.row];
        cell.model = model;
    }
    __weak typeof(self) weakSelf = self;
    cell.finishSelectCategoryBlock = ^(PKCategoryManagementModel * _Nonnull categoryModel) {
        Boolean isContain = NO;
        PKCategoryManagementModel *selectModel;
        for (PKCategoryManagementModel *selectmodel in self.selectArray) {
            if ([categoryModel.content isEqualToString:selectmodel.content]) {
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
