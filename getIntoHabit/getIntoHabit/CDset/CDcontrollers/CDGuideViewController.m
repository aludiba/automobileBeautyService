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
@property(nonatomic, strong)UICollectionView *CDcollectionView;
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
    }else{
        self.CDbackButton.hidden = NO;
    }
}
- (void)CD_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _CDbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_CDbackButton setImage:[UIImage imageNamed:@"CDbtn_back"] forState:UIControlStateNormal];
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
    self.view.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:self.CDpromptView];
    [self.CDpromptView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.top.equalTo(self.view).offset(CDHeightNavBar);
        make.trailing.equalTo(self.view).offset(-30);
        make.height.mas_equalTo(40);
    }];
    
    NSMutableDictionary *CDdic = [[NSMutableDictionary alloc] init];
    [CDdic setObject:NSLocalizedString(@"起床", nil) forKey:@"sectionTitle"];
    NSMutableArray *CDdataArray = [[NSMutableArray alloc] init];
    [CDdic setObject:CDdataArray forKey:@"data"];
    
    CDGuideModel *CDbrushTeethModel = [[CDGuideModel alloc] init];
    CDbrushTeethModel.CDperiodCode = 000;
    CDbrushTeethModel.CDperiodTimeString = NSLocalizedString(@"起床", nil);
    CDbrushTeethModel.CDimageContent = @"CDBrushTeeth";
    CDbrushTeethModel.CDcontentCode = 0000;
    CDbrushTeethModel.content = NSLocalizedString(@"刷牙", nil);
    [CDdataArray addObject:CDbrushTeethModel];
    
    CDGuideModel *CDdrinkWaterModel = [[CDGuideModel alloc] init];
    CDdrinkWaterModel.CDperiodCode = 000;
    CDdrinkWaterModel.CDperiodTimeString = NSLocalizedString(@"起床", nil);
    CDdrinkWaterModel.CDimageContent = @"CDDrinkWater";
    CDdrinkWaterModel.CDcontentCode = 0001;
    CDdrinkWaterModel.content = NSLocalizedString(@"喝杯水", nil);
    [CDdataArray addObject:CDdrinkWaterModel];
    
    CDGuideModel *CDfoldQuiltModel = [[CDGuideModel alloc] init];
    CDfoldQuiltModel.CDperiodCode = 000;
    CDfoldQuiltModel.CDperiodTimeString = NSLocalizedString(@"起床", nil);
    CDfoldQuiltModel.CDimageContent = @"CDFoldQuilt";
    CDfoldQuiltModel.CDcontentCode = 0002;
    CDfoldQuiltModel.content = NSLocalizedString(@"叠被子", nil);
    [CDdataArray addObject:CDfoldQuiltModel];
    
    [self.CDdataArray addObject:CDdic];
    
    NSMutableDictionary *CDdic1 = [[NSMutableDictionary alloc] init];
    [CDdic1 setObject:NSLocalizedString(@"晨间", nil) forKey:@"sectionTitle"];
    NSMutableArray *CDdataArray1 = [[NSMutableArray alloc] init];
    [CDdic1 setObject:CDdataArray1 forKey:@"data"];
    
    CDGuideModel *CDrunningModel = [[CDGuideModel alloc] init];
    CDrunningModel.CDperiodCode = 001;
    CDrunningModel.CDperiodTimeString = NSLocalizedString(@"晨间", nil);
    CDrunningModel.CDimageContent = @"CDRunning";
    CDrunningModel.CDcontentCode = 0010;
    CDrunningModel.content = NSLocalizedString(@"跑步", nil);
    [CDdataArray1 addObject:CDrunningModel];
    
    CDGuideModel *CDeatbreakfastModel = [[CDGuideModel alloc] init];
    CDeatbreakfastModel.CDperiodCode = 001;
    CDeatbreakfastModel.CDperiodTimeString = NSLocalizedString(@"晨间", nil);
    CDeatbreakfastModel.CDimageContent = @"CDEatBreakfast";
    CDeatbreakfastModel.CDcontentCode = 0011;
    CDeatbreakfastModel.content = NSLocalizedString(@"吃早餐", nil);
    [CDdataArray1 addObject:CDeatbreakfastModel];
    
    CDGuideModel *CDgetUpEarlyModel = [[CDGuideModel alloc] init];
    CDgetUpEarlyModel.CDperiodCode = 001;
    CDgetUpEarlyModel.CDperiodTimeString = NSLocalizedString(@"晨间", nil);
    CDgetUpEarlyModel.CDimageContent = @"CDGetUpEarly";
    CDgetUpEarlyModel.CDcontentCode = 0012;
    CDgetUpEarlyModel.content = NSLocalizedString(@"早起", nil);
    [CDdataArray1 addObject:CDgetUpEarlyModel];
    
    CDGuideModel *CDreadingNewsModel = [[CDGuideModel alloc] init];
    CDreadingNewsModel.CDperiodCode = 001;
    CDreadingNewsModel.CDperiodTimeString = NSLocalizedString(@"晨间", nil);
    CDreadingNewsModel.CDimageContent = @"CDReadingNews";
    CDreadingNewsModel.CDcontentCode = 0013;
    CDreadingNewsModel.content = NSLocalizedString(@"阅读新闻", nil);
    [CDdataArray1 addObject:CDreadingNewsModel];
    
    CDGuideModel *CDeatAnEggModel = [[CDGuideModel alloc] init];
    CDeatAnEggModel.CDperiodCode = 001;
    CDeatAnEggModel.CDperiodTimeString = NSLocalizedString(@"晨间", nil);
    CDeatAnEggModel.CDimageContent = @"CDEatAnEgg";
    CDeatAnEggModel.CDcontentCode = 0014;
    CDeatAnEggModel.content = NSLocalizedString(@"吃鸡蛋", nil);
    [CDdataArray1 addObject:CDeatAnEggModel];
    
    CDGuideModel *CDlistenBlogModel = [[CDGuideModel alloc] init];
    CDlistenBlogModel.CDperiodCode = 001;
    CDlistenBlogModel.CDperiodTimeString = NSLocalizedString(@"晨间", nil);
    CDlistenBlogModel.CDimageContent = @"CDListenBlog";
    CDlistenBlogModel.CDcontentCode = 0015;
    CDlistenBlogModel.content = NSLocalizedString(@"听播客", nil);
    [CDdataArray1 addObject:CDlistenBlogModel];
    
    CDGuideModel *CDmemorizingWordsModel = [[CDGuideModel alloc] init];
    CDmemorizingWordsModel.CDperiodCode = 001;
    CDmemorizingWordsModel.CDperiodTimeString = NSLocalizedString(@"晨间", nil);
    CDmemorizingWordsModel.CDimageContent = @"CDMemorizingWords";
    CDmemorizingWordsModel.CDcontentCode = 0016;
    CDmemorizingWordsModel.content = NSLocalizedString(@"背单词", nil);
    [CDdataArray1 addObject:CDmemorizingWordsModel];
    
    [self.CDdataArray addObject:CDdic1];

    NSMutableDictionary *CDdic2 = [[NSMutableDictionary alloc] init];
    [CDdic2 setObject:NSLocalizedString(@"中午", nil) forKey:@"sectionTitle"];
    NSMutableArray *CDdataArray2 = [[NSMutableArray alloc] init];
    [CDdic2 setObject:CDdataArray2 forKey:@"data"];
    
    CDGuideModel *CDinSportsModel = [[CDGuideModel alloc] init];
    CDinSportsModel.CDperiodCode = 002;
    CDinSportsModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    CDinSportsModel.CDimageContent = @"CDInSports";
    CDinSportsModel.CDcontentCode = 0020;
    CDinSportsModel.content = NSLocalizedString(@"眼操", nil);
    [CDdataArray2 addObject:CDinSportsModel];
    
    CDGuideModel *CDeatFruitModel = [[CDGuideModel alloc] init];
    CDeatFruitModel.CDperiodCode = 002;
    CDeatFruitModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    CDeatFruitModel.CDimageContent = @"CDEatFruit";
    CDeatFruitModel.CDcontentCode = 0021;
    CDeatFruitModel.content = NSLocalizedString(@"吃水果", nil);
    [CDdataArray2 addObject:CDeatFruitModel];
    
    CDGuideModel *CDchargeAccountModel = [[CDGuideModel alloc] init];
    CDchargeAccountModel.CDperiodCode = 002;
    CDchargeAccountModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    CDchargeAccountModel.CDimageContent = @"CDChargeAccount";
    CDchargeAccountModel.CDcontentCode = 0022;
    CDchargeAccountModel.content = NSLocalizedString(@"记账", nil);
    [CDdataArray2 addObject:CDchargeAccountModel];
    
    CDGuideModel *CDreadingModel = [[CDGuideModel alloc] init];
    CDreadingModel.CDperiodCode = 002;
    CDreadingModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    CDreadingModel.CDimageContent = @"CDReading";
    CDreadingModel.CDcontentCode = 0023;
    CDreadingModel.content = NSLocalizedString(@"阅读", nil);
    [CDdataArray2 addObject:CDreadingModel];
    
    CDGuideModel *CDcleanRoomModel = [[CDGuideModel alloc] init];
    CDcleanRoomModel.CDperiodCode = 002;
    CDcleanRoomModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    CDcleanRoomModel.CDimageContent = @"CDCleanRoom";
    CDcleanRoomModel.CDcontentCode = 0024;
    CDcleanRoomModel.content = NSLocalizedString(@"打扫", nil);
    [CDdataArray2 addObject:CDcleanRoomModel];
    
    CDGuideModel *CDwaterFlowersModel = [[CDGuideModel alloc] init];
    CDwaterFlowersModel.CDperiodCode = 002;
    CDwaterFlowersModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    CDwaterFlowersModel.CDimageContent = @"CDWaterFlowers";
    CDwaterFlowersModel.CDcontentCode = 0025;
    CDwaterFlowersModel.content = NSLocalizedString(@"浇花", nil);
    [CDdataArray2 addObject:CDwaterFlowersModel];
    
    CDGuideModel *CDswimmingModel = [[CDGuideModel alloc] init];
    CDswimmingModel.CDperiodCode = 002;
    CDswimmingModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    CDswimmingModel.CDimageContent = @"CDSwimming";
    CDswimmingModel.CDcontentCode = 0026;
    CDswimmingModel.content = NSLocalizedString(@"游泳", nil);
    [CDdataArray2 addObject:CDswimmingModel];
    
    CDGuideModel *CDexerciseModel = [[CDGuideModel alloc] init];
    CDexerciseModel.CDperiodCode = 002;
    CDexerciseModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    CDexerciseModel.CDimageContent = @"CDExercise";
    CDexerciseModel.CDcontentCode = 0027;
    CDexerciseModel.content = NSLocalizedString(@"锻炼", nil);
    [CDdataArray2 addObject:CDexerciseModel];
    
    CDGuideModel *CDdoTheHouseworkModel = [[CDGuideModel alloc] init];
    CDdoTheHouseworkModel.CDperiodCode = 002;
    CDdoTheHouseworkModel.CDperiodTimeString = NSLocalizedString(@"中午", nil);
    CDdoTheHouseworkModel.CDimageContent = @"CDDoTheHousework";
    CDdoTheHouseworkModel.CDcontentCode = 00271;
    CDdoTheHouseworkModel.content = NSLocalizedString(@"做家务", nil);
    [CDdataArray2 addObject:CDdoTheHouseworkModel];
    
    [self.CDdataArray addObject:CDdic2];
    
    NSMutableDictionary *CDdic3 = [[NSMutableDictionary alloc] init];
    [CDdic3 setObject:NSLocalizedString(@"晚间", nil) forKey:@"sectionTitle"];
    NSMutableArray *CDdataArray3 = [[NSMutableArray alloc] init];
    [CDdic3 setObject:CDdataArray3 forKey:@"data"];
    
    CDGuideModel *CDcontactWithFriendsModel = [[CDGuideModel alloc] init];
    CDcontactWithFriendsModel.CDperiodCode = 003;
    CDcontactWithFriendsModel.CDperiodTimeString = NSLocalizedString(@"晚间", nil);
    CDcontactWithFriendsModel.CDimageContent = @"CDContactWithFriends";
    CDcontactWithFriendsModel.CDcontentCode = 0030;
    CDcontactWithFriendsModel.content = NSLocalizedString(@"联系朋友", nil);
    [CDdataArray3 addObject:CDcontactWithFriendsModel];
    
    CDGuideModel *CDtakeMedicineModel = [[CDGuideModel alloc] init];
    CDtakeMedicineModel.CDperiodCode = 003;
    CDtakeMedicineModel.CDperiodTimeString = NSLocalizedString(@"晚间", nil);
    CDtakeMedicineModel.CDimageContent = @"CDTakeMedicine";
    CDtakeMedicineModel.CDcontentCode = 0031;
    CDtakeMedicineModel.content = NSLocalizedString(@"吃药", nil);
    [CDdataArray3 addObject:CDtakeMedicineModel];
    
    CDGuideModel *CDpushUpsModel = [[CDGuideModel alloc] init];
    CDpushUpsModel.CDperiodCode = 003;
    CDpushUpsModel.CDperiodTimeString = NSLocalizedString(@"晚间", nil);
    CDpushUpsModel.CDimageContent = @"CDPushUps";
    CDpushUpsModel.CDcontentCode = 0032;
    CDpushUpsModel.content = NSLocalizedString(@"俯卧撑", nil);
    [CDdataArray3 addObject:CDpushUpsModel];
    
    CDGuideModel *CDwalkTheDogModel = [[CDGuideModel alloc] init];
    CDwalkTheDogModel.CDperiodCode = 003;
    CDwalkTheDogModel.CDperiodTimeString = NSLocalizedString(@"晚间", nil);
    CDwalkTheDogModel.CDimageContent = @"CDWalkTheDog";
    CDwalkTheDogModel.CDcontentCode = 0033;
    CDwalkTheDogModel.content = NSLocalizedString(@"遛狗", nil);
    [CDdataArray3 addObject:CDwalkTheDogModel];
    
    CDGuideModel *CDtakeAwalkAfterDinnerModel = [[CDGuideModel alloc] init];
    CDtakeAwalkAfterDinnerModel.CDperiodCode = 003;
    CDtakeAwalkAfterDinnerModel.CDperiodTimeString = NSLocalizedString(@"晚间", nil);
    CDtakeAwalkAfterDinnerModel.CDimageContent = @"CDTakeAwalkAfterDinner";
    CDtakeAwalkAfterDinnerModel.CDcontentCode = 0034;
    CDtakeAwalkAfterDinnerModel.content = NSLocalizedString(@"散步", nil);
    [CDdataArray3 addObject:CDtakeAwalkAfterDinnerModel];
    
    CDGuideModel *CDrideABikeModel = [[CDGuideModel alloc] init];
    CDrideABikeModel.CDperiodCode = 003;
    CDrideABikeModel.CDperiodTimeString = NSLocalizedString(@"晚间", nil);
    CDrideABikeModel.CDimageContent = @"CDRideABike";
    CDrideABikeModel.CDcontentCode = 0035;
    CDrideABikeModel.content = NSLocalizedString(@"骑单车", nil);
    [CDdataArray3 addObject:CDrideABikeModel];
    
    CDGuideModel *CDwatchAMovieModel = [[CDGuideModel alloc] init];
    CDwatchAMovieModel.CDperiodCode = 003;
    CDwatchAMovieModel.CDperiodTimeString = NSLocalizedString(@"晚间", nil);
    CDwatchAMovieModel.CDimageContent = @"CDWatchAMovie";
    CDwatchAMovieModel.CDcontentCode = 0036;
    CDwatchAMovieModel.content = NSLocalizedString(@"看电影", nil);
    [CDdataArray3 addObject:CDwatchAMovieModel];
    
    [self.CDdataArray addObject:CDdic3];

    NSMutableDictionary *CDdic4 = [[NSMutableDictionary alloc] init];
    [CDdic4 setObject:NSLocalizedString(@"睡前", nil) forKey:@"sectionTitle"];
    NSMutableArray *CDdataArray4 = [[NSMutableArray alloc] init];
    [CDdic4 setObject:CDdataArray4 forKey:@"data"];
    
    CDGuideModel *CDreflectOnTheirModel = [[CDGuideModel alloc] init];
    CDreflectOnTheirModel.CDperiodCode = 004;
    CDreflectOnTheirModel.CDperiodTimeString = NSLocalizedString(@"睡前", nil);
    CDreflectOnTheirModel.CDimageContent = @"CDReflectOnTheir";
    CDreflectOnTheirModel.CDcontentCode = 0040;
    CDreflectOnTheirModel.content = NSLocalizedString(@"反省", nil);
    [CDdataArray4 addObject:CDreflectOnTheirModel];
    
    CDGuideModel *CDwriteADiaryModel = [[CDGuideModel alloc] init];
    CDwriteADiaryModel.CDperiodCode = 004;
    CDwriteADiaryModel.CDperiodTimeString = NSLocalizedString(@"睡前", nil);
    CDwriteADiaryModel.CDimageContent = @"CDWriteADiary";
    CDwriteADiaryModel.CDcontentCode = 0041;
    CDwriteADiaryModel.content = NSLocalizedString(@"写日记", nil);
    [CDdataArray4 addObject:CDwriteADiaryModel];
    
    CDGuideModel *CDvitaminSupplementModel = [[CDGuideModel alloc] init];
       CDvitaminSupplementModel.CDperiodCode = 004;
       CDvitaminSupplementModel.CDperiodTimeString = NSLocalizedString(@"睡前", nil);
       CDvitaminSupplementModel.CDimageContent = @"CDVitaminSupplement";
       CDvitaminSupplementModel.CDcontentCode = 0042;
       CDvitaminSupplementModel.content = NSLocalizedString(@"补充维生素", nil);
       [CDdataArray4 addObject:CDvitaminSupplementModel];
    
    CDGuideModel *CDearlyToBedModel = [[CDGuideModel alloc] init];
    CDearlyToBedModel.CDperiodCode = 004;
    CDearlyToBedModel.CDperiodTimeString = NSLocalizedString(@"睡前", nil);
    CDearlyToBedModel.CDimageContent = @"CDEarlyToBed";
    CDearlyToBedModel.CDcontentCode = 0043;
    CDearlyToBedModel.content = NSLocalizedString(@"早睡", nil);
    [CDdataArray4 addObject:CDearlyToBedModel];
    
    [self.CDdataArray addObject:CDdic4];
    
    [self.CDcollectionView reloadData];
}
- (void)CDcollectionReload{
    [self.CDcollectionView reloadData];
    self.CDpromptView.CDnumberLabel.text = [NSString stringWithFormat:@"%ld",self.CDselectArray.count];
}
- (void)CDsureBtnClick{
    if (self.CDselectArray.count < 3) {
        [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请选择3项", nil)];
        return;
    }
    AVObject *CDclockProjects = [AVObject objectWithClassName:@"CDClockProjects"];
    AVUser *CDauthor = [AVUser currentUser];
    [CDclockProjects setObject:CDauthor forKey:@"author"];
    NSMutableArray *CDtempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.CDselectArray.count; i++) {
        CDGuideModel *CDmodel = self.CDselectArray[i];
        NSMutableDictionary *CDdic = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[CDmodel yy_modelToJSONObject]];
        [CDtempArray addObject:CDdic];
    }
    NSMutableDictionary *CDtempDic = [[NSMutableDictionary alloc] init];
    [CDtempDic setObject:CDtempArray forKey:@"data"];
    for (NSString *CDkey in CDtempDic.allKeys) {
        [CDclockProjects setObject:[CDtempDic objectForKey:CDkey]  forKey:CDkey];
    }
    [CDclockProjects saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
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
    NSDictionary *CDdic = self.CDdataArray[section];
    NSArray *CDarray = [CDdic objectForKey:@"data"];
    return CDarray.count;
}
// 返回cell内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *CDdic = self.CDdataArray[indexPath.section];
    NSArray *CDarray = [CDdic objectForKey:@"data"];
    CDGuideModel *CDmodel = CDarray[indexPath.row];
    CDGuideCollectionViewCell *CDcell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CDGuideCollectionViewCell" forIndexPath:indexPath];
    CDcell.model = CDmodel;
    return CDcell;
}
// 返回Header/Footer内容
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {          // Header视图
        // 从复用队列中获取HeaderView
        CDGuideCollectionReusableView *CDheaderView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"CDGuideCollectionReusableView" forIndexPath:indexPath];
        NSDictionary *CDdic = self.CDdataArray[indexPath.section];
        NSString *CDtitle = [CDdic objectForKey:@"sectionTitle"];
        CDheaderView.CDtitleString = CDtitle;
        // 返回HeaderView
        return CDheaderView;
    }else if ([kind isEqualToString:UICollectionElementKindSectionFooter]) {
        return nil;
    }
    return nil;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *CDdic = self.CDdataArray[indexPath.section];
    NSArray *CDarray = [CDdic objectForKey:@"data"];
    CDGuideModel *CDmodel = CDarray[indexPath.row];
    Boolean CDisSelect = !CDmodel.CDisSelect;
    if (CDisSelect) {
        if (self.CDselectArray.count < 3) {
    BOOL CDisAdd = YES;
    for (int i = 0; i < self.CDselectArray.count; i++) {
        CDGuideModel *CDselectModel = self.CDselectArray[i];
        if (CDmodel.CDcontentCode == CDselectModel.CDcontentCode) {
            CDisAdd = NO;
            break;
        }
    }
    if (CDisAdd) {
        [self.CDselectArray addObject:CDmodel];
    }
            CDmodel.CDisSelect = !CDmodel.CDisSelect;
        }
    }else{
        if (self.CDselectArray.count <= 3) {
            CDmodel.CDisSelect = !CDmodel.CDisSelect;
            BOOL CDisRemove = NO;
            for (int i = 0; i < self.CDselectArray.count; i++) {
                CDGuideModel *CDselectModel = self.CDselectArray[i];
                if (CDmodel.CDcontentCode == CDselectModel.CDcontentCode) {
                    CDisRemove = YES;
                    break;
                }
            }
            [self.CDselectArray removeObject:CDmodel];
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
- (UICollectionView *)CDcollectionView{
    if (!_CDcollectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        CGRect frame = CGRectMake(0, CDHeightNavBar, CDWIDTH, CDHEICDT);
        _CDcollectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:flowLayout];
        // 设置代理
        _CDcollectionView.delegate = self;
        _CDcollectionView.dataSource = self;
        // 其他属性
        _CDcollectionView.backgroundColor = [UIColor cyanColor];
        _CDcollectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        [_CDcollectionView registerClass:[CDGuideCollectionViewCell class] forCellWithReuseIdentifier:@"CDGuideCollectionViewCell"];
        [_CDcollectionView registerClass:[CDGuideCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"CDGuideCollectionReusableView"];
        [self.view addSubview:self.CDsureButton];
        [self.CDsureButton mas_makeConstraints:^(MASConstraintMaker *make) {        make.leading.equalTo(self.view).offset(150);
        make.trailing.equalTo(self.view).offset(-150);
            make.height.mas_equalTo(30);
            make.bottom.equalTo(self.view).offset(-CDHeightNavContentBar - 15);
        }];
        [self.view addSubview:_CDcollectionView];
        [_CDcollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.CDpromptView.mas_bottom).offset(10);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.CDsureButton.mas_top).offset(-20);
        }];
    }
    return _CDcollectionView;
}
- (UIButton *)CDsureButton{
    if (!_CDsureButton) {
        _CDsureButton = [[UIButton alloc] init];
        _CDsureButton.backgroundColor = [UIColor blueColor];
        _CDsureButton.layer.cornerRadius = 8.0f;
        _CDsureButton.layer.masksToBounds = YES;
        [_CDsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_CDsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_CDsureButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_CDsureButton addTarget:self action:@selector(CDsureBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CDsureButton;
}
@end
