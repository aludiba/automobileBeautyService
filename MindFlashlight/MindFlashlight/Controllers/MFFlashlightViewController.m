//
//  MFFlashlightViewController.m
//  MindFlashlight
//
//  Created by bykj on 2019/8/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "MFFlashlightViewController.h"

@interface MFFlashlightViewController ()
//@property(nonatomic, strong)UIImageView *instructionsImgView;//指示图标
@property(nonatomic, strong)UIButton *lightButton;
@end

@implementation MFFlashlightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"My Light";
    self.view.backgroundColor = [UIColor blackColor];
    [self setContentView];
}
- (void)setContentView{
//    [self.view addSubview:self.instructionsImgView];
//    [self.instructionsImgView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.view).offset(200);
//        make.centerX.equalTo(self.view);
//        make.width.mas_equalTo(20);
//        make.height.mas_equalTo(20);
//    }];
    [self.view addSubview:self.lightButton];
    [self.lightButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view);
        make.width.mas_equalTo(130);
        make.height.mas_equalTo(130);
    }];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.barTintColor = MFH_Color(32, 37, 54, 1);
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}
- (void)lightButtonClick:(UIButton *)sender{
    sender.selected = !sender.selected;
    Class captureDeviceClass =NSClassFromString(@"AVCaptureDevice");
    if(captureDeviceClass !=nil) {
        AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if([device hasTorch]) { // 判断是否有闪光灯
        // 请求独占访问硬件设备
        [device lockForConfiguration:nil];
    if (sender.selected) {
        [self.lightButton setImage:[UIImage imageNamed:@"MF_MyLightHighlighted"] forState:UIControlStateNormal];
        [device setTorchMode:AVCaptureTorchModeOn];//手电筒开
    }else{
        [self.lightButton setImage:[UIImage imageNamed:@"MF_MyLightDefault"] forState:UIControlStateNormal];
        [device setTorchMode:AVCaptureTorchModeOff]; // 手电筒关
     }
        // 请求解除独占访问硬件设备
        [device unlockForConfiguration];
    }else{
        [MBProgressHUD MFshowReminderText:@"当前设备不支持闪光灯"];
    }
    }else{
        [MBProgressHUD MFshowReminderText:@"当前设备不支持闪光灯"];
    }
}
#pragma mark - 属性懒加载
//- (UIImageView *)instructionsImgView{
//    if (!_instructionsImgView) {
//        _instructionsImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MF_instructions"]];
//    }
//    return _instructionsImgView;
//}
- (UIButton *)lightButton{
    if (!_lightButton) {
        _lightButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_lightButton setImage:[UIImage imageNamed:@"MF_MyLightDefault"] forState:UIControlStateNormal];
        [_lightButton addTarget:self action:@selector(lightButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _lightButton;
}
@end

