//
//  GHGuideViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHGuideViewController.h"
#import "GHTabBarViewController.h"
#import "GHGuidePromptView.h"
#import "GHGuideCollectionReusableView.h"
#import "GHGuideCollectionViewCell.h"
#import "GHGuideModel.h"
@interface GHGuideViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, strong)NSMutableArray *selectArray;
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)GHGuidePromptView *promptView;
@property(nonatomic, strong)UICollectionView *collectionView;
@property(nonatomic, strong)UIButton *sureButton;
@property(nonatomic, copy)NSString *objectId;
@end

@implementation GHGuideViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setContentView];
}
#pragma mark - actions
- (void)setContentView{
    [self.view addSubview:self.promptView];
    [self.promptView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.top.equalTo(self.view).offset(GHHeightNavBar);
        make.trailing.equalTo(self.view).offset(-30);
        make.height.mas_equalTo(40);
    }];
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setObject:NSLocalizedString(@"起床", nil) forKey:@"sectionTitle"];
    NSMutableArray *dataArray = [[NSMutableArray alloc] init];
    [dic setObject:dataArray forKey:@"data"];
    
    GHGuideModel *brushTeethModel = [[GHGuideModel alloc] init];
    brushTeethModel.periodCode = 000;
    brushTeethModel.periodTimeString = NSLocalizedString(@"起床", nil);
    brushTeethModel.imageContent = @"GHBrushTeeth";
    brushTeethModel.contentCode = 0000;
    brushTeethModel.content = NSLocalizedString(@"刷牙", nil);
    [dataArray addObject:brushTeethModel];
    
    GHGuideModel *drinkWaterModel = [[GHGuideModel alloc] init];
    drinkWaterModel.periodCode = 000;
    drinkWaterModel.periodTimeString = NSLocalizedString(@"起床", nil);
    drinkWaterModel.imageContent = @"GHDrinkWater";
    drinkWaterModel.contentCode = 0001;
    drinkWaterModel.content = NSLocalizedString(@"喝杯水", nil);
    [dataArray addObject:drinkWaterModel];
    
    GHGuideModel *foldQuiltModel = [[GHGuideModel alloc] init];
    foldQuiltModel.periodCode = 000;
    foldQuiltModel.periodTimeString = NSLocalizedString(@"起床", nil);
    foldQuiltModel.imageContent = @"GHFoldQuilt";
    foldQuiltModel.contentCode = 0002;
    foldQuiltModel.content = NSLocalizedString(@"叠被子", nil);
    [dataArray addObject:foldQuiltModel];
    
    [self.dataArray addObject:dic];
    
    NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
    [dic1 setObject:NSLocalizedString(@"晨间", nil) forKey:@"sectionTitle"];
    NSMutableArray *dataArray1 = [[NSMutableArray alloc] init];
    [dic1 setObject:dataArray1 forKey:@"data"];
    
    GHGuideModel *runningModel = [[GHGuideModel alloc] init];
    runningModel.periodCode = 001;
    runningModel.periodTimeString = NSLocalizedString(@"晨间", nil);
    runningModel.imageContent = @"GHRunning";
    runningModel.contentCode = 0010;
    runningModel.content = NSLocalizedString(@"跑步", nil);
    [dataArray1 addObject:runningModel];
    
    GHGuideModel *eatbreakfastModel = [[GHGuideModel alloc] init];
    eatbreakfastModel.periodCode = 001;
    eatbreakfastModel.periodTimeString = NSLocalizedString(@"晨间", nil);
    eatbreakfastModel.imageContent = @"GHEatBreakfast";
    eatbreakfastModel.contentCode = 0011;
    eatbreakfastModel.content = NSLocalizedString(@"吃早餐", nil);
    [dataArray1 addObject:eatbreakfastModel];
    
    GHGuideModel *getUpEarlyModel = [[GHGuideModel alloc] init];
    getUpEarlyModel.periodCode = 001;
    getUpEarlyModel.periodTimeString = NSLocalizedString(@"晨间", nil);
    getUpEarlyModel.imageContent = @"GHGetUpEarly";
    getUpEarlyModel.contentCode = 0012;
    getUpEarlyModel.content = NSLocalizedString(@"早起", nil);
    [dataArray1 addObject:getUpEarlyModel];
    
    GHGuideModel *readingNewsModel = [[GHGuideModel alloc] init];
    readingNewsModel.periodCode = 001;
    readingNewsModel.periodTimeString = NSLocalizedString(@"晨间", nil);
    readingNewsModel.imageContent = @"GHReadingNews";
    readingNewsModel.contentCode = 0013;
    readingNewsModel.content = NSLocalizedString(@"阅读新闻", nil);
    [dataArray1 addObject:readingNewsModel];
    
    GHGuideModel *eatAnEggModel = [[GHGuideModel alloc] init];
    eatAnEggModel.periodCode = 001;
    eatAnEggModel.periodTimeString = NSLocalizedString(@"晨间", nil);
    eatAnEggModel.imageContent = @"GHEatAnEgg";
    eatAnEggModel.contentCode = 0014;
    eatAnEggModel.content = NSLocalizedString(@"吃鸡蛋", nil);
    [dataArray1 addObject:eatAnEggModel];
    
    GHGuideModel *listenBlogModel = [[GHGuideModel alloc] init];
    listenBlogModel.periodCode = 001;
    listenBlogModel.periodTimeString = NSLocalizedString(@"晨间", nil);
    listenBlogModel.imageContent = @"GHListenBlog";
    listenBlogModel.contentCode = 0015;
    listenBlogModel.content = NSLocalizedString(@"听播客", nil);
    [dataArray1 addObject:listenBlogModel];
    
    GHGuideModel *memorizingWordsModel = [[GHGuideModel alloc] init];
    memorizingWordsModel.periodCode = 001;
    memorizingWordsModel.periodTimeString = NSLocalizedString(@"晨间", nil);
    memorizingWordsModel.imageContent = @"GHMemorizingWords";
    memorizingWordsModel.contentCode = 0016;
    memorizingWordsModel.content = NSLocalizedString(@"背单词", nil);
    [dataArray1 addObject:memorizingWordsModel];
    
    [self.dataArray addObject:dic1];

    NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
    [dic2 setObject:NSLocalizedString(@"中午", nil) forKey:@"sectionTitle"];
    NSMutableArray *dataArray2 = [[NSMutableArray alloc] init];
    [dic2 setObject:dataArray2 forKey:@"data"];
    
    GHGuideModel *inSportsModel = [[GHGuideModel alloc] init];
    inSportsModel.periodCode = 002;
    inSportsModel.periodTimeString = NSLocalizedString(@"中午", nil);
    inSportsModel.imageContent = @"GHInSports";
    inSportsModel.contentCode = 0020;
    inSportsModel.content = NSLocalizedString(@"眼操", nil);
    [dataArray2 addObject:inSportsModel];
    
    GHGuideModel *eatFruitModel = [[GHGuideModel alloc] init];
    eatFruitModel.periodCode = 002;
    eatFruitModel.periodTimeString = NSLocalizedString(@"中午", nil);
    eatFruitModel.imageContent = @"GHEatFruit";
    eatFruitModel.contentCode = 0021;
    eatFruitModel.content = NSLocalizedString(@"吃水果", nil);
    [dataArray2 addObject:eatFruitModel];
    
    GHGuideModel *chargeAccountModel = [[GHGuideModel alloc] init];
    chargeAccountModel.periodCode = 002;
    chargeAccountModel.periodTimeString = NSLocalizedString(@"中午", nil);
    chargeAccountModel.imageContent = @"GHChargeAccount";
    chargeAccountModel.contentCode = 0022;
    chargeAccountModel.content = NSLocalizedString(@"记账", nil);
    [dataArray2 addObject:chargeAccountModel];
    
    GHGuideModel *readingModel = [[GHGuideModel alloc] init];
    readingModel.periodCode = 002;
    readingModel.periodTimeString = NSLocalizedString(@"中午", nil);
    readingModel.imageContent = @"GHReading";
    readingModel.contentCode = 0023;
    readingModel.content = NSLocalizedString(@"阅读", nil);
    [dataArray2 addObject:readingModel];
    
    GHGuideModel *cleanRoomModel = [[GHGuideModel alloc] init];
    cleanRoomModel.periodCode = 002;
    cleanRoomModel.periodTimeString = NSLocalizedString(@"中午", nil);
    cleanRoomModel.imageContent = @"GHCleanRoom";
    cleanRoomModel.contentCode = 0024;
    cleanRoomModel.content = NSLocalizedString(@"打扫", nil);
    [dataArray2 addObject:cleanRoomModel];
    
    GHGuideModel *waterFlowersModel = [[GHGuideModel alloc] init];
    waterFlowersModel.periodCode = 002;
    waterFlowersModel.periodTimeString = NSLocalizedString(@"中午", nil);
    waterFlowersModel.imageContent = @"GHWaterFlowers";
    waterFlowersModel.contentCode = 0025;
    waterFlowersModel.content = NSLocalizedString(@"浇花", nil);
    [dataArray2 addObject:waterFlowersModel];
    
    GHGuideModel *swimmingModel = [[GHGuideModel alloc] init];
    swimmingModel.periodCode = 002;
    swimmingModel.periodTimeString = NSLocalizedString(@"中午", nil);
    swimmingModel.imageContent = @"GHSwimming";
    swimmingModel.contentCode = 0026;
    swimmingModel.content = NSLocalizedString(@"游泳", nil);
    [dataArray2 addObject:swimmingModel];
    
    GHGuideModel *exerciseModel = [[GHGuideModel alloc] init];
    exerciseModel.periodCode = 002;
    exerciseModel.periodTimeString = NSLocalizedString(@"中午", nil);
    exerciseModel.imageContent = @"GHExercise";
    exerciseModel.contentCode = 0027;
    exerciseModel.content = NSLocalizedString(@"锻炼", nil);
    [dataArray2 addObject:exerciseModel];
    
    GHGuideModel *doTheHouseworkModel = [[GHGuideModel alloc] init];
    doTheHouseworkModel.periodCode = 002;
    doTheHouseworkModel.periodTimeString = NSLocalizedString(@"中午", nil);
    doTheHouseworkModel.imageContent = @"GHDoTheHousework";
    doTheHouseworkModel.contentCode = 00271;
    doTheHouseworkModel.content = NSLocalizedString(@"做家务", nil);
    [dataArray2 addObject:doTheHouseworkModel];
    
    [self.dataArray addObject:dic2];
    
    NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
    [dic3 setObject:NSLocalizedString(@"晚间", nil) forKey:@"sectionTitle"];
    NSMutableArray *dataArray3 = [[NSMutableArray alloc] init];
    [dic3 setObject:dataArray3 forKey:@"data"];
    
    GHGuideModel *contactWithFriendsModel = [[GHGuideModel alloc] init];
    contactWithFriendsModel.periodCode = 003;
    contactWithFriendsModel.periodTimeString = NSLocalizedString(@"晚间", nil);
    contactWithFriendsModel.imageContent = @"GHContactWithFriends";
    contactWithFriendsModel.contentCode = 0030;
    contactWithFriendsModel.content = NSLocalizedString(@"联系朋友", nil);
    [dataArray3 addObject:contactWithFriendsModel];
    
    GHGuideModel *takeMedicineModel = [[GHGuideModel alloc] init];
    takeMedicineModel.periodCode = 003;
    takeMedicineModel.periodTimeString = NSLocalizedString(@"晚间", nil);
    takeMedicineModel.imageContent = @"GHTakeMedicine";
    takeMedicineModel.contentCode = 0031;
    takeMedicineModel.content = NSLocalizedString(@"吃药", nil);
    [dataArray3 addObject:takeMedicineModel];
    
    GHGuideModel *pushUpsModel = [[GHGuideModel alloc] init];
    pushUpsModel.periodCode = 003;
    pushUpsModel.periodTimeString = NSLocalizedString(@"晚间", nil);
    pushUpsModel.imageContent = @"GHPushUps";
    pushUpsModel.contentCode = 0032;
    pushUpsModel.content = NSLocalizedString(@"俯卧撑", nil);
    [dataArray3 addObject:pushUpsModel];
    
    GHGuideModel *walkTheDogModel = [[GHGuideModel alloc] init];
    walkTheDogModel.periodCode = 003;
    walkTheDogModel.periodTimeString = NSLocalizedString(@"晚间", nil);
    walkTheDogModel.imageContent = @"GHWalkTheDog";
    walkTheDogModel.contentCode = 0033;
    walkTheDogModel.content = NSLocalizedString(@"遛狗", nil);
    [dataArray3 addObject:walkTheDogModel];
    
    GHGuideModel *takeAwalkAfterDinnerModel = [[GHGuideModel alloc] init];
    takeAwalkAfterDinnerModel.periodCode = 003;
    takeAwalkAfterDinnerModel.periodTimeString = NSLocalizedString(@"晚间", nil);
    takeAwalkAfterDinnerModel.imageContent = @"GHTakeAwalkAfterDinner";
    takeAwalkAfterDinnerModel.contentCode = 0034;
    takeAwalkAfterDinnerModel.content = NSLocalizedString(@"散步", nil);
    [dataArray3 addObject:takeAwalkAfterDinnerModel];
    
    GHGuideModel *rideABikeModel = [[GHGuideModel alloc] init];
    rideABikeModel.periodCode = 003;
    rideABikeModel.periodTimeString = NSLocalizedString(@"晚间", nil);
    rideABikeModel.imageContent = @"GHRideABike";
    rideABikeModel.contentCode = 0035;
    rideABikeModel.content = NSLocalizedString(@"骑单车", nil);
    [dataArray3 addObject:rideABikeModel];
    
    GHGuideModel *watchAMovieModel = [[GHGuideModel alloc] init];
    watchAMovieModel.periodCode = 003;
    watchAMovieModel.periodTimeString = NSLocalizedString(@"晚间", nil);
    watchAMovieModel.imageContent = @"GHWatchAMovie";
    watchAMovieModel.contentCode = 0036;
    watchAMovieModel.content = NSLocalizedString(@"看电影", nil);
    [dataArray3 addObject:watchAMovieModel];
    
    [self.dataArray addObject:dic3];

    NSMutableDictionary *dic4 = [[NSMutableDictionary alloc] init];
    [dic4 setObject:NSLocalizedString(@"睡前", nil) forKey:@"sectionTitle"];
    NSMutableArray *dataArray4 = [[NSMutableArray alloc] init];
    [dic4 setObject:dataArray4 forKey:@"data"];
    
    GHGuideModel *reflectOnTheirModel = [[GHGuideModel alloc] init];
    reflectOnTheirModel.periodCode = 004;
    reflectOnTheirModel.periodTimeString = NSLocalizedString(@"睡前", nil);
    reflectOnTheirModel.imageContent = @"GHReflectOnTheir";
    reflectOnTheirModel.contentCode = 0040;
    reflectOnTheirModel.content = NSLocalizedString(@"反省", nil);
    [dataArray4 addObject:reflectOnTheirModel];
    
    GHGuideModel *writeADiaryModel = [[GHGuideModel alloc] init];
    writeADiaryModel.periodCode = 004;
    writeADiaryModel.periodTimeString = NSLocalizedString(@"睡前", nil);
    writeADiaryModel.imageContent = @"GHWriteADiary";
    writeADiaryModel.contentCode = 0041;
    writeADiaryModel.content = NSLocalizedString(@"写日记", nil);
    [dataArray4 addObject:writeADiaryModel];
    
    GHGuideModel *vitaminSupplementModel = [[GHGuideModel alloc] init];
       vitaminSupplementModel.periodCode = 004;
       vitaminSupplementModel.periodTimeString = NSLocalizedString(@"睡前", nil);
       vitaminSupplementModel.imageContent = @"GHVitaminSupplement";
       vitaminSupplementModel.contentCode = 0042;
       vitaminSupplementModel.content = NSLocalizedString(@"补充维生素", nil);
       [dataArray4 addObject:vitaminSupplementModel];
    
    GHGuideModel *earlyToBedModel = [[GHGuideModel alloc] init];
    earlyToBedModel.periodCode = 004;
    earlyToBedModel.periodTimeString = NSLocalizedString(@"睡前", nil);
    earlyToBedModel.imageContent = @"GHEarlyToBed";
    earlyToBedModel.contentCode = 0043;
    earlyToBedModel.content = NSLocalizedString(@"早睡", nil);
    [dataArray4 addObject:earlyToBedModel];
    
    [self.dataArray addObject:dic4];
    
    [self.collectionView reloadData];
}
- (void)collectionReload{
    [self.collectionView reloadData];
    self.promptView.numberLabel.text = [NSString stringWithFormat:@"%ld",self.selectArray.count];
}
- (void)sureBtnClick{
    if (self.selectArray.count < 3) {
        [MBProgressHUD GHshowReminderText:NSLocalizedString(@"请选择3项", nil)];
    }
    BmobObject *clockProjects = [BmobObject objectWithClassName:@"GHClockProjects"];
    BmobUser *author = [BmobUser currentUser];
    [clockProjects setObject:author forKey:@"author"];
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.selectArray.count; i++) {
        GHGuideModel *model = self.selectArray[i];
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[model yy_modelToJSONObject]];
        [tempArray addObject:dic];
    }
    NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] init];
    [tempDic setObject:tempArray forKey:@"data"];
    [clockProjects saveAllWithDictionary:tempDic];
    [clockProjects saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                  [MBProgressHUD GHshowReminderText:NSLocalizedString(@"设置成功", nil)];
                           GHTabBarViewController *tabVC = [GHTabBarViewController shareInstance];
                           tabVC.selectedIndex = 0;
                           [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
            } else if (error){
                [MBProgressHUD GHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD GHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
}
#pragma mark - UICollectionViewDelegateFlowLayout
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    return CGSizeMake(GHWIDTH, 50);
}
// 返回cell的尺寸大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(100, 85);// 让每个cell尺寸都不一样
}
// 返回cell之间行间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    CGFloat maginX = (GHWIDTH - 3 * 100) / 4;
    return maginX * 0.7;
}
// 返回cell之间列间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    CGFloat maginX = (GHWIDTH - 3 * 100) / 4;
    return maginX;
}
// 设置上左下右边界缩进
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(20, 15, 20, 15);
}
#pragma mark - UICollectionViewDataSource
// 返回Section个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.dataArray.count;
}
// 返回cell个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSDictionary *dic = self.dataArray[section];
    NSArray *array = [dic objectForKey:@"data"];
    return array.count;
}
// 返回cell内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dic = self.dataArray[indexPath.section];
    NSArray *array = [dic objectForKey:@"data"];
    GHGuideModel *model = array[indexPath.row];
    GHGuideCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"GHGuideCollectionViewCell" forIndexPath:indexPath];
    cell.model = model;
    return cell;
}
// 返回Header/Footer内容
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {          // Header视图
        // 从复用队列中获取HooterView
        GHGuideCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"GHGuideCollectionReusableView" forIndexPath:indexPath];
        NSDictionary *dic = self.dataArray[indexPath.section];
        NSString *title = [dic objectForKey:@"sectionTitle"];
        headerView.titleString = title;
        // 返回HooterView
        return headerView;
    }else if ([kind isEqualToString:UICollectionElementKindSectionFooter]) {
        return nil;
    }
    return nil;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *dic = self.dataArray[indexPath.section];
    NSArray *array = [dic objectForKey:@"data"];
    GHGuideModel *model = array[indexPath.row];
    Boolean isSelect = !model.isSelect;
    if (isSelect) {
        if (self.selectArray.count < 3) {
    BOOL isAdd = YES;
    for (int i = 0; i < self.selectArray.count; i++) {
        GHGuideModel *selectModel = self.selectArray[i];
        if (model.contentCode == selectModel.contentCode) {
            isAdd = NO;
            break;
        }
    }
    if (isAdd) {
        [self.selectArray addObject:model];
    }
            model.isSelect = !model.isSelect;
        }
    }else{
        if (self.selectArray.count <= 3) {
            model.isSelect = !model.isSelect;
            BOOL isRemove = NO;
            for (int i = 0; i < self.selectArray.count; i++) {
                GHGuideModel *selectModel = self.selectArray[i];
                if (model.contentCode == selectModel.contentCode) {
                    isRemove = YES;
                    break;
                }
            }
            [self.selectArray removeObject:model];
        }else{
            
        }
    }
    [self collectionReload];
}
#pragma mark - 属性懒加载
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
- (GHGuidePromptView *)promptView{
    if (!_promptView) {
        _promptView = [[GHGuidePromptView alloc] init];
        _promptView.titleLabel.text = NSLocalizedString(@"请先挑选3个习惯来开始", nil);
        _promptView.numberLabel.text = @"0";
    }
    return _promptView;
}
- (UICollectionView *)collectionView{
    if (!_collectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        CGRect frame = CGRectMake(0, GHHeightNavBar, GHWIDTH, GHHEIGHT);
        _collectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:flowLayout];
        // 设置代理
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        // 其他属性
        _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        [_collectionView registerClass:[GHGuideCollectionViewCell class] forCellWithReuseIdentifier:@"GHGuideCollectionViewCell"];
        [_collectionView registerClass:[GHGuideCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"GHGuideCollectionReusableView"];
        [self.view addSubview:self.sureButton];
        [self.sureButton mas_makeConstraints:^(MASConstraintMaker *make) {        make.leading.equalTo(self.view).offset(150);
        make.trailing.equalTo(self.view).offset(-150);
            make.height.mas_equalTo(30);
            make.bottom.equalTo(self.view).offset(-GHHeightNavContentBar - 15);
        }];
        [self.view addSubview:_collectionView];
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.promptView.mas_bottom).offset(10);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.sureButton.mas_top).offset(-20);
        }];
    }
    return _collectionView;
}
- (UIButton *)sureButton{
    if (!_sureButton) {
        _sureButton = [[UIButton alloc] init];
        _sureButton.backgroundColor = GHH_Color(242, 242, 242, 1);
        _sureButton.layer.cornerRadius = 6.0f;
        _sureButton.layer.masksToBounds = YES;
        [_sureButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [_sureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_sureButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_sureButton addTarget:self action:@selector(sureBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sureButton;
}
@end
