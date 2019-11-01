//
//  PHGuideViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHGuideViewController.h"
#import "PHTabBarViewController.h"
#import "PHDailyHabitsViewController.h"
#import "PHGuidePromptView.h"
#import "PHGuideCollectionReusableView.h"
#import "PHGuideCollectionViewCell.h"
#import "PHGuideModel.h"
@interface PHGuideViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, strong)NSMutableArray *PHselectArray;
@property(nonatomic, strong)NSMutableArray *PHdataArray;
@property(nonatomic, strong)PHGuidePromptView *PHpromptView;
@property(nonatomic, strong)UICollectionView *collectionView;
@property(nonatomic, strong)UIButton *PHsureButton;
@property(nonatomic, copy)NSString *PHobjectId;
@end

@implementation PHGuideViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self PH_setupNavigationItems];
    [self PHsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (self.PHselectIndex == 0) {
        self.PHbackButton.hidden = YES;
//        self.PHpromptView.hidden = NO;
    }else{
        self.PHbackButton.hidden = NO;
//        self.PHpromptView.hidden = YES;
    }
}
- (void)PH_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _PHbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_PHbackButton setImage:[UIImage imageNamed:@"btn_back"] forState:UIControlStateNormal];
        _PHbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_PHbackButton addTarget:self action:@selector(PHbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:_PHbackButton];
        self.navigationItem.leftBarButtonItem = backItem;
    }
}
- (void)PHbackButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - actions
- (void)PHsetContentView{
    [self.view addSubview:self.PHpromptView];
    [self.PHpromptView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.top.equalTo(self.view).offset(PHHeightNavBar);
        make.trailing.equalTo(self.view).offset(-30);
        make.height.mas_equalTo(40);
    }];
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setObject:NSLocalizedString(@"起床", nil) forKey:@"sectionTitle"];
    NSMutableArray *PHdataArray = [[NSMutableArray alloc] init];
    [dic setObject:PHdataArray forKey:@"data"];
    
    PHGuideModel *brushTeethModel = [[PHGuideModel alloc] init];
    brushTeethModel.PHperiodCode = 000;
    brushTeethModel.PHperiodTimeString = NSLocalizedString(@"起床", nil);
    brushTeethModel.PHimageContent = @"PHBrushTeeth";
    brushTeethModel.PHcontentCode = 0000;
    brushTeethModel.content = NSLocalizedString(@"刷牙", nil);
    [PHdataArray addObject:brushTeethModel];
    
    PHGuideModel *drinkWaterModel = [[PHGuideModel alloc] init];
    drinkWaterModel.PHperiodCode = 000;
    drinkWaterModel.PHperiodTimeString = NSLocalizedString(@"起床", nil);
    drinkWaterModel.PHimageContent = @"PHDrinkWater";
    drinkWaterModel.PHcontentCode = 0001;
    drinkWaterModel.content = NSLocalizedString(@"喝杯水", nil);
    [PHdataArray addObject:drinkWaterModel];
    
    PHGuideModel *foldQuiltModel = [[PHGuideModel alloc] init];
    foldQuiltModel.PHperiodCode = 000;
    foldQuiltModel.PHperiodTimeString = NSLocalizedString(@"起床", nil);
    foldQuiltModel.PHimageContent = @"PHFoldQuilt";
    foldQuiltModel.PHcontentCode = 0002;
    foldQuiltModel.content = NSLocalizedString(@"叠被子", nil);
    [PHdataArray addObject:foldQuiltModel];
    
    [self.PHdataArray addObject:dic];
    
    NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
    [dic1 setObject:NSLocalizedString(@"晨间", nil) forKey:@"sectionTitle"];
    NSMutableArray *PHdataArray1 = [[NSMutableArray alloc] init];
    [dic1 setObject:PHdataArray1 forKey:@"data"];
    
    PHGuideModel *runningModel = [[PHGuideModel alloc] init];
    runningModel.PHperiodCode = 001;
    runningModel.PHperiodTimeString = NSLocalizedString(@"晨间", nil);
    runningModel.PHimageContent = @"PHRunning";
    runningModel.PHcontentCode = 0010;
    runningModel.content = NSLocalizedString(@"跑步", nil);
    [PHdataArray1 addObject:runningModel];
    
    PHGuideModel *eatbreakfastModel = [[PHGuideModel alloc] init];
    eatbreakfastModel.PHperiodCode = 001;
    eatbreakfastModel.PHperiodTimeString = NSLocalizedString(@"晨间", nil);
    eatbreakfastModel.PHimageContent = @"PHEatBreakfast";
    eatbreakfastModel.PHcontentCode = 0011;
    eatbreakfastModel.content = NSLocalizedString(@"吃早餐", nil);
    [PHdataArray1 addObject:eatbreakfastModel];
    
    PHGuideModel *getUpEarlyModel = [[PHGuideModel alloc] init];
    getUpEarlyModel.PHperiodCode = 001;
    getUpEarlyModel.PHperiodTimeString = NSLocalizedString(@"晨间", nil);
    getUpEarlyModel.PHimageContent = @"PHGetUpEarly";
    getUpEarlyModel.PHcontentCode = 0012;
    getUpEarlyModel.content = NSLocalizedString(@"早起", nil);
    [PHdataArray1 addObject:getUpEarlyModel];
    
    PHGuideModel *readingNewsModel = [[PHGuideModel alloc] init];
    readingNewsModel.PHperiodCode = 001;
    readingNewsModel.PHperiodTimeString = NSLocalizedString(@"晨间", nil);
    readingNewsModel.PHimageContent = @"PHReadingNews";
    readingNewsModel.PHcontentCode = 0013;
    readingNewsModel.content = NSLocalizedString(@"阅读新闻", nil);
    [PHdataArray1 addObject:readingNewsModel];
    
    PHGuideModel *eatAnEggModel = [[PHGuideModel alloc] init];
    eatAnEggModel.PHperiodCode = 001;
    eatAnEggModel.PHperiodTimeString = NSLocalizedString(@"晨间", nil);
    eatAnEggModel.PHimageContent = @"PHEatAnEgg";
    eatAnEggModel.PHcontentCode = 0014;
    eatAnEggModel.content = NSLocalizedString(@"吃鸡蛋", nil);
    [PHdataArray1 addObject:eatAnEggModel];
    
    PHGuideModel *listenBlogModel = [[PHGuideModel alloc] init];
    listenBlogModel.PHperiodCode = 001;
    listenBlogModel.PHperiodTimeString = NSLocalizedString(@"晨间", nil);
    listenBlogModel.PHimageContent = @"PHListenBlog";
    listenBlogModel.PHcontentCode = 0015;
    listenBlogModel.content = NSLocalizedString(@"听播客", nil);
    [PHdataArray1 addObject:listenBlogModel];
    
    PHGuideModel *memorizingWordsModel = [[PHGuideModel alloc] init];
    memorizingWordsModel.PHperiodCode = 001;
    memorizingWordsModel.PHperiodTimeString = NSLocalizedString(@"晨间", nil);
    memorizingWordsModel.PHimageContent = @"PHMemorizingWords";
    memorizingWordsModel.PHcontentCode = 0016;
    memorizingWordsModel.content = NSLocalizedString(@"背单词", nil);
    [PHdataArray1 addObject:memorizingWordsModel];
    
    [self.PHdataArray addObject:dic1];

    NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
    [dic2 setObject:NSLocalizedString(@"中午", nil) forKey:@"sectionTitle"];
    NSMutableArray *PHdataArray2 = [[NSMutableArray alloc] init];
    [dic2 setObject:PHdataArray2 forKey:@"data"];
    
    PHGuideModel *inSportsModel = [[PHGuideModel alloc] init];
    inSportsModel.PHperiodCode = 002;
    inSportsModel.PHperiodTimeString = NSLocalizedString(@"中午", nil);
    inSportsModel.PHimageContent = @"PHInSports";
    inSportsModel.PHcontentCode = 0020;
    inSportsModel.content = NSLocalizedString(@"眼操", nil);
    [PHdataArray2 addObject:inSportsModel];
    
    PHGuideModel *eatFruitModel = [[PHGuideModel alloc] init];
    eatFruitModel.PHperiodCode = 002;
    eatFruitModel.PHperiodTimeString = NSLocalizedString(@"中午", nil);
    eatFruitModel.PHimageContent = @"PHEatFruit";
    eatFruitModel.PHcontentCode = 0021;
    eatFruitModel.content = NSLocalizedString(@"吃水果", nil);
    [PHdataArray2 addObject:eatFruitModel];
    
    PHGuideModel *chargeAccountModel = [[PHGuideModel alloc] init];
    chargeAccountModel.PHperiodCode = 002;
    chargeAccountModel.PHperiodTimeString = NSLocalizedString(@"中午", nil);
    chargeAccountModel.PHimageContent = @"PHChargeAccount";
    chargeAccountModel.PHcontentCode = 0022;
    chargeAccountModel.content = NSLocalizedString(@"记账", nil);
    [PHdataArray2 addObject:chargeAccountModel];
    
    PHGuideModel *readingModel = [[PHGuideModel alloc] init];
    readingModel.PHperiodCode = 002;
    readingModel.PHperiodTimeString = NSLocalizedString(@"中午", nil);
    readingModel.PHimageContent = @"PHReading";
    readingModel.PHcontentCode = 0023;
    readingModel.content = NSLocalizedString(@"阅读", nil);
    [PHdataArray2 addObject:readingModel];
    
    PHGuideModel *cleanRoomModel = [[PHGuideModel alloc] init];
    cleanRoomModel.PHperiodCode = 002;
    cleanRoomModel.PHperiodTimeString = NSLocalizedString(@"中午", nil);
    cleanRoomModel.PHimageContent = @"PHCleanRoom";
    cleanRoomModel.PHcontentCode = 0024;
    cleanRoomModel.content = NSLocalizedString(@"打扫", nil);
    [PHdataArray2 addObject:cleanRoomModel];
    
    PHGuideModel *waterFlowersModel = [[PHGuideModel alloc] init];
    waterFlowersModel.PHperiodCode = 002;
    waterFlowersModel.PHperiodTimeString = NSLocalizedString(@"中午", nil);
    waterFlowersModel.PHimageContent = @"PHWaterFlowers";
    waterFlowersModel.PHcontentCode = 0025;
    waterFlowersModel.content = NSLocalizedString(@"浇花", nil);
    [PHdataArray2 addObject:waterFlowersModel];
    
    PHGuideModel *swimmingModel = [[PHGuideModel alloc] init];
    swimmingModel.PHperiodCode = 002;
    swimmingModel.PHperiodTimeString = NSLocalizedString(@"中午", nil);
    swimmingModel.PHimageContent = @"PHSwimming";
    swimmingModel.PHcontentCode = 0026;
    swimmingModel.content = NSLocalizedString(@"游泳", nil);
    [PHdataArray2 addObject:swimmingModel];
    
    PHGuideModel *exerciseModel = [[PHGuideModel alloc] init];
    exerciseModel.PHperiodCode = 002;
    exerciseModel.PHperiodTimeString = NSLocalizedString(@"中午", nil);
    exerciseModel.PHimageContent = @"PHExercise";
    exerciseModel.PHcontentCode = 0027;
    exerciseModel.content = NSLocalizedString(@"锻炼", nil);
    [PHdataArray2 addObject:exerciseModel];
    
    PHGuideModel *doTheHouseworkModel = [[PHGuideModel alloc] init];
    doTheHouseworkModel.PHperiodCode = 002;
    doTheHouseworkModel.PHperiodTimeString = NSLocalizedString(@"中午", nil);
    doTheHouseworkModel.PHimageContent = @"PHDoTheHousework";
    doTheHouseworkModel.PHcontentCode = 00271;
    doTheHouseworkModel.content = NSLocalizedString(@"做家务", nil);
    [PHdataArray2 addObject:doTheHouseworkModel];
    
    [self.PHdataArray addObject:dic2];
    
    NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
    [dic3 setObject:NSLocalizedString(@"晚间", nil) forKey:@"sectionTitle"];
    NSMutableArray *PHdataArray3 = [[NSMutableArray alloc] init];
    [dic3 setObject:PHdataArray3 forKey:@"data"];
    
    PHGuideModel *contactWithFriendsModel = [[PHGuideModel alloc] init];
    contactWithFriendsModel.PHperiodCode = 003;
    contactWithFriendsModel.PHperiodTimeString = NSLocalizedString(@"晚间", nil);
    contactWithFriendsModel.PHimageContent = @"PHContactWithFriends";
    contactWithFriendsModel.PHcontentCode = 0030;
    contactWithFriendsModel.content = NSLocalizedString(@"联系朋友", nil);
    [PHdataArray3 addObject:contactWithFriendsModel];
    
    PHGuideModel *takeMedicineModel = [[PHGuideModel alloc] init];
    takeMedicineModel.PHperiodCode = 003;
    takeMedicineModel.PHperiodTimeString = NSLocalizedString(@"晚间", nil);
    takeMedicineModel.PHimageContent = @"PHTakeMedicine";
    takeMedicineModel.PHcontentCode = 0031;
    takeMedicineModel.content = NSLocalizedString(@"吃药", nil);
    [PHdataArray3 addObject:takeMedicineModel];
    
    PHGuideModel *pushUpsModel = [[PHGuideModel alloc] init];
    pushUpsModel.PHperiodCode = 003;
    pushUpsModel.PHperiodTimeString = NSLocalizedString(@"晚间", nil);
    pushUpsModel.PHimageContent = @"PHPushUps";
    pushUpsModel.PHcontentCode = 0032;
    pushUpsModel.content = NSLocalizedString(@"俯卧撑", nil);
    [PHdataArray3 addObject:pushUpsModel];
    
    PHGuideModel *walkTheDogModel = [[PHGuideModel alloc] init];
    walkTheDogModel.PHperiodCode = 003;
    walkTheDogModel.PHperiodTimeString = NSLocalizedString(@"晚间", nil);
    walkTheDogModel.PHimageContent = @"PHWalkTheDog";
    walkTheDogModel.PHcontentCode = 0033;
    walkTheDogModel.content = NSLocalizedString(@"遛狗", nil);
    [PHdataArray3 addObject:walkTheDogModel];
    
    PHGuideModel *takeAwalkAfterDinnerModel = [[PHGuideModel alloc] init];
    takeAwalkAfterDinnerModel.PHperiodCode = 003;
    takeAwalkAfterDinnerModel.PHperiodTimeString = NSLocalizedString(@"晚间", nil);
    takeAwalkAfterDinnerModel.PHimageContent = @"PHTakeAwalkAfterDinner";
    takeAwalkAfterDinnerModel.PHcontentCode = 0034;
    takeAwalkAfterDinnerModel.content = NSLocalizedString(@"散步", nil);
    [PHdataArray3 addObject:takeAwalkAfterDinnerModel];
    
    PHGuideModel *rideABikeModel = [[PHGuideModel alloc] init];
    rideABikeModel.PHperiodCode = 003;
    rideABikeModel.PHperiodTimeString = NSLocalizedString(@"晚间", nil);
    rideABikeModel.PHimageContent = @"PHRideABike";
    rideABikeModel.PHcontentCode = 0035;
    rideABikeModel.content = NSLocalizedString(@"骑单车", nil);
    [PHdataArray3 addObject:rideABikeModel];
    
    PHGuideModel *watchAMovieModel = [[PHGuideModel alloc] init];
    watchAMovieModel.PHperiodCode = 003;
    watchAMovieModel.PHperiodTimeString = NSLocalizedString(@"晚间", nil);
    watchAMovieModel.PHimageContent = @"PHWatchAMovie";
    watchAMovieModel.PHcontentCode = 0036;
    watchAMovieModel.content = NSLocalizedString(@"看电影", nil);
    [PHdataArray3 addObject:watchAMovieModel];
    
    [self.PHdataArray addObject:dic3];

    NSMutableDictionary *dic4 = [[NSMutableDictionary alloc] init];
    [dic4 setObject:NSLocalizedString(@"睡前", nil) forKey:@"sectionTitle"];
    NSMutableArray *PHdataArray4 = [[NSMutableArray alloc] init];
    [dic4 setObject:PHdataArray4 forKey:@"data"];
    
    PHGuideModel *reflectOnTheirModel = [[PHGuideModel alloc] init];
    reflectOnTheirModel.PHperiodCode = 004;
    reflectOnTheirModel.PHperiodTimeString = NSLocalizedString(@"睡前", nil);
    reflectOnTheirModel.PHimageContent = @"PHReflectOnTheir";
    reflectOnTheirModel.PHcontentCode = 0040;
    reflectOnTheirModel.content = NSLocalizedString(@"反省", nil);
    [PHdataArray4 addObject:reflectOnTheirModel];
    
    PHGuideModel *writeADiaryModel = [[PHGuideModel alloc] init];
    writeADiaryModel.PHperiodCode = 004;
    writeADiaryModel.PHperiodTimeString = NSLocalizedString(@"睡前", nil);
    writeADiaryModel.PHimageContent = @"PHWriteADiary";
    writeADiaryModel.PHcontentCode = 0041;
    writeADiaryModel.content = NSLocalizedString(@"写日记", nil);
    [PHdataArray4 addObject:writeADiaryModel];
    
    PHGuideModel *vitaminSupplementModel = [[PHGuideModel alloc] init];
       vitaminSupplementModel.PHperiodCode = 004;
       vitaminSupplementModel.PHperiodTimeString = NSLocalizedString(@"睡前", nil);
       vitaminSupplementModel.PHimageContent = @"PHVitaminSupplement";
       vitaminSupplementModel.PHcontentCode = 0042;
       vitaminSupplementModel.content = NSLocalizedString(@"补充维生素", nil);
       [PHdataArray4 addObject:vitaminSupplementModel];
    
    PHGuideModel *earlyToBedModel = [[PHGuideModel alloc] init];
    earlyToBedModel.PHperiodCode = 004;
    earlyToBedModel.PHperiodTimeString = NSLocalizedString(@"睡前", nil);
    earlyToBedModel.PHimageContent = @"PHEarlyToBed";
    earlyToBedModel.PHcontentCode = 0043;
    earlyToBedModel.content = NSLocalizedString(@"早睡", nil);
    [PHdataArray4 addObject:earlyToBedModel];
    
    [self.PHdataArray addObject:dic4];
    
    [self.collectionView reloadData];
}
- (void)PHcollectionReload{
    [self.collectionView reloadData];
    self.PHpromptView.PHnumberLabel.text = [NSString stringWithFormat:@"%ld",self.PHselectArray.count];
}
- (void)PHsureBtnClick{
//    if (self.PHselectIndex == 0) {
         if (self.PHselectArray.count < 3) {
               [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请选择3项", nil)];
             return;
           }
//    }
    BmobObject *clockProjects = [BmobObject objectWithClassName:@"PHClockProjects"];
    BmobUser *author = [BmobUser currentUser];
    [clockProjects setObject:author forKey:@"author"];
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.PHselectArray.count; i++) {
        PHGuideModel *model = self.PHselectArray[i];
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[model yy_modelToJSONObject]];
        [tempArray addObject:dic];
    }
    NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] init];
    [tempDic setObject:tempArray forKey:@"data"];
    [clockProjects saveAllWithDictionary:tempDic];
    [clockProjects saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                  [MBProgressHUD PHshowReminderText:NSLocalizedString(@"设置成功", nil)];
                if (self.PHselectIndex == 0) {
                     PHTabBarViewController *tabVC = [PHTabBarViewController PHshareInstance];
                                              tabVC.selectedIndex = 0;
                                              [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }else{
                    [self.navigationController popViewControllerAnimated:YES];
                    if (self.PHselectIndex == 1) {
                        [self.PHsuperHabitsVC.PHmainTable.mj_header beginRefreshing];
                    }
                }
            } else if (error){
                [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
}
#pragma mark - UICollectionViewDelegateFlowLayout
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    return CGSizeMake(PHWIDTH, 50);
}
// 返回cell的尺寸大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(100, 85);// 让每个cell尺寸都不一样
}
// 返回cell之间行间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    CGFloat maginX = (PHWIDTH - 3 * 100) / 4;
    return maginX * 0.7;
}
// 返回cell之间列间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    CGFloat maginX = (PHWIDTH - 3 * 100) / 4;
    return maginX;
}
// 设置上左下右边界缩进
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(20, 15, 20, 15);
}
#pragma mark - UICollectionViewDataSource
// 返回Section个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.PHdataArray.count;
}
// 返回cell个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSDictionary *dic = self.PHdataArray[section];
    NSArray *array = [dic objectForKey:@"data"];
    return array.count;
}
// 返回cell内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dic = self.PHdataArray[indexPath.section];
    NSArray *array = [dic objectForKey:@"data"];
    PHGuideModel *model = array[indexPath.row];
    PHGuideCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PHGuideCollectionViewCell" forIndexPath:indexPath];
    cell.model = model;
    return cell;
}
// 返回Header/Footer内容
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {          // Header视图
        // 从复用队列中获取HooterView
        PHGuideCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"PHGuideCollectionReusableView" forIndexPath:indexPath];
        NSDictionary *dic = self.PHdataArray[indexPath.section];
        NSString *title = [dic objectForKey:@"sectionTitle"];
        headerView.PHtitleString = title;
        // 返回HooterView
        return headerView;
    }else if ([kind isEqualToString:UICollectionElementKindSectionFooter]) {
        return nil;
    }
    return nil;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *dic = self.PHdataArray[indexPath.section];
    NSArray *array = [dic objectForKey:@"data"];
    PHGuideModel *model = array[indexPath.row];
    Boolean PHisSelect = !model.PHisSelect;
    if (PHisSelect) {
        if (self.PHselectArray.count < 3) {
    BOOL isAdd = YES;
    for (int i = 0; i < self.PHselectArray.count; i++) {
        PHGuideModel *selectModel = self.PHselectArray[i];
        if (model.PHcontentCode == selectModel.PHcontentCode) {
            isAdd = NO;
            break;
        }
    }
    if (isAdd) {
        [self.PHselectArray addObject:model];
    }
            model.PHisSelect = !model.PHisSelect;
        }
    }else{
        if (self.PHselectArray.count <= 3) {
            model.PHisSelect = !model.PHisSelect;
            BOOL isRemove = NO;
            for (int i = 0; i < self.PHselectArray.count; i++) {
                PHGuideModel *selectModel = self.PHselectArray[i];
                if (model.PHcontentCode == selectModel.PHcontentCode) {
                    isRemove = YES;
                    break;
                }
            }
            [self.PHselectArray removeObject:model];
        }else{
            
        }
    }
    [self PHcollectionReload];
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PHselectArray{
    if (!_PHselectArray) {
        _PHselectArray = [[NSMutableArray alloc] init];
    }
    return _PHselectArray;
}
- (NSMutableArray *)PHdataArray{
    if (!_PHdataArray) {
        _PHdataArray = [[NSMutableArray alloc] init];
    }
    return _PHdataArray;
}
- (PHGuidePromptView *)PHpromptView{
    if (!_PHpromptView) {
        _PHpromptView = [[PHGuidePromptView alloc] init];
        _PHpromptView.PHtitleLabel.text = NSLocalizedString(@"请先挑选3个习惯来开始", nil);
        _PHpromptView.PHnumberLabel.text = @"0";
    }
    return _PHpromptView;
}
- (UICollectionView *)collectionView{
    if (!_collectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        CGRect frame = CGRectMake(0, PHHeightNavBar, PHWIDTH, PHHEIPHT);
        _collectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:flowLayout];
        // 设置代理
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        // 其他属性
        _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        [_collectionView registerClass:[PHGuideCollectionViewCell class] forCellWithReuseIdentifier:@"PHGuideCollectionViewCell"];
        [_collectionView registerClass:[PHGuideCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"PHGuideCollectionReusableView"];
        [self.view addSubview:self.PHsureButton];
        [self.PHsureButton mas_makeConstraints:^(MASConstraintMaker *make) {        make.leading.equalTo(self.view).offset(150);
        make.trailing.equalTo(self.view).offset(-150);
            make.height.mas_equalTo(30);
            make.bottom.equalTo(self.view).offset(-PHHeightNavContentBar - 15);
        }];
        [self.view addSubview:_collectionView];
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PHpromptView.mas_bottom).offset(10);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.PHsureButton.mas_top).offset(-20);
        }];
    }
    return _collectionView;
}
- (UIButton *)PHsureButton{
    if (!_PHsureButton) {
        _PHsureButton = [[UIButton alloc] init];
        _PHsureButton.backgroundColor = PHH_Color(242, 242, 242, 1);
        _PHsureButton.layer.cornerRadius = 6.0f;
        _PHsureButton.layer.masksToBounds = YES;
        [_PHsureButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [_PHsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_PHsureButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_PHsureButton addTarget:self action:@selector(PHsureBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PHsureButton;
}
@end
