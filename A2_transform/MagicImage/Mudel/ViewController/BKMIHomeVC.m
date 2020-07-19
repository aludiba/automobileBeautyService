#import "BKMIHomeVC.h"
#import "BKMIHomeView.h"
#import "BKQMBaseNavigationController.h"
#import "BKQMCameraViewController.h"
#import "BKMIHomeSectionOneCell.h"
#import "BKMIHomeSectionTowCell.h"
//#import "SDCycleScrollView.h"
#import <SDCycleScrollView/SDCycleScrollView.h>
#import "BKMIHomeHeaderView.h"
#import "BKMIHomeModel.h"
#import "BKMIBaseTypeVC.h"
#import "BKQMPhotoEffectViewController.h"
#import <Photos/Photos.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "BKMIStickerDetailVC.h"
#import "BKMITagsVC.h"
#import "BKMIFilterDetailVC.h"
#import "BKMIStickerVC.h"
#import "UIImage+GradientColor.h"
#import "UIColor+Hex.h"

@interface BKMIHomeVC ()<UITableViewDelegate,UITableViewDataSource,SDCycleScrollViewDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (nonatomic, strong) UITableView *BKtableView;
@property (nonatomic, strong) NSMutableArray *BKdataArray;
@property (nonatomic, strong) SDCycleScrollView *BKbannerView;
@property (nonatomic, strong) NSArray *BKbannerImageArr;
@property (nonatomic, assign) NSInteger BKtype;
@property (nonatomic, strong) NSMutableArray *BKbannaerArray;
@end
@implementation BKMIHomeVC
- (UITableView *)BKtableView{
    if (!_BKtableView) {
        _BKtableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _BKtableView.backgroundColor = RGB(242, 242, 242);
        _BKtableView.delegate = self;
        _BKtableView.dataSource = self;
        _BKtableView.separatorStyle= UITableViewCellSeparatorStyleNone;
    }
    return _BKtableView;
}
- (NSMutableArray *)BKdataArray{
    if (!_BKdataArray) {
        _BKdataArray = @[].mutableCopy;
    }
    return _BKdataArray;
}
- (NSMutableArray *)BKbannaerArray{
    if (!_BKbannaerArray) {
        _BKbannaerArray = @[].mutableCopy;
    }
    return _BKbannaerArray;
}
- (void)viewWillAppear:(BOOL)BKanimated{
    [super viewWillAppear:BKanimated];
    [self.navigationController setNavigationBarHidden:YES];
}
- (void)viewWillDisappear:(BOOL)BKanimated{
    [super viewWillDisappear:BKanimated];
    [self.navigationController setNavigationBarHidden:NO];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RGB(242, 242, 242);
    [self.view addSubview:self.BKtableView];
    self.BKtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view).offset(-StatusBarHeight)
    .bottomEqualToView(self.view);
     self.BKbannerImageArr = @[@"http://api.zhewo.top/static/new/pic/type_6/1.png",@"http://api.zhewo.top/static/new/pic/type_6/2.png",@"http://api.zhewo.top/static/new/pic/type_6/3.png"];
    [self BKloadData];
    [self BKcreateHeaderView];
    [NotifiCenter addObserver:self selector:@selector(BKloadData) name:@"loginSuccess" object:nil];
    [NotifiCenter addObserver:self selector:@selector(BKloginOut) name:@"loginOut" object:nil];
}
- (void)BKloginOut{
    [self BKloadData];
}
- (void)BKcreateHeaderView{
    UIView *BKbgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight/2-40)];
    BKbgView.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:BKbgView];
    self.BKtableView.tableHeaderView = BKbgView;
    UIView *BKcolorView = [[UIView alloc] init];
    BKcolorView.backgroundColor = RGB(242, 242, 242);
    [BKbgView addSubview:BKcolorView];
    BKcolorView.sd_layout
    .leftEqualToView(BKbgView)
    .rightEqualToView(BKbgView)
    .topEqualToView(BKbgView)
    .bottomSpaceToView(BKbgView, 5);
    CGFloat BKh = 0;
    if (iphone_X || ScreenWidth == 414) {
        BKh = StatusBarHeight;
    }else{
        BKh = StatusBarHeight+15;
    }
    UILabel *BKcontentLabel = [[UILabel alloc] init];
    BKcontentLabel.font = FontBoldSize(25, ScreenWidth);
    BKcontentLabel.text = @"PHOTO EDIT";
    BKcontentLabel.textColor = UIColor.blackColor;
    [BKbgView addSubview:BKcontentLabel];
    BKcontentLabel.sd_layout
    .leftSpaceToView(BKbgView, 15)
    .topSpaceToView(BKbgView, BKh)
    .autoHeightRatio(0);
    [BKcontentLabel setSingleLineAutoResizeWithMaxWidth:ScreenWidth];
    UIButton *BKshopBtn = [[UIButton alloc] init];
    [BKshopBtn setTitle:@"SHOP" forState:UIControlStateNormal];
    [BKshopBtn setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    [BKshopBtn setBackgroundColor:[UIColor blueColor]];
    BKshopBtn.titleLabel.font = FontBoldSize(12, ScreenWidth);
    BKshopBtn.layer.cornerRadius = 4;
    BKshopBtn.layer.masksToBounds = YES;
    [BKshopBtn addTarget:self action:@selector(BKshopBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [BKbgView addSubview:BKshopBtn];
    BKshopBtn.sd_layout
    .rightSpaceToView(BKbgView, 15)
    .centerYEqualToView(BKcontentLabel)
    .widthIs(50)
    .heightIs(25);
    _BKbannerView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 55, ScreenWidth, 120) delegate:self placeholderImage:[UIImage imageNamed:@"placeholder"]];
    _BKbannerView.backgroundColor = UIColor.clearColor;
    _BKbannerView.localizationImageNamesGroup = self.BKbannerImageArr;
    [BKbgView addSubview:_BKbannerView];
    _BKbannerView.sd_layout
    .leftEqualToView(BKbgView)
    .rightEqualToView(BKbgView)
    .bottomSpaceToView(BKbgView, 10)
    .heightIs(ScreenHeight/2-150);
}
- (void)BKloadData{
    NSDictionary *BKdict;
    if (UserId) {
        BKdict = @{@"pic_type":@(6),@"type":@(1),@"is_hot":@(2),@"user_id":UserId};
    }else{
        BKdict = @{@"pic_type":@(6),@"type":@(1),@"is_hot":@(2)};
    }
//    if (UserId) {
//        BKdict = @{@"pic_type":@(6),@"type":@(1),@"user_id":UserId};
//    }else{
//        BKdict = @{@"pic_type":@(6),@"type":@(1)};
//    }
    [MIHttpTool Post:PicList parameters:BKdict success:^(id BKresponseObject) {
        NSLog(@"BKresponseObject:%@",BKresponseObject);
        if ([BKresponseObject[@"status"] integerValue] == 1) {
            [self.BKdataArray removeAllObjects];
            for (NSDictionary *BKdict in BKresponseObject[@"data"]) {
                BKMIHomeModel *BKmodel = [BKMIHomeModel mj_objectWithKeyValues:BKdict];
                [self.BKdataArray addObject:BKmodel];
            }
        }
        [self.BKtableView reloadData];
    } failure:^(NSError *error) {
        MyLog(@"%@",error);
    }];
}
- (void)BKshopBtnClicked:(UIButton *)sender{
    BKMIBaseTypeVC *BKbaseType = [[BKMIBaseTypeVC alloc] init];
    [self.navigationController pushViewController:BKbaseType animated:YES];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }
    return self.BKdataArray.count;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)BKtableView cellForRowAtIndexPath:(NSIndexPath *)BKindexPath{
    if (BKindexPath.section == 0) {
        BKMIHomeSectionOneCell *BKcell = [BKtableView dequeueReusableCellWithIdentifier:@"BKcell"];
        if (!BKcell) {
            BKcell = [[BKMIHomeSectionOneCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"BKcell"];
        }
        BKcell.block = ^(NSInteger BKtag) {
            switch (BKtag) {
                case 0:{
                    BKQMCameraViewController *BKcmVC = [[BKQMCameraViewController alloc] init];
                    BKQMBaseNavigationController *BKnavi = [[BKQMBaseNavigationController alloc] initWithRootViewController:BKcmVC];
                    [self presentViewController:BKnavi animated:YES completion:nil];
                }
                    break;
                case 1:{
                    self.BKtype = BKtag;
                    [self BKcanUsePhoto];
                }
                    break;
                case 2:{
                    self.BKtype = BKtag;
                    [self BKcanUsePhoto];
                }
                    break;
                case 3:{
                    self.BKtype = BKtag;
                    [self BKcanUsePhoto];
                }
                    break;
                case 4:{
                    self.BKtype = BKtag;
                    [self BKcanUsePhoto];
                }
                    break;
                case 5:{
//                    BKMITagsVC *BKtagsVC = [[BKMITagsVC alloc] init];
//                    [self.navigationController pushViewController:BKtagsVC animated:YES];
                    BKMIStickerVC *BKstickerVC = [[BKMIStickerVC alloc] init];
                    BKstickerVC.BKisFromHomeVC = YES;
                    BKstickerVC.hidesBottomBarWhenPushed = YES;
                    [self.navigationController pushViewController:BKstickerVC animated:YES];
                }
                    break;
                default:
                    break;
            }
        };
        return BKcell;
    }else{
        BKMIHomeSectionTowCell *BKcell = [BKtableView dequeueReusableCellWithIdentifier:@"cell1"];
        if (!BKcell) {
            BKcell = [[BKMIHomeSectionTowCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
        }
        BKMIHomeModel *BKmodel = self.BKdataArray[BKindexPath.row];
        BKcell.BKmodel = BKmodel;
        return BKcell;
    }
}
- (void)tableView:(UITableView *)BKtableView didSelectRowAtIndexPath:(NSIndexPath *)BKindexPath{
    BKMIHomeModel *BKmodel = self.BKdataArray[BKindexPath.row];
    BKMIStickerDetailVC *BKdetailVC = [[BKMIStickerDetailVC alloc] init];
    BKdetailVC.BKmodel = BKmodel;
    BKdetailVC.BKpId = BKmodel.id;
    [self.navigationController pushViewController:BKdetailVC animated:YES];
}
- (void)BKcanUsePhoto{
    PHAuthorizationStatus BKstatus = [PHPhotoLibrary authorizationStatus];
    if (BKstatus == PHAuthorizationStatusRestricted) { 
        NSLog(@"因为系统原因, 无法访问相册");
    } else if (BKstatus == PHAuthorizationStatusDenied) { 
        UIAlertView *BKalertView = [[UIAlertView alloc] initWithTitle:@"Caveat" message:@"Please go to -> [Settings - Privacy - Camera - Project Name] Open the access switch" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Setting", nil];
        [BKalertView show];
    } else if (BKstatus == PHAuthorizationStatusAuthorized) { 
        UIImagePickerController *BKvc = [[UIImagePickerController alloc] init];
        BKvc.delegate = self;
        BKvc.allowsEditing = YES;
        BKvc.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        [self presentViewController:BKvc animated:YES completion:nil];
    } else if (BKstatus == PHAuthorizationStatusNotDetermined) { 
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus BKstatus) {
            if (BKstatus == PHAuthorizationStatusAuthorized) { 
                UIImagePickerController *BKvc = [[UIImagePickerController alloc] init];
                BKvc.delegate = self;
                BKvc.allowsEditing = YES;
                BKvc.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
                [self presentViewController:BKvc animated:YES completion:nil];
            }
        }];
    }
}
#pragma mark - UIAlertViewDelegate
- (void)alertView:(UIAlertView *)BKalertView clickedButtonAtIndex:(NSInteger)BKbuttonIndex{
    if (BKbuttonIndex == 1) {
        NSURL *BKurl = nil;
        BKurl = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        [[UIApplication sharedApplication] openURL:BKurl];
    }
}
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)BKpicker{
    [BKpicker dismissViewControllerAnimated:YES completion:nil];
}
-(void)imagePickerController:(UIImagePickerController *)BKpicker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)BKinfo{
    NSURL *BKurl = [BKinfo objectForKey:UIImagePickerControllerReferenceURL];
    ALAssetsLibrary *BKlibrary = [[ALAssetsLibrary alloc]init];
    [BKlibrary assetForURL:BKurl resultBlock:^(ALAsset *BKasset){
        UIImage *BKimage = BKinfo[UIImagePickerControllerOriginalImage];
        BKQMPhotoEffectViewController *BKcmVC = [[BKQMPhotoEffectViewController alloc] initWithImage:BKimage];
        BKcmVC.BKtype = self.BKtype;
        [self presentViewController:BKcmVC animated:YES completion:nil];
    }failureBlock:^(NSError *error){
    }];
    [BKpicker dismissViewControllerAnimated:YES completion:nil];
}
- (CGFloat)tableView:(UITableView *)BKtableView heightForRowAtIndexPath:(NSIndexPath *)BKindexPath{
    if (BKindexPath.section == 0) {
        return (ScreenWidth - 20)*3/5 + 80;
    }
    return ScreenHeight/2-110;
}
- (UIView *)tableView:(UITableView *)BKtableView viewForHeaderInSection:(NSInteger)BKsection{
    NSArray *BKtitleArray = @[@"Tools",@"STICKER"];
    UIView *BKview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 30)];
    BKview.backgroundColor = [UIColor whiteColor];
    UILabel *BKtitileLabel = [[UILabel alloc] init];
    BKtitileLabel.font = [UIFont boldSystemFontOfSize:16];
    BKtitileLabel.textColor = UIColor.blackColor;
    BKtitileLabel.text = BKtitleArray[BKsection];
    [BKview addSubview:BKtitileLabel];
    BKtitileLabel.sd_layout
    .leftSpaceToView(BKview, 15)
    .bottomSpaceToView(BKview, 0)
    .autoHeightRatio(0);
    [BKtitileLabel setSingleLineAutoResizeWithMaxWidth:180];
    if (BKsection == 1) {
        UIImageView *BKimageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PEArrow"]];
        [BKview addSubview:BKimageView];
        BKimageView.sd_layout
        .rightSpaceToView(BKview, 10)
        .centerYEqualToView(BKview)
        .heightIs(15)
        .widthIs(15);
        UIButton *BKsender = [[UIButton alloc] init];
        BKsender.tag = 150 + BKsection;
        BKsender.titleLabel.textAlignment = NSTextAlignmentRight;
        BKsender.titleLabel.font = FontSize(18, ScreenWidth);
        BKsender.titleLabel.textAlignment = NSTextAlignmentRight;
        [BKsender setTitle:@"More" forState:UIControlStateNormal];
        [BKsender setTitleColor:UIColor.grayColor forState:UIControlStateNormal];
        [BKsender addTarget:self action:@selector(BKsenderAction:) forControlEvents:UIControlEventTouchUpInside];
        [BKview addSubview:BKsender];
        BKsender.sd_layout
        .rightSpaceToView(BKimageView, 0)
        .centerYEqualToView(BKimageView)
        .widthIs(50)
        .heightIs(30);
    }
    return BKview;
}
- (void)BKsenderAction:(UIButton *)BKsender{
    BKMIBaseTypeVC *BKbaseType = [[BKMIBaseTypeVC alloc] init];
    [self.navigationController pushViewController:BKbaseType animated:YES];
}
- (UIView *)tableView:(UITableView *)BKtableView viewForFooterInSection:(NSInteger)BKsection{
    return [UIView new];
}
- (CGFloat)tableView:(UITableView *)BKtableView heightForHeaderInSection:(NSInteger)BKsection{
    return 30;
}
- (CGFloat)tableView:(UITableView *)BKtableView heightForFooterInSection:(NSInteger)BKsection{
    return 10;
}
- (Class)customCollectionViewCellClassForCycleScrollView:(SDCycleScrollView *)BKview{
    return [BKMIHomeHeaderView class];
}
- (void)setupCustomCell:(UICollectionViewCell *)BKcell forIndex:(NSInteger)BKindex cycleScrollView:(SDCycleScrollView *)view{
    BKMIHomeHeaderView *BKhomeCell = (BKMIHomeHeaderView*)BKcell;
    [BKhomeCell.BKpicImageView sd_setImageWithURL:[NSURL URLWithString:self.BKbannerImageArr[BKindex]]];
}
- (void)cycleScrollView:(SDCycleScrollView *)BKcycleScrollView didSelectItemAtIndex:(NSInteger)BKindex{
    if (BKindex == 0) {
        BKMIStickerDetailVC *BKstickerVC = [[BKMIStickerDetailVC alloc] init];
        BKstickerVC.BKpId = @"165";
        [self.navigationController pushViewController:BKstickerVC animated:YES];
    }else if (BKindex == 1){
        BKMIStickerDetailVC *BKstickerVC = [[BKMIStickerDetailVC alloc] init];
        BKstickerVC.BKpId = @"166";
        [self.navigationController pushViewController:BKstickerVC animated:YES];
    }else{
        BKMIStickerDetailVC *BKstickerVC = [[BKMIStickerDetailVC alloc] init];
        BKstickerVC.BKpId = @"167";
        [self.navigationController pushViewController:BKstickerVC animated:YES];
    }
}
@end
