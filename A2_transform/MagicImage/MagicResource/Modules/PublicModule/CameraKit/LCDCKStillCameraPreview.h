#import <GPUImage/GPUImage.h>
#import <ReactiveObjC.h>
@interface LCDCKStillCameraPreview : GPUImageView
@property (nonatomic, strong, readonly) RACSignal *LCDpinchGestureSignal;
@property (nonatomic, strong, readonly) RACSignal *LCDtapGestureSignal;
@property (nonatomic, strong, readonly) RACSignal *LCDswipeRightGestureSignal;
@property (nonatomic, strong, readonly) RACSignal *LCDswipeLeftGestureSignal;
@end
