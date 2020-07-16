//
//  CDGuideViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDGuideViewController.h"
#import "CDTabBarViewController.h"
#import "CDDailyHabitsViewController.h"
#import "CDGuidePromptView.h"
#import "CDGuideCollectionReusableView.h"
#import "CDGuideCollectionViewCell.h"
#import "CDGuideModel.h"
@interface CDGuideViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, strong)NSMutableArray *CDselectArray;
@property(nonatomic, strong)NSMutableArray *CDdataArray;
@property(nonatomic, strong)CDGuidePromptView *CDpromptView;
@property(nonatomic, strong)UICollectionView *collectionView;
@property(nonatomic, strong)UIButton *CDsureButton;
@property(nonatomic, copy)NSString *CDobjectId;
@end

@implementation CDGuideViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self CD_setupNavigationItems];
    [self CDsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (self.CDselectIndex == 0) {
        self.CDbackButton.hidden = YES;
//        self.CDpromptView.hidden = NO;
    }else{
        self.CDbackButton.hidden = NO;
//        self.CDpromptView.hidden = YES;
    }
}
- (void)CD_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _CDbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_CDbackButton setImage:[UIImage imageNamed:@"btn_back"] forState:UIControlStateNormal];
        _CDbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_CDbackButton addTarget:self action:@selector(CDbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:_CDbackButton];
        self.navigationItem.leftBarButtonItem = backItem;
    }
}
- (void)CDbackButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - actions
- (void)CDsetContentView{
    [self.view addSubview:self.CDpromptView];
    [self.CDpromptView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.top.equalTo(self.view).offset(CDHeightNavBar);
        make.trailing.equalTo(self.view).offset(-30);
        make.height.mas_equalTo(40);
    }];
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setObject:NSLocalizedString(@"起床", nil) forKey:@"sectionTitle"];
    NSMutableArray *CDdataArray = [[NSMutableArray alloc] init];
    [dic setObject:CDdataArray forKey:@"data"];
    
    CDGuideModel *brushTeethModel = [[CDGuideModel alloc] init];
    brushTeethModel.CDperiodCode = 000;
    brushTeethModel.CDperiodTimeString = NSLocalizedString(@"起床", nil);
    brushTeethModel.CDimageContent = @"CDBrushTeeth";
    brushTeethModel.CDcontentCode = 0000;
    brushTeethModel.content = NSLocalizedString(@"刷牙", nil);
    [CDdataArray addObject:brushTeethModel];
    
    CDGuideModel *drinkWaterModel = [[CDGuideModel alloc] init];
    drinkWaterModel.CDperiodCode = 000;
    drinkWaterModel.CDperiodTimeString = NSLocalizedString(@"起床", nil);
    drinkWaterModel.CDimageContent = @"CDDrinkWater";
    drinkWaterModel.CDcontentCode = 0001;
    drinkWaterModel.content = NSLocalizedString(@"喝杯水", nil);
    [CDdataArray addObject:drinkWaterModel];
    
    CDGuideModel *foldQuiltModel = [[CDGuideModel alloc] init];
    foldQuiltModel.CDperiodCode = 000;
    foldQuiltModel.CDperiodTimeString = NSLocalizedString(@"起床", nil);
    foldQuiltModel.CDimageContent = @"CDFoldQuilt";
    foldQuiltModel.CDcontentCode = 0002;
    foldQuiltModel.content = NSLocalizedString(@"叠被子", nil);
    [CDdataArray addObject:foldQuiltModel];
    
    [self.CDdataArray addObject:dic];
    
    NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
    [dic1 setObject:NSLocalizedString(@"晨间", nil) forKey:@"sectionTitle"];
    NSMutableArray *CDdataArray1 = [[NSMutableArray alloc] init];
    [dic1 setObject:CDdataArray1 forKey:@"data"];
    
    CDGuideModel *runningModel = [[CDGuideModel alloc] init];
    runningModel.CDperiodCode = 001;
    runningModel.CDperiodTimeString = NSLocalizedString(@"晨间", nil);
    runningModel.CDimageContent = @"CDRunning";
    runningModel.CDcontentCode = 0010;
    runningModel.content = NSLocalizedString(@"跑步", nil);
    [CDdataArray1 addObject:runningModel];
    
    CDGuideModel *eatbreakfastModel = [[CDGuideModel alloc] init];
    eatbreakfastModel.CDperiodCode = 001;
    eatbreakfastModel.CDperiodTimeString = NSLocalizedString(@"晨间", nil);
    eatbreakfastModel.CDimageContent = @"CDEatBreakfast";
    eatbreakfastModel.CDcontentCode = 0011;
    eatbreakfastModel.content = NSLocalizedString(@"吃早餐", nil);
    [CDdataArray1 addObject:eatbreakfastModel];
    
    CDGuideModel *getUpEarlyModel = [[CDGuideModel alloc] init];
    getUpEarlyModel.CDperiodCode = 001;
    getUpEarlyModel.CDperiodTimeString = NSLocalizedString(@"晨间", nil);
    getUpEarlyModel.CDimageContent = @"CDGetUpEarly";
    getUpEarlyModel.CDcontentCode = 0012;
    getUpEarlyModel.content = NSLocalizedString(@"早起", nil);
    [CDdataArray1 addObject:getUpEarlyModel];
    
    CDGuideModel *readingNewsModel = [[CDGuideModel alloc] init];
    readingNewsModel.CDperiodCode = 001;
    readingNewsModel.CDperiodTimeString = NSLocalizedString(@"晨间", nil);
    readingNewsModel.CDimageContent = @"CDReadingNews";
    readingNewsModel.CDcontentCode = 0013;
    readingNewsModel.content = NSLocalizedString(@"阅读新闻", nil);
    [CDdataArray1 addObject:readingNewsModel];
    
    CDGuideModel *eatAnEggModel = [[CDGuideModel alloc] init];
    eatAnEggModel.CDperiodCode = 001;
    eatAnEggModel.CDperiodTimeString = NSLocalizedString(@"晨间", nil);
    eatAnEggModel.CDimageContent = @"CDEatAnEgg";
    eatAnEggModel.CDcontentCode = 0014;
    eatAnEggModel.content = NSLocalizedString(@"吃鸡蛋", nil);
    [CDdataArray1 addObject:eatAnEggModel];
    
    CDGuideModel *listenBlogModel = [[CDGuideModel alloc] init];
    listenBlogModel.CDperiodCode = 001;
    listenBlogModel.CDperiodTimeString = NSLocalizedString(@"晨间", nil);
    listenBlogModel.CDimageContent = @"CDListenBlog";
    listenBlogModel.CDcontentCode = 0015;
    listenBlogModel.content = NSLocalizedString(@"听播客", nil);
    [CDdataArray1 addObject:listenBlogModel];
    
    CDGuideModel *memorizingWordsModel = [[CDGuideModel alloc] init];
    memorizingWordsModel.CDperiodCode = 001;
    memorizingWordsModel.CDperiodTimeString = NSLocalizedString(@"晨间", nil);
    memorizingWordsModel.CDimageContent = @"CDMemorizingWords";
    memorizingWordsModel.CDcontentCode = 0016;
    memorizingWordsModel.content = NSLocalizedString(@"背单词", nil);
    [CDdataArray1 addObject:memorizingWordsModel];
    
    [self.CDdataArray addObject:dic1];

    NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
    [dic2 setObject:NSLocalizedString(@"中午", nil) forKey:@"sectionTitle"];
    NSMutableArray *CDdataArray2 = [[NSMutableArray alloc] init];
    [dic2 setObject:CDdataArray2 forKey:@"data"];
    
    CDGuideModel *inSportsModel = [[CDGuideModel alloc] init];
    inSportsModel.CDperiodCode = 002;
    inSportsModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    inSportsModel.CDimageContent = @"CDInSports";
    inSportsModel.CDcontentCode = 0020;
    inSportsModel.content = NSLocalizedString(@"眼操", nil);
    [CDdataArray2 addObject:inSportsModel];
    
    CDGuideModel *eatFruitModel = [[CDGuideModel alloc] init];
    eatFruitModel.CDperiodCode = 002;
    eatFruitModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    eatFruitModel.CDimageContent = @"CDEatFruit";
    eatFruitModel.CDcontentCode = 0021;
    eatFruitModel.content = NSLocalizedString(@"吃水果", nil);
    [CDdataArray2 addObject:eatFruitModel];
    
    CDGuideModel *chargeAccountModel = [[CDGuideModel alloc] init];
    chargeAccountModel.CDperiodCode = 002;
    chargeAccountModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    chargeAccountModel.CDimageContent = @"CDChargeAccount";
    chargeAccountModel.CDcontentCode = 0022;
    chargeAccountModel.content = NSLocalizedString(@"记账", nil);
    [CDdataArray2 addObject:chargeAccountModel];
    
    CDGuideModel *readingModel = [[CDGuideModel alloc] init];
    readingModel.CDperiodCode = 002;
    readingModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    readingModel.CDimageContent = @"CDReading";
    readingModel.CDcontentCode = 0023;
    readingModel.content = NSLocalizedString(@"阅读", nil);
    [CDdataArray2 addObject:readingModel];
    
    CDGuideModel *cleanRoomModel = [[CDGuideModel alloc] init];
    cleanRoomModel.CDperiodCode = 002;
    cleanRoomModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    cleanRoomModel.CDimageContent = @"CDCleanRoom";
    cleanRoomModel.CDcontentCode = 0024;
    cleanRoomModel.content = NSLocalizedString(@"打扫", nil);
    [CDdataArray2 addObject:cleanRoomModel];
    
    CDGuideModel *waterFlowersModel = [[CDGuideModel alloc] init];
    waterFlowersModel.CDperiodCode = 002;
    waterFlowersModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    waterFlowersModel.CDimageContent = @"CDWaterFlowers";
    waterFlowersModel.CDcontentCode = 0025;
    waterFlowersModel.content = NSLocalizedString(@"浇花", nil);
    [CDdataArray2 addObject:waterFlowersModel];
    
    CDGuideModel *swimmingModel = [[CDGuideModel alloc] init];
    swimmingModel.CDperiodCode = 002;
    swimmingModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    swimmingModel.CDimageContent = @"CDSwimming";
    swimmingModel.CDcontentCode = 0026;
    swimmingModel.content = NSLocalizedString(@"游泳", nil);
    [CDdataArray2 addObject:swimmingModel];
    
    CDGuideModel *exerciseModel = [[CDGuideModel alloc] init];
    exerciseModel.CDperiodCode = 002;
    exerciseModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    exerciseModel.CDimageContent = @"CDExercise";
    exerciseModel.CDcontentCode = 0027;
    exerciseModel.content = NSLocalizedString(@"锻炼", nil);
    [CDdataArray2 addObject:exerciseModel];
    
    CDGuideModel *doTheHouseworkModel = [[CDGuideModel alloc] init];
    doTheHouseworkModel.CDperiodCode = 002;
    doTheHouseworkModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    doTheHouseworkModel.CDimageContent = @"CDDoTheHousework";
    doTheHouseworkModel.CDcontentCode = 00271;
    doTheHouseworkModel.content = NSLocalizedString(@"做家务", nil);
    [CDdataArray2 addObject:doTheHouseworkModel];
    
    [self.CDdataArray addObject:dic2];
    
    NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
    [dic3 setObject:NSLocalizedString(@"晚间", nil) forKey:@"sectionTitle"];
    NSMutableArray *CDdataArray3 = [[NSMutableArray alloc] init];
    [dic3 setObject:CDdataArray3 forKey:@"data"];
    
    CDGuideModel *contactWithFriendsModel = [[CDGuideModel alloc] init];
    contactWithFriendsModel.CDperiodCode = 003;
    contactWithFriendsModel.CDperiodTimeString = NSLocalizedString(@"晚间", nil);
    contactWithFriendsModel.CDimageContent = @"CDContactWithFriends";
    contactWithFriendsModel.CDcontentCode = 0030;
    contactWithFriendsModel.content = NSLocalizedString(@"联系朋友", nil);
    [CDdataArray3 addObject:contactWithFriendsModel];
    
    CDGuideModel *takeMedicineModel = [[CDGuideModel alloc] init];
    takeMedicineModel.CDperiodCode = 003;
    takeMedicineModel.CDperiodTimeString = NSLocalizedString(@"晚间", nil);
    takeMedicineModel.CDimageContent = @"CDTakeMedicine";
    takeMedicineModel.CDcontentCode = 0031;
    takeMedicineModel.content = NSLocalizedString(@"吃药", nil);
    [CDdataArray3 addObject:takeMedicineModel];
    
    CDGuideModel *pushUpsModel = [[CDGuideModel alloc] init];
    pushUpsModel.CDperiodCode = 003;
    pushUpsModel.CDperiodTimeString = NSLocalizedString(@"晚间", nil);
    pushUpsModel.CDimageContent = @"CDPushUps";
    pushUpsModel.CDcontentCode = 0032;
    pushUpsModel.content = NSLocalizedString(@"俯卧撑", nil);
    [CDdataArray3 addObject:pushUpsModel];
    
    CDGuideModel *walkTheDogModel = [[CDGuideModel alloc] init];
    walkTheDogModel.CDperiodCode = 003;
    walkTheDogModel.CDperiodTimeString = NSLocalizedString(@"晚间", nil);
    walkTheDogModel.CDimageContent = @"CDWalkTheDog";
    walkTheDogModel.CDcontentCode = 0033;
    walkTheDogModel.content = NSLocalizedString(@"遛狗", nil);
    [CDdataArray3 addObject:walkTheDogModel];
    
    CDGuideModel *takeAwalkAfterDinnerModel = [[CDGuideModel alloc] init];
    takeAwalkAfterDinnerModel.CDperiodCode = 003;
    takeAwalkAfterDinnerModel.CDperiodTimeString = NSLocalizedString(@"晚间", nil);
    takeAwalkAfterDinnerModel.CDimageContent = @"CDTakeAwalkAfterDinner";
    takeAwalkAfterDinnerModel.CDcontentCode = 0034;
    takeAwalkAfterDinnerModel.content = NSLocalizedString(@"散步", nil);
    [CDdataArray3 addObject:takeAwalkAfterDinnerModel];
    
    CDGuideModel *rideABikeModel = [[CDGuideModel alloc] init];
    rideABikeModel.CDperiodCode = 003;
    rideABikeModel.CDperiodTimeString = NSLocalizedString(@"晚间", nil);
    rideABikeModel.CDimageContent = @"CDRideABike";
    rideABikeModel.CDcontentCode = 0035;
    rideABikeModel.content = NSLocalizedString(@"骑单车", nil);
    [CDdataArray3 addObject:rideABikeModel];
    
    CDGuideModel *watchAMovieModel = [[CDGuideModel alloc] init];
    watchAMovieModel.CDperiodCode = 003;
    watchAMovieModel.CDperiodTimeString = NSLocalizedString(@"晚间", nil);
    watchAMovieModel.CDimageContent = @"CDWatchAMovie";
    watchAMovieModel.CDcontentCode = 0036;
    watchAMovieModel.content = NSLocalizedString(@"看电影", nil);
    [CDdataArray3 addObject:watchAMovieModel];
    
    [self.CDdataArray addObject:dic3];

    NSMutableDictionary *dic4 = [[NSMutableDictionary alloc] init];
    [dic4 setObject:NSLocalizedString(@"睡前", nil) forKey:@"sectionTitle"];
    NSMutableArray *CDdataArray4 = [[NSMutableArray alloc] init];
    [dic4 setObject:CDdataArray4 forKey:@"data"];
    
    CDGuideModel *reflectOnTheirModel = [[CDGuideModel alloc] init];
    reflectOnTheirModel.CDperiodCode = 004;
    reflectOnTheirModel.CDperiodTimeString = NSLocalizedString(@"睡前", nil);
    reflectOnTheirModel.CDimageContent = @"CDReflectOnTheir";
    reflectOnTheirModel.CDcontentCode = 0040;
    reflectOnTheirModel.content = NSLocalizedString(@"反省", nil);
    [CDdataArray4 addObject:reflectOnTheirModel];
    
    CDGuideModel *writeADiaryModel = [[CDGuideModel alloc] init];
    writeADiaryModel.CDperiodCode = 004;
    writeADiaryModel.CDperiodTimeString = NSLocalizedString(@"睡前", nil);
    writeADiaryModel.CDimageContent = @"CDWriteADiary";
    writeADiaryModel.CDcontentCode = 0041;
    writeADiaryModel.content = NSLocalizedString(@"写日记", nil);
    [CDdataArray4 addObject:writeADiaryModel];
    
    CDGuideModel *vitaminSupplementModel = [[CDGuideModel alloc] init];
       vitaminSupplementModel.CDperiodCode = 004;
       vitaminSupplementModel.CDperiodTimeString = NSLocalizedString(@"睡前", nil);
       vitaminSupplementModel.CDimageContent = @"CDVitaminSupplement";
       vitaminSupplementModel.CDcontentCode = 0042;
       vitaminSupplementModel.content = NSLocalizedString(@"补充维生素", nil);
       [CDdataArray4 addObject:vitaminSupplementModel];
    
    CDGuideModel *earlyToBedModel = [[CDGuideModel alloc] init];
    earlyToBedModel.CDperiodCode = 004;
    earlyToBedModel.CDperiodTimeString = NSLocalizedString(@"睡前", nil);
    earlyToBedModel.CDimageContent = @"CDEarlyToBed";
    earlyToBedModel.CDcontentCode = 0043;
    earlyToBedModel.content = NSLocalizedString(@"早睡", nil);
    [CDdataArray4 addObject:earlyToBedModel];
    
    [self.CDdataArray addObject:dic4];
    
    [self.collectionView reloadData];
}
- (void)CDcollectionReload{
    [self.collectionView reloadData];
    self.CDpromptView.CDnumberLabel.text = [NSString stringWithFormat:@"%ld",self.CDselectArray.count];
}
- (void)CDsureBtnClick{
    if (self.CDselectArray.count < 3) {
        [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请选择3项", nil)];
        return;
    }
    AVObject *clockProjects = [AVObject objectWithClassName:@"CDClockProjects"];
    AVUser *author = [AVUser currentUser];
    [clockProjects setObject:author forKey:@"author"];
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.CDselectArray.count; i++) {
        CDGuideModel *model = self.CDselectArray[i];
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[model yy_modelToJSONObject]];
        [tempArray addObject:dic];
    }
    NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] init];
    [tempDic setObject:tempArray forKey:@"data"];
    for (NSString *key in tempDic.allKeys) {
        [clockProjects setObject:[tempDic objectForKey:key]  forKey:key];
    }
    [clockProjects saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                  [MBProgressHUD CDshowReminderText:NSLocalizedString(@"设置成功", nil)];
                if (self.CDselectIndex == 0) {
                     CDTabBarViewController *tabVC = [CDTabBarViewController CDshareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }else{
                    [self.navigationController popViewControllerAnimated:YES];
                    if (self.CDselectIndex == 1) {
                        [self.CDsuperHabitsVC.CDmainTable.mj_header beginRefreshing];
                    }
                }
            } else if (error){
                [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
}
#pragma mark - UICollectionViewDelegateFlowLayout
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    return CGSizeMake(CDWIDTH, 50);
}
// 返回cell的尺寸大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(100, 85);// 让每个cell尺寸都不一样
}
// 返回cell之间行间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    CGFloat maginX = (CDWIDTH - 3 * 100) / 4;
    return maginX * 0.7;
}
// 返回cell之间列间隙
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    CGFloat maginX = (CDWIDTH - 3 * 100) / 4;
    return maginX;
}
// 设置上左下右边界缩进
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(20, 15, 20, 15);
}
#pragma mark - UICollectionViewDataSource
// 返回Section个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.CDdataArray.count;
}
// 返回cell个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSDictionary *dic = self.CDdataArray[section];
    NSArray *array = [dic objectForKey:@"data"];
    return array.count;
}
// 返回cell内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dic = self.CDdataArray[indexPath.section];
    NSArray *array = [dic objectForKey:@"data"];
    CDGuideModel *model = array[indexPath.row];
    CDGuideCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CDGuideCollectionViewCell" forIndexPath:indexPath];
    cell.model = model;
    return cell;
}
// 返回Header/Footer内容
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {          // Header视图
        // 从复用队列中获取HooterView
        CDGuideCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"CDGuideCollectionReusableView" forIndexPath:indexPath];
        NSDictionary *dic = self.CDdataArray[indexPath.section];
        NSString *title = [dic objectForKey:@"sectionTitle"];
        headerView.CDtitleString = title;
        // 返回HooterView
        return headerView;
    }else if ([kind isEqualToString:UICollectionElementKindSectionFooter]) {
        return nil;
    }
    return nil;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *dic = self.CDdataArray[indexPath.section];
    NSArray *array = [dic objectForKey:@"data"];
    CDGuideModel *model = array[indexPath.row];
    Boolean CDisSelect = !model.CDisSelect;
    if (CDisSelect) {
        if (self.CDselectArray.count < 3) {
    BOOL isAdd = YES;
    for (int i = 0; i < self.CDselectArray.count; i++) {
        CDGuideModel *selectModel = self.CDselectArray[i];
        if (model.CDcontentCode == selectModel.CDcontentCode) {
            isAdd = NO;
            break;
        }
    }
    if (isAdd) {
        [self.CDselectArray addObject:model];
    }
            model.CDisSelect = !model.CDisSelect;
        }
    }else{
        if (self.CDselectArray.count <= 3) {
            model.CDisSelect = !model.CDisSelect;
            BOOL isRemove = NO;
            for (int i = 0; i < self.CDselectArray.count; i++) {
                CDGuideModel *selectModel = self.CDselectArray[i];
                if (model.CDcontentCode == selectModel.CDcontentCode) {
                    isRemove = YES;
                    break;
                }
            }
            [self.CDselectArray removeObject:model];
        }else{
            
        }
    }
    [self CDcollectionReload];
}
#pragma mark - 属性懒加载
- (NSMutableArray *)CDselectArray{
    if (!_CDselectArray) {
        _CDselectArray = [[NSMutableArray alloc] init];
    }
    return _CDselectArray;
}
- (NSMutableArray *)CDdataArray{
    if (!_CDdataArray) {
        _CDdataArray = [[NSMutableArray alloc] init];
    }
    return _CDdataArray;
}
- (CDGuidePromptView *)CDpromptView{
    if (!_CDpromptView) {
        _CDpromptView = [[CDGuidePromptView alloc] init];
        _CDpromptView.CDtitleLabel.text = NSLocalizedString(@"请先挑选3个习惯来开始", nil);
        _CDpromptView.CDnumberLabel.text = @"0";
    }
    return _CDpromptView;
}
- (UICollectionView *)collectionView{
    if (!_collectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        CGRect frame = CGRectMake(0, CDHeightNavBar, CDWIDTH, CDHEICDT);
        _collectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:flowLayout];
        // 设置代理
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        // 其他属性
        _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        [_collectionView registerClass:[CDGuideCollectionViewCell class] forCellWithReuseIdentifier:@"CDGuideCollectionViewCell"];
        [_collectionView registerClass:[CDGuideCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"CDGuideCollectionReusableView"];
        [self.view addSubview:self.CDsureButton];
        [self.CDsureButton mas_makeConstraints:^(MASConstraintMaker *make) {        make.leading.equalTo(self.view).offset(150);
        make.trailing.equalTo(self.view).offset(-150);
            make.height.mas_equalTo(30);
            make.bottom.equalTo(self.view).offset(-CDHeightNavContentBar - 15);
        }];
        [self.view addSubview:_collectionView];
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.CDpromptView.mas_bottom).offset(10);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.CDsureButton.mas_top).offset(-20);
        }];
    }
    return _collectionView;
}
- (UIButton *)CDsureButton{
    if (!_CDsureButton) {
        _CDsureButton = [[UIButton alloc] init];
        _CDsureButton.backgroundColor = CDH_Color(242, 242, 242, 1);
        _CDsureButton.layer.cornerRadius = 6.0f;
        _CDsureButton.layer.masksToBounds = YES;
        [_CDsureButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [_CDsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_CDsureButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_CDsureButton addTarget:self action:@selector(CDsureBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CDsureButton;
}
@end
