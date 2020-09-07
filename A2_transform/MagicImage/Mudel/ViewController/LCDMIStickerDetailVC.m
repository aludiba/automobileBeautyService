#import "LCDMIStickerDetailVC.h"
#import "LCDMIStickerDetailCell.h"
#import "LCDMIHomeModel.h"
#import "YWebDataHandle.h"
#import "YWebDownManager.h"
#import "LCDMIUserModel.h"
#import "LCDMILoginVC.h"
#import "LCDMIStoreVC.h"
#import <Photos/Photos.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "LCDQMPhotoEffectViewController.h"
#import "SDProgressView.h"
@interface LCDMIStickerDetailVC ()<UICollectionViewDelegate,UICollectionViewDataSource,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (nonatomic, strong) UICollectionView *LCDcollectionView;
@property (nonatomic, strong) NSMutableArray *LCDdataArray;
@property (nonatomic, strong) LCDMIUserModel *LCDuserModel;
@property (nonatomic, strong) UILabel *LCDcoinsLabel;
@property (nonatomic, strong) UIButton *LCDbuyBtn;
@property (nonatomic, strong) UILabel *LCDpriceLabel;
@property (nonatomic, strong) UIImageView *LCDheaderImageView;
@property (nonatomic, strong) UILabel *LCDtitleLabel;
@end
@implementation LCDMIStickerDetailVC
- (NSMutableArray *)LCDdataArray{
    if (!_LCDdataArray) {
        _LCDdataArray = [[NSMutableArray alloc] init];
    }
    return _LCDdataArray;
}
- (UICollectionView *)LCDcollectionView{
    if (!_LCDcollectionView) {
        UICollectionViewFlowLayout *LCDlayout = [[UICollectionViewFlowLayout alloc] init];
        _LCDcollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, ScreenHeight/4, ScreenWidth, ScreenHeight*3/4-NavBarHeight) collectionViewLayout:LCDlayout];
        _LCDcollectionView.delegate = self;
        _LCDcollectionView.dataSource = self;
        _LCDcollectionView.backgroundColor = [UIColor cyanColor];
        [_LCDcollectionView registerClass:[LCDMIStickerDetailCell class] forCellWithReuseIdentifier:@"cellId1"];
        [self.view addSubview:_LCDcollectionView];
        _LCDcollectionView.backgroundColor = UIColor.groupTableViewBackgroundColor;
    }
    return _LCDcollectionView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Sticker";
    self.view.backgroundColor = UIColor.whiteColor;
    [self LCDaddTopView];
    [self.LCDdataArray addObjectsFromArray:self.LCDmodel.pic_url_detail_array];
    if (UserId) {
        [self LCDloadUserModel];
    }
    [self LCDcreateRightView];
    [self LCDloadDataWithType:1];
    [NotifiCenter addObserver:self selector:@selector(LCDloginSuccess) name:@"loginSuccess" object:nil];
}
- (void)LCDaddTopView{
    UIView *LCDtopView =  [[UIView alloc] init];
    LCDtopView.backgroundColor = UIColor.cyanColor;
    [self.view addSubview:LCDtopView];
    LCDtopView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topSpaceToView(self.view, 0)
    .heightIs(ScreenHeight/4);
    UIImageView *LCDheaderImageView = [[UIImageView alloc] init];
    self.LCDheaderImageView = LCDheaderImageView;
    self.LCDheaderImageView.backgroundColor = UIColor.cyanColor;
    LCDheaderImageView.layer.cornerRadius = 16;
    LCDheaderImageView.layer.masksToBounds = YES;
    if (self.LCDtype == 1 ) {
        [LCDheaderImageView sd_setImageWithURL:[NSURL URLWithString:self.LCDmodel.pic_url_z]];
    }
    [LCDtopView addSubview:LCDheaderImageView];
    LCDheaderImageView.sd_layout
    .leftSpaceToView(LCDtopView, 15)
    .topSpaceToView(LCDtopView, 10)
    .widthIs(60)
    .heightEqualToWidth();
    UILabel *LCDtitleLabel = [[UILabel alloc] init];
    if (self.LCDtype == 1) {
        LCDtitleLabel.text = self.LCDmodel.title;
    }
    self.LCDtitleLabel = LCDtitleLabel;
    LCDtitleLabel.font = FontSize(18, ScreenWidth);
    LCDtitleLabel.textColor = UIColor.blackColor;
    [LCDtopView addSubview:LCDtitleLabel];
    LCDtitleLabel.sd_layout
    .leftSpaceToView(LCDheaderImageView, 10)
    .centerYEqualToView(LCDheaderImageView)
    .autoHeightRatio(0);
    [LCDtitleLabel setSingleLineAutoResizeWithMaxWidth:ScreenWidth/2];
    UILabel *LCDpriceLabel = [[UILabel alloc] init];
    LCDpriceLabel.textColor = UIColor.orangeColor;
    self.LCDpriceLabel = LCDpriceLabel;
    LCDpriceLabel.font = FontSize(15, ScreenWidth);
    [LCDtopView addSubview:LCDpriceLabel];
    LCDpriceLabel.sd_layout
    .rightSpaceToView(LCDtopView, 15)
    .centerYEqualToView(LCDheaderImageView)
    .autoHeightRatio(0);
    [LCDpriceLabel setSingleLineAutoResizeWithMaxWidth:ScreenWidth/2];
    UIButton *LCDbuyBtn = [[UIButton alloc] init];
    self.LCDbuyBtn = LCDbuyBtn;
    if (@available(iOS 9.0, *)) {
        self.LCDbuyBtn.backgroundColor = [UIColor systemPurpleColor];
    } else {
        self.LCDbuyBtn.backgroundColor = [UIColor purpleColor];
    }
    [LCDbuyBtn setTitle:@"DownLoad" forState:UIControlStateNormal];
    [LCDbuyBtn setTitleColor:UIColor.redColor forState:UIControlStateNormal];
    LCDbuyBtn.layer.cornerRadius = 16;
    LCDbuyBtn.layer.masksToBounds = YES;
    [LCDbuyBtn addTarget:self action:@selector(LCDbtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [LCDtopView addSubview:LCDbuyBtn];
    LCDbuyBtn.sd_layout
    .leftSpaceToView(LCDtopView, 50)
    .rightSpaceToView(LCDtopView, 50)
    .topSpaceToView(LCDheaderImageView, 15)
    .heightIs(45);
    NSFileManager *LCDfileManager = [NSFileManager new];
    NSString *LCDsource = [YWebDataHandle documentYWebImageFileWithFolder:self.LCDpId];
    self.LCDmodel.peanut_num = @"0";
    if (LCDsource&& [LCDfileManager fileExistsAtPath:LCDsource]) {
        NSArray *LCDfiles = [LCDfileManager contentsOfDirectoryAtPath:LCDsource error:nil];
        NSMutableArray *LCDnewFiles = [@[] mutableCopy];
        for (NSString *LCDfileName in LCDfiles) {
            [LCDnewFiles addObject:LCDfileName];
        }
        if (LCDnewFiles.count>0) {
            [LCDbuyBtn setTitle:@"Apply" forState:UIControlStateNormal];
            LCDbuyBtn.backgroundColor = RGB(62, 85, 250);
        }else{
            [LCDbuyBtn setTitle:@"Download" forState:UIControlStateNormal];
            LCDbuyBtn.backgroundColor = RGB(42, 134, 250);
        }
    }else{
        if (self.LCDmodel.peanut_num.integerValue>0) {
           [LCDbuyBtn setTitle:@"Buy" forState:UIControlStateNormal];
            LCDbuyBtn.backgroundColor = RGB(42, 134, 250);
        }else{
            [LCDbuyBtn setTitle:@"Download" forState:UIControlStateNormal];
            LCDbuyBtn.backgroundColor = RGB(42, 134, 250);
        }
    }
}
- (void)LCDloadDataWithType:(NSInteger)LCDtype{
    NSString *LCDuser_id;
    if (UserId) {
        LCDuser_id  = UserId;
    }else{
        LCDuser_id = @"";
    }
    NSNumber *picTypeNumber;
    if ([self.LCDpId isEqualToString:@"120"]) {
        picTypeNumber = @(3);
    }else if ([self.LCDpId isEqualToString:@"136"]){
        picTypeNumber = @(4);
    }else if ([self.LCDpId isEqualToString:@"152"]){
        picTypeNumber = @(5);
    }else{
        picTypeNumber = @(2);
    }
    [MIHttpTool Post:PicList parameters:@{@"pic_type":picTypeNumber,@"type":@(LCDtype),@"id":self.LCDpId,@"user_id":LCDuser_id} success:^(id LCDresponseObject) {
        NSLog(@"sticker:%@",LCDresponseObject);
        if ([LCDresponseObject[@"status"] integerValue] == 1) {
            for (NSDictionary *LCDdict in LCDresponseObject[@"data"]) {
                LCDMIHomeModel *LCDmodel = [LCDMIHomeModel mj_objectWithKeyValues:LCDdict];
                self.LCDmodel = LCDmodel;
                LCDmodel.peanut_num = @"0";
                if (LCDmodel.peanut_num.floatValue>0) {
                    [self.LCDbuyBtn setTitle:@"Buy" forState:UIControlStateNormal];
                    self.LCDpriceLabel.text = LCDmodel.peanut_num;
                }
                [self.LCDheaderImageView sd_setImageWithURL:[NSURL URLWithString:self.LCDmodel.pic_url_z] placeholderImage:nil];
                self.LCDtitleLabel.text = LCDmodel.title;
                [self.LCDdataArray addObjectsFromArray:LCDmodel.pic_url_detail_array];
            }
        }
        if (self.LCDdataArray.count) {
            [self.LCDcollectionView reloadData];
        }
    } failure:^(NSError *error) {
    }];
}
- (void)LCDcreateRightView{
}
- (void)LCDloginSuccess{
    [self LCDloadUserModel];
}
- (void)LCDtapAction:(UITapGestureRecognizer *)LCDtap{
    if (!UserId) {
        LCDMILoginVC *LCDlogVC = [[LCDMILoginVC alloc] init];
        UINavigationController *LCDnavi = [[UINavigationController alloc] initWithRootViewController:LCDlogVC];
        [self presentViewController:LCDnavi animated:YES completion:nil];
        return;
    }
}
- (void)LCDbtnClicked:(UIButton *)LCDsender{
    if ([LCDsender.titleLabel.text isEqualToString:@"Download"]) {
        __block float i = 0;
        SDLoopProgressView *LCDloop = [SDLoopProgressView progressView];
        LCDloop.backgroundColor = UIColor.blueColor;
        LCDloop.frame = CGRectMake(0, 0, 100, 100);
        LCDloop.center = CGPointMake(self.view.centerX, self.view.centerY - 50);
        [self.view addSubview:LCDloop];
        for (NSString *LCDimgUrl in self.LCDmodel.pic_url_detail_array) {
            YWebDownManager *LCDwebDownManager = [[YWebDownManager alloc] init];
            LCDwebDownManager.folder = self.LCDpId;
            [LCDwebDownManager startDownImagePath:LCDimgUrl];
            [LCDwebDownManager downManagerFinishBlockHandle:^(NSString *LCDpath) {
                i++;
                if (i == self.LCDmodel.pic_url_detail_array.count) {
                    [self.LCDbuyBtn setTitle:@"Apply" forState:UIControlStateNormal];
                    self.LCDbuyBtn.backgroundColor = RGB(62, 85, 250);
                }
                LCDloop.progress = i/self.LCDmodel.pic_url_detail_array.count;
            }];
            [LCDwebDownManager downManagerProgressBlockHandle:^(CGFloat didFinish, CGFloat didFinishTotal, CGFloat Total) {
            }];
        }
    }else{
        [self LCDcanUsePhoto];
    }
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
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            if (status == PHAuthorizationStatusAuthorized) { 
                UIImagePickerController *LCDvc = [[UIImagePickerController alloc] init];
                LCDvc.delegate = self;
                LCDvc.allowsEditing = YES;
                LCDvc.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
                [self presentViewController:LCDvc animated:YES completion:nil];
            }
        }];
    }
}
- (LCDMIHomeModel *)LCDmodel{
    if (!_LCDmodel) {
        _LCDmodel = [[LCDMIHomeModel alloc] init];
    }
    return _LCDmodel;
}
#pragma mark - UIAlertViewDelegate
- (void)alertView:(UIAlertView *)LCDalertView clickedButtonAtIndex:(NSInteger)LCDbuttonIndex{
    if (LCDbuttonIndex == 1) {
        NSURL *LCDurl = nil;
        LCDurl = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        [[UIApplication sharedApplication] openURL:LCDurl];
    }
}
#pragma mark - UIImagePickerControllerDelegate
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)LCDpicker{
    [LCDpicker dismissViewControllerAnimated:YES completion:nil];
}
-(void)imagePickerController:(UIImagePickerController *)LCDpicker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)LCDinfo{
    NSURL *LCDurl = [LCDinfo objectForKey:UIImagePickerControllerReferenceURL];
    ALAssetsLibrary *LCDlibrary = [[ALAssetsLibrary alloc] init];
    [LCDlibrary assetForURL:LCDurl resultBlock:^(ALAsset *LCDasset){
        UIImage *LCDimage = LCDinfo[UIImagePickerControllerOriginalImage];
        LCDQMPhotoEffectViewController *LCDcmVC = [[LCDQMPhotoEffectViewController alloc] initWithImage:LCDimage];
        LCDcmVC.LCDtype = 1;
        LCDcmVC.LCDresourcePath = [YWebDataHandle documentYWebImageFileWithFolder:self.LCDpId];
        [self presentViewController:LCDcmVC animated:YES completion:nil];
    }failureBlock:^(NSError *error){
    }];
    [LCDpicker dismissViewControllerAnimated:YES completion:nil];
}
- (void)LCDloadUserModel{
    [MIHttpTool Post:SHUserDetail parameters:@{@"user_id":UserId} success:^(id LCDresponseObject) {
        if ([LCDresponseObject[@"status"] integerValue] == 1) {
            LCDMIUserModel *LCDmodel = [LCDMIUserModel mj_objectWithKeyValues:LCDresponseObject[@"data"]];
            self.LCDuserModel = LCDmodel;
            self.LCDcoinsLabel.text = LCDmodel.peanut_num;
        }
    } failure:^(NSError *error) {
    }];
}
#pragma mark --UICollectionViewdelegate& DataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.LCDdataArray.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)LCDcollectionView cellForItemAtIndexPath:(NSIndexPath *)LCDindexPath{
    static NSString *LCDidentify = @"cellId1";
    LCDMIStickerDetailCell *LCDcell = [LCDcollectionView dequeueReusableCellWithReuseIdentifier:LCDidentify forIndexPath:LCDindexPath];
    LCDcell.backgroundColor = [UIColor cyanColor];
    LCDcell.LCDpicUrl = self.LCDdataArray[LCDindexPath.row];
    return LCDcell;
}
#pragma mark  定义每个UICollectionView的大小
- (CGSize)collectionView:(UICollectionView *)LCDcollectionView layout:(UICollectionViewLayout *)LCDcollectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)LCDindexPath{
    NSInteger LCDnumPreRow = 5;
    CGFloat LCDwidth = (ScreenWidth - 5 * (LCDnumPreRow +1)) /LCDnumPreRow;
    return CGSizeMake(LCDwidth, LCDwidth);
}
#pragma mark  定义每个UICollectionView的横向间距
- (CGFloat)collectionView:(UICollectionView *)LCDcollectionView layout:(UICollectionViewLayout *)LCDcollectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)LCDsection{
    return 5;
}
#pragma mark  定义每个UICollectionView的纵向间距
- (CGFloat)collectionView:(UICollectionView *)LCDcollectionView layout:(UICollectionViewLayout*)LCDcollectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)LCDsection{
    return 5;
}
-(UIEdgeInsets)collectionView:(UICollectionView *)LCDcollectionView layout:(UICollectionViewLayout *)LCDcollectionViewLayout insetForSectionAtIndex:(NSInteger)LCDsection{
    return UIEdgeInsetsMake(5, 5, 5, 5);
}
@end
