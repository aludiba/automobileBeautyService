#import "LCDQMSuspensionView.h"
#import "Constants.h"
#import <AVFoundation/AVFoundation.h>
@interface LCDQMCameraFlashSuspensionView : LCDQMSuspensionView
@property (nonatomic, copy) void (^LCDflashCallBack)(AVCaptureFlashMode flash, AVCaptureTorchMode torch, NSString *icon);
+ (instancetype)LCDflashSuspensionView;
@end
