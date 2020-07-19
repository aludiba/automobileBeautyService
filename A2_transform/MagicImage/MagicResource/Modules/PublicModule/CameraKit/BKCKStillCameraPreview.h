#import <GPUImage/GPUImage.h>
#import <ReactiveObjC.h>
@interface BKCKStillCameraPreview : GPUImageView
@property (nonatomic, strong, readonly) RACSignal *BKpinchGestureSignal;
@property (nonatomic, strong, readonly) RACSignal *BKtapGestureSignal;
@property (nonatomic, strong, readonly) RACSignal *BKswipeRightGestureSignal;
@property (nonatomic, strong, readonly) RACSignal *BKswipeLeftGestureSignal;
@end
