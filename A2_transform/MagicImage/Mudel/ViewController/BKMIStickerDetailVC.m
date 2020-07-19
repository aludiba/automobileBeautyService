#import "BKMIStickerDetailVC.h"
#import "BKMIStickerDetailCell.h"
#import "BKMIHomeModel.h"
#import "YWebDataHandle.h"
#import "YWebDownManager.h"
#import "BKMIUserModel.h"
#import "BKMILoginVC.h"
#import "BKMIStoreVC.h"
#import <Photos/Photos.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "BKQMPhotoEffectViewController.h"
#import "SDProgressView.h"
@interface BKMIStickerDetailVC ()<UICollectionViewDelegate,UICollectionViewDataSource,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (nonatomic, strong) UICollectionView *BKcollectionView;
@property (nonatomic, strong) NSMutableArray *BKdataArray;
@property (nonatomic, strong) BKMIUserModel *BKuserModel;
@property (nonatomic, strong) UILabel *BKcoinsLabel;
@property (nonatomic, strong) UIButton *BKbuyBtn;
@property (nonatomic, strong) UILabel *BKpriceLabel;
@property (nonatomic, strong) UIImageView *BKheaderImageView;
@property (nonatomic, strong) UILabel *BKtitleLabel;
@end
@implementation BKMIStickerDetailVC
- (NSMutableArray *)BKdataArray{
    if (!_BKdataArray) {
        _BKdataArray = [[NSMutableArray alloc] init];
    }
    return _BKdataArray;
}
- (UICollectionView *)BKcollectionView{
    if (!_BKcollectionView) {
        UICollectionViewFlowLayout *BKlayout = [[UICollectionViewFlowLayout alloc] init];
        _BKcollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, ScreenHeight/4, ScreenWidth, ScreenHeight*3/4-NavBarHeight) collectionViewLayout:BKlayout];
        _BKcollectionView.delegate = self;
        _BKcollectionView.dataSource = self;
        _BKcollectionView.backgroundColor = [UIColor whiteColor];
        [_BKcollectionView registerClass:[BKMIStickerDetailCell class] forCellWithReuseIdentifier:@"cellId1"];
        [self.view addSubview:_BKcollectionView];
        _BKcollectionView.backgroundColor = UIColor.groupTableViewBackgroundColor;
    }
    return _BKcollectionView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Sticker";
    self.view.backgroundColor = UIColor.whiteColor;
    [self BKaddTopView];
    [self.BKdataArray addObjectsFromArray:self.BKmodel.pic_url_detail_array];
    if (UserId) {
        [self BKloadUserModel];
    }
    [self BKcreateRightView];
    [self BKloadDataWithType:1];
    [NotifiCenter addObserver:self selector:@selector(BKloginSuccess) name:@"loginSuccess" object:nil];
}
- (void)BKaddTopView{
    UIView *BKtopView =  [[UIView alloc] init];
    BKtopView.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:BKtopView];
    BKtopView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topSpaceToView(self.view, 0)
    .heightIs(ScreenHeight/4);
    UIImageView *BKheaderImageView = [[UIImageView alloc] init];
    self.BKheaderImageView = BKheaderImageView;
    BKheaderImageView.layer.cornerRadius = 8;
    BKheaderImageView.layer.masksToBounds = YES;
    if (self.BKtype == 1 ) {
        [BKheaderImageView sd_setImageWithURL:[NSURL URLWithString:self.BKmodel.pic_url_z]];
    }
    [BKtopView addSubview:BKheaderImageView];
    BKheaderImageView.sd_layout
    .leftSpaceToView(BKtopView, 15)
    .topSpaceToView(BKtopView, 10)
    .widthIs(60)
    .heightEqualToWidth();
    UILabel *BKtitleLabel = [[UILabel alloc] init];
    if (self.BKtype == 1) {
        BKtitleLabel.text = self.BKmodel.title;
    }
    self.BKtitleLabel = BKtitleLabel;
    BKtitleLabel.font = FontSize(18, ScreenWidth);
    BKtitleLabel.textColor = UIColor.blackColor;
    [BKtopView addSubview:BKtitleLabel];
    BKtitleLabel.sd_layout
    .leftSpaceToView(BKheaderImageView, 10)
    .centerYEqualToView(BKheaderImageView)
    .autoHeightRatio(0);
    [BKtitleLabel setSingleLineAutoResizeWithMaxWidth:ScreenWidth/2];
    UILabel *BKpriceLabel = [[UILabel alloc] init];
    BKpriceLabel.textColor = UIColor.orangeColor;
    self.BKpriceLabel = BKpriceLabel;
    BKpriceLabel.font = FontSize(15, ScreenWidth);
    [BKtopView addSubview:BKpriceLabel];
    BKpriceLabel.sd_layout
    .rightSpaceToView(BKtopView, 15)
    .centerYEqualToView(BKheaderImageView)
    .autoHeightRatio(0);
    [BKpriceLabel setSingleLineAutoResizeWithMaxWidth:ScreenWidth/2];
    UIButton *BKbuyBtn = [[UIButton alloc] init];
    self.BKbuyBtn = BKbuyBtn;
    [BKbuyBtn setTitle:@"DownLoad" forState:UIControlStateNormal];
    [BKbuyBtn setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    BKbuyBtn.layer.cornerRadius = 6;
    BKbuyBtn.layer.masksToBounds = YES;
    [BKbuyBtn addTarget:self action:@selector(BKbtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [BKtopView addSubview:BKbuyBtn];
    BKbuyBtn.sd_layout
    .leftSpaceToView(BKtopView, 25)
    .rightSpaceToView(BKtopView, 25)
    .topSpaceToView(BKheaderImageView, 15)
    .heightIs(45);
    NSFileManager *BKfileManager = [NSFileManager new];
    NSString *BKsource = [YWebDataHandle documentYWebImageFileWithFolder:self.BKpId];
    self.BKmodel.peanut_num = @"0";
    if (BKsource&& [BKfileManager fileExistsAtPath:BKsource]) {
        NSArray *BKfiles = [BKfileManager contentsOfDirectoryAtPath:BKsource error:nil];
        NSMutableArray *BKnewFiles = [@[] mutableCopy];
        for (NSString *BKfileName in BKfiles) {
            [BKnewFiles addObject:BKfileName];
        }
        if (BKnewFiles.count>0) {
            [BKbuyBtn setTitle:@"Apply" forState:UIControlStateNormal];
            BKbuyBtn.backgroundColor = RGB(62, 85, 250);
        }else{
            [BKbuyBtn setTitle:@"Download" forState:UIControlStateNormal];
            BKbuyBtn.backgroundColor = RGB(42, 134, 250);
        }
    }else{
        if (self.BKmodel.peanut_num.integerValue>0) {
           [BKbuyBtn setTitle:@"Buy" forState:UIControlStateNormal];
            BKbuyBtn.backgroundColor = RGB(42, 134, 250);
        }else{
            [BKbuyBtn setTitle:@"Download" forState:UIControlStateNormal];
            BKbuyBtn.backgroundColor = RGB(42, 134, 250);
        }
    }
}
- (void)BKloadDataWithType:(NSInteger)BKtype{
    NSString *BKuser_id;
    if (UserId) {
        BKuser_id  = UserId;
    }else{
        BKuser_id = @"";
    }
    [MIHttpTool Post:PicList parameters:@{@"pic_type":@(6),@"type":@(BKtype),@"id":self.BKpId,@"user_id":BKuser_id} success:^(id BKresponseObject) {
        NSLog(@"sticker:%@",BKresponseObject);
        if ([BKresponseObject[@"status"] integerValue] == 1) {
            for (NSDictionary *BKdict in BKresponseObject[@"data"]) {
                BKMIHomeModel *BKmodel = [BKMIHomeModel mj_objectWithKeyValues:BKdict];
                self.BKmodel = BKmodel;
                BKmodel.peanut_num = @"0";
                if (BKmodel.peanut_num.floatValue>0) {
                    [self.BKbuyBtn setTitle:@"Buy" forState:UIControlStateNormal];
                    self.BKpriceLabel.text = BKmodel.peanut_num;
                }
                [self.BKheaderImageView sd_setImageWithURL:[NSURL URLWithString:self.BKmodel.pic_url_z] placeholderImage:nil];
                self.BKtitleLabel.text = BKmodel.title;
                [self.BKdataArray addObjectsFromArray:BKmodel.pic_url_detail_array];
            }
        }
        if (self.BKdataArray.count) {
            [self.BKcollectionView reloadData];
        }
    } failure:^(NSError *error) {
    }];
}
- (void)BKcreateRightView{
}
- (void)BKloginSuccess{
    [self BKloadUserModel];
}
- (void)BKtapAction:(UITapGestureRecognizer *)BKtap{
    if (!UserId) {
        BKMILoginVC *BKlogVC = [[BKMILoginVC alloc] init];
        UINavigationController *BKnavi = [[UINavigationController alloc] initWithRootViewController:BKlogVC];
        [self presentViewController:BKnavi animated:YES completion:nil];
        return;
    }
//    BKMIStoreVC *BKstoreVC = [[BKMIStoreVC alloc] init];
//    [self.navigationController pushViewController:BKstoreVC animated:YES];
}
- (void)BKbtnClicked:(UIButton *)BKsender{
    if ([BKsender.titleLabel.text isEqualToString:@"Download"]) {
        __block float i = 0;
        SDLoopProgressView *BKloop = [SDLoopProgressView progressView];
        BKloop.backgroundColor = UIColor.blueColor;
        BKloop.frame = CGRectMake(0, 0, 100, 100);
        BKloop.center = CGPointMake(self.view.centerX, self.view.centerY - 50);
        [self.view addSubview:BKloop];
        for (NSString *BKimgUrl in self.BKmodel.pic_url_detail_array) {
            YWebDownManager *BKwebDownManager = [[YWebDownManager alloc] init];
            BKwebDownManager.folder = self.BKpId;
            [BKwebDownManager startDownImagePath:BKimgUrl];
            [BKwebDownManager downManagerFinishBlockHandle:^(NSString *BKpath) {
                i++;
                if (i == self.BKmodel.pic_url_detail_array.count) {
                    [self.BKbuyBtn setTitle:@"Apply" forState:UIControlStateNormal];
                    self.BKbuyBtn.backgroundColor = RGB(62, 85, 250);
                }
                BKloop.progress = i/self.BKmodel.pic_url_detail_array.count;
            }];
            [BKwebDownManager downManagerProgressBlockHandle:^(CGFloat didFinish, CGFloat didFinishTotal, CGFloat Total) {
            }];
        }
    }else{
        [self BKcanUsePhoto];
    }
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
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            if (status == PHAuthorizationStatusAuthorized) { 
                UIImagePickerController *BKvc = [[UIImagePickerController alloc] init];
                BKvc.delegate = self;
                BKvc.allowsEditing = YES;
                BKvc.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
                [self presentViewController:BKvc animated:YES completion:nil];
            }
        }];
    }
}
- (BKMIHomeModel *)BKmodel{
    if (!_BKmodel) {
        _BKmodel = [[BKMIHomeModel alloc] init];
    }
    return _BKmodel;
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
    ALAssetsLibrary *BKlibrary = [[ALAssetsLibrary alloc] init];
    [BKlibrary assetForURL:BKurl resultBlock:^(ALAsset *BKasset){
        UIImage *BKimage = BKinfo[UIImagePickerControllerOriginalImage];
        BKQMPhotoEffectViewController *BKcmVC = [[BKQMPhotoEffectViewController alloc] initWithImage:BKimage];
        BKcmVC.BKtype = 1;
        BKcmVC.BKresourcePath = [YWebDataHandle documentYWebImageFileWithFolder:self.BKpId];
        [self presentViewController:BKcmVC animated:YES completion:nil];
    }failureBlock:^(NSError *error){
    }];
    [BKpicker dismissViewControllerAnimated:YES completion:nil];
}
- (void)BKloadUserModel{
    [MIHttpTool Post:SHUserDetail parameters:@{@"user_id":UserId} success:^(id BKresponseObject) {
        if ([BKresponseObject[@"status"] integerValue] == 1) {
            BKMIUserModel *BKmodel = [BKMIUserModel mj_objectWithKeyValues:BKresponseObject[@"data"]];
            self.BKuserModel = BKmodel;
            self.BKcoinsLabel.text = BKmodel.peanut_num;
        }
    } failure:^(NSError *error) {
    }];
}
#pragma mark --UICollectionViewdelegate& DataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.BKdataArray.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)BKcollectionView cellForItemAtIndexPath:(NSIndexPath *)BKindexPath{
    static NSString *BKidentify = @"cellId1";
    BKMIStickerDetailCell *BKcell = [BKcollectionView dequeueReusableCellWithReuseIdentifier:BKidentify forIndexPath:BKindexPath];
    BKcell.backgroundColor = UIColor.groupTableViewBackgroundColor;
    BKcell.BKpicUrl = self.BKdataArray[BKindexPath.row];
    return BKcell;
}
#pragma mark  定义每个UICollectionView的大小
- (CGSize)collectionView:(UICollectionView *)BKcollectionView layout:(UICollectionViewLayout *)BKcollectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)BKindexPath{
    NSInteger BKnumPreRow = 5;
    CGFloat BKwidth = (ScreenWidth - 5 * (BKnumPreRow +1)) /BKnumPreRow;
    return CGSizeMake(BKwidth, BKwidth);
}
#pragma mark  定义每个UICollectionView的横向间距
- (CGFloat)collectionView:(UICollectionView *)BKcollectionView layout:(UICollectionViewLayout *)BKcollectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)BKsection{
    return 5;
}
#pragma mark  定义每个UICollectionView的纵向间距
- (CGFloat)collectionView:(UICollectionView *)BKcollectionView layout:(UICollectionViewLayout*)BKcollectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)BKsection{
    return 5;
}
-(UIEdgeInsets)collectionView:(UICollectionView *)BKcollectionView layout:(UICollectionViewLayout *)BKcollectionViewLayout insetForSectionAtIndex:(NSInteger)BKsection{
    return UIEdgeInsetsMake(5, 5, 5, 5);
}
@end
