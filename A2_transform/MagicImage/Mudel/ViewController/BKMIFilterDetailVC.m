#import "BKMIFilterDetailVC.h"
#import "BKMIFilterDetialCell.h"
#import "BKMIHomeModel.h"
#import "BKQMPhotoEffectViewController.h"
#import <Photos/Photos.h>
#import <AssetsLibrary/AssetsLibrary.h>
@interface BKMIFilterDetailVC ()<UITableViewDelegate,UITableViewDataSource,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (nonatomic, strong) UITableView *BKtableView;
@property (nonatomic, strong) NSMutableArray *BKdataArray;
@end
@implementation BKMIFilterDetailVC
- (UITableView *)BKtableView{
    if (!_BKtableView) {
        _BKtableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _BKtableView.delegate = self;
        _BKtableView.dataSource = self;
        _BKtableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _BKtableView;
}
- (NSMutableArray *)BKdataArray{
    if (!_BKdataArray) {
        _BKdataArray = @[].mutableCopy;
    }
    return _BKdataArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    self.title = self.BKmodel.title;
    [self.view addSubview:self.BKtableView];
    self.BKtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view)
    .bottomSpaceToView(self.view, 0);
    UIView *BKbottomView = [[UIView alloc] init];
    [self.view addSubview:BKbottomView];
    BKbottomView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .bottomSpaceToView(self.view, 10)
    .heightIs(50);
    UIButton *BKbuyBtn = [[UIButton alloc] init];
    [BKbuyBtn setTitle:@"Apply" forState:UIControlStateNormal];
    [BKbuyBtn setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    BKbuyBtn.layer.cornerRadius = 6;
    BKbuyBtn.layer.masksToBounds = YES;
    BKbuyBtn.backgroundColor = RGB(62, 85, 250);
    [BKbuyBtn addTarget:self action:@selector(BKbtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [BKbottomView addSubview:BKbuyBtn];
    BKbuyBtn.sd_layout
    .leftSpaceToView(BKbottomView, 25)
    .rightSpaceToView(BKbottomView, 25)
    .centerYEqualToView(BKbottomView)
    .heightIs(45);
     [self BKloadData];
}
- (void)BKbtnClicked:(UIButton *)sender{
    [self BKcanUsePhoto];
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
    [BKlibrary assetForURL:BKurl resultBlock:^(ALAsset *asset){
        UIImage *BKimage = BKinfo[UIImagePickerControllerOriginalImage];
        BKQMPhotoEffectViewController *BKcmVC = [[BKQMPhotoEffectViewController alloc] initWithImage:BKimage];
        BKcmVC.BKtype = 3;
        [self presentViewController:BKcmVC animated:YES completion:nil];
    }failureBlock:^(NSError *error){
    }];
    [BKpicker dismissViewControllerAnimated:YES completion:nil];
}
- (void)BKloadData{
        [MIHttpTool Post:PicList parameters:@{@"pic_type":@(1),@"type":@(2),@"id":self.BKpid} success:^(id BKresponseObject) {
        if ([BKresponseObject[@"status"] integerValue] == 1) {
            if ([BKresponseObject[@"data"] count]) {
            NSDictionary *BKdict = [BKresponseObject[@"data"] objectAtIndex:0];
            BKMIHomeModel *BKmodel = [BKMIHomeModel mj_objectWithKeyValues:BKdict];
            [self.BKdataArray addObjectsFromArray:BKmodel.pic_url_detail_array];
            }
        }
            if (self.BKdataArray.count) {
                [self.BKtableView reloadData];
            }
    } failure:^(NSError *error) {
        MyLog(@"%@",error);
    }];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BKdataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BKMIFilterDetialCell *BKcell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!BKcell) {
        BKcell = [[BKMIFilterDetialCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    BKcell.BKimageUrl = self.BKdataArray[indexPath.row];
    return BKcell;
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
