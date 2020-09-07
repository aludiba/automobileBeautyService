#import "LCDMIHomeVC.h"
#import "LCDMIHomeView.h"
#import "LCDQMBaseNavigationController.h"
#import "LCDQMCameraViewController.h"
#import "LCDMIHomeSectionOneCell.h"
#import "LCDMIHomeSectionTowCell.h"
//#import "SDCycleScrollView.h"
#import <SDCycleScrollView/SDCycleScrollView.h>
#import "LCDMIHomeHeaderView.h"
#import "LCDMIHomeModel.h"
#import "LCDMIBaseTypeVC.h"
#import "LCDQMPhotoEffectViewController.h"
#import <Photos/Photos.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "LCDMIStickerDetailVC.h"
#import "LCDMITagsVC.h"
#import "LCDMIFilterDetailVC.h"
#import "LCDMIStickerVC.h"
#import "UIImage+GradientColor.h"
#import "UIColor+Hex.h"

@interface LCDMIHomeVC ()<UITableViewDelegate,UITableViewDataSource,SDCycleScrollViewDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (nonatomic, strong) UITableView *LCDtableView;
@property (nonatomic, strong) NSMutableArray *LCDdataArray;
@property (nonatomic, strong) SDCycleScrollView *LCDbannerView;
@property (nonatomic, strong) NSArray *LCDbannerImageArr;
@property (nonatomic, assign) NSInteger LCDtype;
@property (nonatomic, strong) NSMutableArray *LCDbannaerArray;
@end
@implementation LCDMIHomeVC
- (UITableView *)LCDtableView{
    if (!_LCDtableView) {
        _LCDtableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _LCDtableView.backgroundColor = [UIColor cyanColor];
        _LCDtableView.delegate = self;
        _LCDtableView.dataSource = self;
        _LCDtableView.separatorStyle= UITableViewCellSeparatorStyleNone;
    }
    return _LCDtableView;
}
- (NSMutableArray *)LCDdataArray{
    if (!_LCDdataArray) {
        _LCDdataArray = @[].mutableCopy;
    }
    return _LCDdataArray;
}
- (NSMutableArray *)LCDbannaerArray{
    if (!_LCDbannaerArray) {
        _LCDbannaerArray = @[].mutableCopy;
    }
    return _LCDbannaerArray;
}
- (void)viewWillAppear:(BOOL)LCDanimated{
    [super viewWillAppear:LCDanimated];
    [self.navigationController setNavigationBarHidden:YES];
}
- (void)viewWillDisappear:(BOOL)LCDanimated{
    [super viewWillDisappear:LCDanimated];
    [self.navigationController setNavigationBarHidden:NO];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:self.LCDtableView];
    self.LCDtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view).offset(-StatusBarHeight)
    .bottomEqualToView(self.view);
     self.LCDbannerImageArr = @[@"http://api.zhewo.top/static/new/pic/type_3/1.png",@"http://api.zhewo.top/static/new/pic/type_4/2.png",@"http://api.zhewo.top/static/new/pic/type_5/3.png"];
    [self LCDloadData];
    [self LCDcreateHeaderView];
    [NotifiCenter addObserver:self selector:@selector(LCDloadData) name:@"loginSuccess" object:nil];
    [NotifiCenter addObserver:self selector:@selector(LCDloginOut) name:@"loginOut" object:nil];
}
- (void)LCDloginOut{
    [self LCDloadData];
}
- (void)LCDcreateHeaderView{
    UIView *LCDbgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight/2 - 40)];
    LCDbgView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:LCDbgView];
    self.LCDtableView.tableHeaderView = LCDbgView;
    UIView *LCDcolorView = [[UIView alloc] init];
    LCDcolorView.backgroundColor = [UIColor cyanColor];
    [LCDbgView addSubview:LCDcolorView];
    LCDcolorView.sd_layout
    .leftEqualToView(LCDbgView)
    .rightEqualToView(LCDbgView)
    .topEqualToView(LCDbgView)
    .bottomSpaceToView(LCDbgView, 5);
    CGFloat LCDh = 0;
    if (LCDISIPHONEX || ScreenWidth == 414) {
        LCDh = StatusBarHeight;
    }else{
        LCDh = StatusBarHeight + 15;
    }
    UILabel *LCDcontentLabel = [[UILabel alloc] init];
    LCDcontentLabel.font = FontBoldSize(25, ScreenWidth);
    LCDcontentLabel.text = @"Photo Edit";
    LCDcontentLabel.textColor = [UIColor purpleColor];
    [LCDbgView addSubview:LCDcontentLabel];
    LCDcontentLabel.sd_layout
    .leftSpaceToView(LCDbgView, 15)
    .topSpaceToView(LCDbgView, LCDh)
    .autoHeightRatio(0);
    [LCDcontentLabel setSingleLineAutoResizeWithMaxWidth:ScreenWidth];
    UIButton *LCDshopBtn = [[UIButton alloc] init];
    [LCDshopBtn setTitle:@"Shop" forState:UIControlStateNormal];
    [LCDshopBtn setTitleColor:UIColor.blueColor forState:UIControlStateNormal];
    [LCDshopBtn setBackgroundColor:[UIColor systemRedColor]];
    LCDshopBtn.titleLabel.font = FontBoldSize(13, ScreenWidth);
    LCDshopBtn.layer.cornerRadius = 8;
    LCDshopBtn.layer.masksToBounds = YES;
    [LCDshopBtn addTarget:self action:@selector(LCDshopBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [LCDbgView addSubview:LCDshopBtn];
    LCDshopBtn.sd_layout
    .rightSpaceToView(LCDbgView, 15)
    .centerYEqualToView(LCDcontentLabel)
    .widthIs(50)
    .heightIs(25);
    _LCDbannerView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 55, ScreenWidth, 120) delegate:self placeholderImage:[UIImage imageNamed:@"placeholder"]];
    _LCDbannerView.backgroundColor = [UIColor cyanColor];
    _LCDbannerView.localizationImageNamesGroup = self.LCDbannerImageArr;
    [LCDbgView addSubview:_LCDbannerView];
    _LCDbannerView.sd_layout
    .leftEqualToView(LCDbgView)
    .rightEqualToView(LCDbgView)
    .bottomSpaceToView(LCDbgView, 10)
    .heightIs(ScreenHeight/2-150);
}
- (void)LCDloadData{
    NSDictionary *LCDdict;
    if (UserId) {
        LCDdict = @{@"pic_type":@(5),@"type":@(1),@"is_hot":@(2),@"user_id":UserId};
    }else{
        LCDdict = @{@"pic_type":@(5),@"type":@(1),@"is_hot":@(2)};
    }
    [MIHttpTool Post:PicList parameters:LCDdict success:^(id LCDresponseObject) {
        NSLog(@"LCDresponseObject:%@",LCDresponseObject);
        if ([LCDresponseObject[@"status"] integerValue] == 1) {
            [self.LCDdataArray removeAllObjects];
            for (NSDictionary *LCDdict in LCDresponseObject[@"data"]) {
                LCDMIHomeModel *LCDmodel = [LCDMIHomeModel mj_objectWithKeyValues:LCDdict];
                [self.LCDdataArray addObject:LCDmodel];
            }
        }
        [self.LCDtableView reloadData];
    } failure:^(NSError *error) {
        MyLog(@"%@",error);
    }];
}
- (void)LCDshopBtnClicked:(UIButton *)sender{
    LCDMIBaseTypeVC *LCDbaseType = [[LCDMIBaseTypeVC alloc] init];
    [self.navigationController pushViewController:LCDbaseType animated:YES];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }
    return self.LCDdataArray.count;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)LCDtableView cellForRowAtIndexPath:(NSIndexPath *)LCDindexPath{
    if (LCDindexPath.section == 0) {
        LCDMIHomeSectionOneCell *LCDcell = [LCDtableView dequeueReusableCellWithIdentifier:@"LCDMIHomeSectionOneCell"];
        if (!LCDcell) {
            LCDcell = [[LCDMIHomeSectionOneCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"LCDMIHomeSectionOneCell"];
        }
        LCDcell.block = ^(NSInteger LCDtag) {
            switch (LCDtag) {
                case 0:{
                    LCDQMCameraViewController *LCDcmVC = [[LCDQMCameraViewController alloc] init];
                    LCDQMBaseNavigationController *LCDnavi = [[LCDQMBaseNavigationController alloc] initWithRootViewController:LCDcmVC];
                    [self presentViewController:LCDnavi animated:YES completion:nil];
                }
                    break;
                case 1:{
                    self.LCDtype = LCDtag;
                    [self LCDcanUsePhoto];
                }
                    break;
                case 2:{
                    self.LCDtype = LCDtag;
                    [self LCDcanUsePhoto];
                }
                    break;
                case 3:{
                    self.LCDtype = LCDtag;
                    [self LCDcanUsePhoto];
                }
                    break;
                case 4:{
                    self.LCDtype = LCDtag;
                    [self LCDcanUsePhoto];
                }
                    break;
                case 5:{
                    LCDMIStickerVC *LCDstickerVC = [[LCDMIStickerVC alloc] init];
                    LCDstickerVC.LCDisFromHomeVC = YES;
                    LCDstickerVC.hidesBottomBarWhenPushed = YES;
                    [self.navigationController pushViewController:LCDstickerVC animated:YES];
                }
                    break;
                default:
                    break;
            }
        };
        return LCDcell;
    }else{
        LCDMIHomeSectionTowCell *LCDcell = [LCDtableView dequeueReusableCellWithIdentifier:@"LCDMIHomeSectionTowCell"];
        if (!LCDcell) {
            LCDcell = [[LCDMIHomeSectionTowCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"LCDMIHomeSectionTowCell"];
        }
        LCDMIHomeModel *LCDmodel = self.LCDdataArray[LCDindexPath.row];
        LCDcell.LCDmodel = LCDmodel;
        return LCDcell;
    }
}
- (void)tableView:(UITableView *)LCDtableView didSelectRowAtIndexPath:(NSIndexPath *)LCDindexPath{
    LCDMIHomeModel *LCDmodel = self.LCDdataArray[LCDindexPath.row];
    LCDMIStickerDetailVC *LCDdetailVC = [[LCDMIStickerDetailVC alloc] init];
    LCDdetailVC.LCDmodel = LCDmodel;
    LCDdetailVC.LCDpId = LCDmodel.id;
    [self.navigationController pushViewController:LCDdetailVC animated:YES];
}
- (void)LCDcanUsePhoto{
    PHAuthorizationStatus LCDstatus = [PHPhotoLibrary authorizationStatus];
    if (LCDstatus == PHAuthorizationStatusRestricted) {
        NSLog(@"因为系统原因, 无法访问相册");
    } else if (LCDstatus == PHAuthorizationStatusDenied) {
        UIAlertView *LCDalertView = [[UIAlertView alloc] initWithTitle:@"Caveat" message:@"Please go to -> [Settings - Privacy - Camera - Project Name] Open the access switch" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Setting", nil];
        [LCDalertView show];
    } else if (LCDstatus == PHAuthorizationStatusAuthorized) {
        UIImagePickerController *LCDvc = [[UIImagePickerController alloc] init];
        LCDvc.delegate = self;
        LCDvc.allowsEditing = YES;
        LCDvc.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        [self presentViewController:LCDvc animated:YES completion:nil];
    } else if (LCDstatus == PHAuthorizationStatusNotDetermined) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus LCDstatus) {
            if (LCDstatus == PHAuthorizationStatusAuthorized) {
                UIImagePickerController *LCDvc = [[UIImagePickerController alloc] init];
                LCDvc.delegate = self;
                LCDvc.allowsEditing = YES;
                LCDvc.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
                [self presentViewController:LCDvc animated:YES completion:nil];
            }
        }];
    }
}
#pragma mark - UIAlertViewDelegate
- (void)alertView:(UIAlertView *)LCDalertView clickedButtonAtIndex:(NSInteger)LCDbuttonIndex{
    if (LCDbuttonIndex == 1) {
        NSURL *LCDurl = nil;
        LCDurl = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        [[UIApplication sharedApplication] openURL:LCDurl];
    }
}
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)LCDpicker{
    [LCDpicker dismissViewControllerAnimated:YES completion:nil];
}
-(void)imagePickerController:(UIImagePickerController *)LCDpicker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)LCDinfo{
    NSURL *LCDurl = [LCDinfo objectForKey:UIImagePickerControllerReferenceURL];
    ALAssetsLibrary *LCDlibrary = [[ALAssetsLibrary alloc]init];
    [LCDlibrary assetForURL:LCDurl resultBlock:^(ALAsset *LCDasset){
        UIImage *LCDimage = LCDinfo[UIImagePickerControllerOriginalImage];
        LCDQMPhotoEffectViewController *LCDcmVC = [[LCDQMPhotoEffectViewController alloc] initWithImage:LCDimage];
        LCDcmVC.LCDtype = self.LCDtype;
        [self presentViewController:LCDcmVC animated:YES completion:nil];
    }failureBlock:^(NSError *error){
    }];
    [LCDpicker dismissViewControllerAnimated:YES completion:nil];
}
- (CGFloat)tableView:(UITableView *)LCDtableView heightForRowAtIndexPath:(NSIndexPath *)LCDindexPath{
    if (LCDindexPath.section == 0) {
        return (ScreenWidth - 20)*3/5 + 80;
    }
    return ScreenHeight/2-110;
}
- (UIView *)tableView:(UITableView *)LCDtableView viewForHeaderInSection:(NSInteger)LCDsection{
    NSArray *LCDtitleArray = @[@"TOOLS",@"STICKER"];
    UIView *LCDview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 30)];
    LCDview.backgroundColor = [UIColor cyanColor];
    UILabel *LCDtitileLabel = [[UILabel alloc] init];
    LCDtitileLabel.font = [UIFont boldSystemFontOfSize:16];
    LCDtitileLabel.textColor = UIColor.blackColor;
    LCDtitileLabel.text = LCDtitleArray[LCDsection];
    [LCDview addSubview:LCDtitileLabel];
    LCDtitileLabel.sd_layout
    .leftSpaceToView(LCDview, 15)
    .bottomSpaceToView(LCDview, 0)
    .autoHeightRatio(0);
    [LCDtitileLabel setSingleLineAutoResizeWithMaxWidth:180];
    if (LCDsection == 1) {
        UIImageView *LCDimageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PEArrow"]];
        [LCDview addSubview:LCDimageView];
        LCDimageView.sd_layout
        .rightSpaceToView(LCDview, 10)
        .centerYEqualToView(LCDview)
        .heightIs(15)
        .widthIs(15);
        UIButton *LCDsender = [[UIButton alloc] init];
        LCDsender.tag = 150 + LCDsection;
        LCDsender.titleLabel.textAlignment = NSTextAlignmentRight;
        LCDsender.titleLabel.font = FontSize(18, ScreenWidth);
        LCDsender.titleLabel.textAlignment = NSTextAlignmentRight;
        [LCDsender setTitle:@"More" forState:UIControlStateNormal];
        [LCDsender setTitleColor:UIColor.grayColor forState:UIControlStateNormal];
        [LCDsender addTarget:self action:@selector(LCDsenderAction:) forControlEvents:UIControlEventTouchUpInside];
        [LCDview addSubview:LCDsender];
        LCDsender.sd_layout
        .rightSpaceToView(LCDimageView, 0)
        .centerYEqualToView(LCDimageView)
        .widthIs(50)
        .heightIs(30);
    }
    return LCDview;
}
- (void)LCDsenderAction:(UIButton *)LCDsender{
    LCDMIBaseTypeVC *LCDbaseType = [[LCDMIBaseTypeVC alloc] init];
    [self.navigationController pushViewController:LCDbaseType animated:YES];
}
- (UIView *)tableView:(UITableView *)LCDtableView viewForFooterInSection:(NSInteger)LCDsection{
    return [UIView new];
}
- (CGFloat)tableView:(UITableView *)LCDtableView heightForHeaderInSection:(NSInteger)LCDsection{
    return 30;
}
- (CGFloat)tableView:(UITableView *)LCDtableView heightForFooterInSection:(NSInteger)LCDsection{
    return 10;
}
- (Class)customCollectionViewCellClassForCycleScrollView:(SDCycleScrollView *)LCDview{
    return [LCDMIHomeHeaderView class];
}
- (void)setupCustomCell:(UICollectionViewCell *)LCDcell forIndex:(NSInteger)LCDindex cycleScrollView:(SDCycleScrollView *)view{
    LCDMIHomeHeaderView *LCDhomeCell = (LCDMIHomeHeaderView*)LCDcell;
    [LCDhomeCell.LCDpicImageView sd_setImageWithURL:[NSURL URLWithString:self.LCDbannerImageArr[LCDindex]]];
}
#pragma mark - SDCycleScrollViewDelegate
- (void)cycleScrollView:(SDCycleScrollView *)LCDcycleScrollView didSelectItemAtIndex:(NSInteger)LCDindex{
    if (LCDindex == 0) {
        LCDMIStickerDetailVC *LCDstickerVC = [[LCDMIStickerDetailVC alloc] init];
        LCDstickerVC.LCDpId = @"120";
        [self.navigationController pushViewController:LCDstickerVC animated:YES];
    }else if (LCDindex == 1){
        LCDMIStickerDetailVC *LCDstickerVC = [[LCDMIStickerDetailVC alloc] init];
        LCDstickerVC.LCDpId = @"136";
        [self.navigationController pushViewController:LCDstickerVC animated:YES];
    }else{
        LCDMIStickerDetailVC *LCDstickerVC = [[LCDMIStickerDetailVC alloc] init];
        LCDstickerVC.LCDpId = @"152";
        [self.navigationController pushViewController:LCDstickerVC animated:YES];
    }
}
@end
