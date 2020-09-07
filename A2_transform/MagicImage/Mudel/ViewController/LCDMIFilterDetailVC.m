#import "LCDMIFilterDetailVC.h"
#import "LCDMIFilterDetialCell.h"
#import "LCDMIHomeModel.h"
#import "LCDQMPhotoEffectViewController.h"
#import <Photos/Photos.h>
#import <AssetsLibrary/AssetsLibrary.h>
@interface LCDMIFilterDetailVC ()<UITableViewDelegate,UITableViewDataSource,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (nonatomic, strong) UITableView *LCDtableView;
@property (nonatomic, strong) NSMutableArray *LCDdataArray;
@end
@implementation LCDMIFilterDetailVC
- (UITableView *)LCDtableView{
    if (!_LCDtableView) {
        _LCDtableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _LCDtableView.backgroundColor = [UIColor cyanColor];
        _LCDtableView.delegate = self;
        _LCDtableView.dataSource = self;
        _LCDtableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _LCDtableView;
}
- (NSMutableArray *)LCDdataArray{
    if (!_LCDdataArray) {
        _LCDdataArray = @[].mutableCopy;
    }
    return _LCDdataArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = self.LCDmodel.title;
    [self.view addSubview:self.LCDtableView];
    self.LCDtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view)
    .bottomSpaceToView(self.view, 0);
    UIView *LCDbottomView = [[UIView alloc] init];
    LCDbottomView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:LCDbottomView];
    LCDbottomView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .bottomSpaceToView(self.view, 10)
    .heightIs(50);
    UIButton *LCDbuyBtn = [[UIButton alloc] init];
    [LCDbuyBtn setTitle:@"Apply" forState:UIControlStateNormal];
    [LCDbuyBtn setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    LCDbuyBtn.layer.cornerRadius = 16;
    LCDbuyBtn.layer.masksToBounds = YES;
    if (@available(iOS 9.0, *)) {
        LCDbuyBtn.backgroundColor = [UIColor systemPurpleColor];
    } else {
        LCDbuyBtn.backgroundColor = [UIColor purpleColor];
    }
    [LCDbuyBtn addTarget:self action:@selector(LCDbtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [LCDbottomView addSubview:LCDbuyBtn];
    LCDbuyBtn.sd_layout
    .leftSpaceToView(LCDbottomView, 50)
    .rightSpaceToView(LCDbottomView, 50)
    .centerYEqualToView(LCDbottomView)
    .heightIs(45);
     [self LCDloadData];
}
- (void)LCDbtnClicked:(UIButton *)sender{
    [self LCDcanUsePhoto];
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
    [LCDlibrary assetForURL:LCDurl resultBlock:^(ALAsset *asset){
        UIImage *LCDimage = LCDinfo[UIImagePickerControllerOriginalImage];
        LCDQMPhotoEffectViewController *LCDcmVC = [[LCDQMPhotoEffectViewController alloc] initWithImage:LCDimage];
        LCDcmVC.LCDtype = 3;
        [self presentViewController:LCDcmVC animated:YES completion:nil];
    }failureBlock:^(NSError *error){
    }];
    [LCDpicker dismissViewControllerAnimated:YES completion:nil];
}
- (void)LCDloadData{
        [MIHttpTool Post:PicList parameters:@{@"pic_type":@(1),@"type":@(2),@"id":self.LCDpid} success:^(id LCDresponseObject) {
        if ([LCDresponseObject[@"status"] integerValue] == 1) {
            if ([LCDresponseObject[@"data"] count]) {
            NSDictionary *LCDdict = [LCDresponseObject[@"data"] objectAtIndex:0];
            LCDMIHomeModel *LCDmodel = [LCDMIHomeModel mj_objectWithKeyValues:LCDdict];
            [self.LCDdataArray addObjectsFromArray:LCDmodel.pic_url_detail_array];
            }
        }
            if (self.LCDdataArray.count) {
                [self.LCDtableView reloadData];
            }
    } failure:^(NSError *error) {
        MyLog(@"%@",error);
    }];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.LCDdataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LCDMIFilterDetialCell *LCDcell = [tableView dequeueReusableCellWithIdentifier:@"LCDMIFilterDetialCell"];
    if (!LCDcell) {
        LCDcell = [[LCDMIFilterDetialCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"LCDMIFilterDetialCell"];
    }
    LCDcell.LCDimageUrl = self.LCDdataArray[indexPath.row];
    return LCDcell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return ScreenHeight*3/4;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.01;
}
- (UIView * )tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return [UIView new];
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.01;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [UIView new];
}
@end
