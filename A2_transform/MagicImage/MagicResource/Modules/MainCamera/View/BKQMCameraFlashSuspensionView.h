#import "BKQMSuspensionView.h"
#import "Constants.h"
#import <AVFoundation/AVFoundation.h>
@interface BKQMCameraFlashSuspensionView : BKQMSuspensionView
@property (nonatomic, copy) void (^BKflashCallBack)(AVCaptureFlashMode flash, AVCaptureTorchMode torch, NSString *icon);
+ (instancetype)BKflashSuspensionView;
@end
