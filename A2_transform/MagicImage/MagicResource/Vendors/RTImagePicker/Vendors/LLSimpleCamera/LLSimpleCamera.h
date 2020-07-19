#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
typedef enum : NSUInteger {
    LLCameraPositionRear,
    LLCameraPositionFront
} LLCameraPosition;
typedef enum : NSUInteger {
    LLCameraFlashOff,
    LLCameraFlashOn,
    LLCameraFlashAuto
} LLCameraFlash;
typedef enum : NSUInteger {
    LLCameraMirrorOff,
    LLCameraMirrorOn,
    LLCameraMirrorAuto
} LLCameraMirror;
extern NSString *const LLSimpleCameraErrorDomain;
typedef enum : NSUInteger {
    LLSimpleCameraErrorCodeCameraPermission = 10,
    LLSimpleCameraErrorCodeMicrophonePermission = 11,
    LLSimpleCameraErrorCodeSession = 12,
    LLSimpleCameraErrorCodeVideoNotEnabled = 13
} LLSimpleCameraErrorCode;
@interface LLSimpleCamera : UIViewController
@property (nonatomic, copy) void (^onDeviceChange)(LLSimpleCamera *camera, AVCaptureDevice *device);
@property (nonatomic, copy) void (^onError)(LLSimpleCamera *camera, NSError *error);
@property (copy, nonatomic) NSString *cameraQuality;
@property (nonatomic, readonly) LLCameraFlash flash;
@property (nonatomic) LLCameraMirror mirror;
@property (nonatomic) LLCameraPosition position;
@property (nonatomic) AVCaptureWhiteBalanceMode whiteBalanceMode;
@property (nonatomic, getter=isVideoEnabled) BOOL videoEnabled;
@property (nonatomic, getter=isRecording) BOOL recording;
@property (nonatomic, getter=isZoomingEnabled) BOOL zoomingEnabled;
@property (nonatomic, assign) CGFloat maxScale;
@property (nonatomic) BOOL fixOrientationAfterCapture;
@property (nonatomic) BOOL tapToFocus;
@property (nonatomic) BOOL useDeviceOrientation;
+ (void)requestCameraPermission:(void (^)(BOOL granted))completionBlock;
+ (void)requestMicrophonePermission:(void (^)(BOOL granted))completionBlock;
- (instancetype)initWithQuality:(NSString *)quality position:(LLCameraPosition)position videoEnabled:(BOOL)videoEnabled;
- (instancetype)initWithVideoEnabled:(BOOL)videoEnabled;
- (void)start;
- (void)stop;
-(void)capture:(void (^)(LLSimpleCamera *camera, UIImage *image, NSDictionary *metadata, NSError *error))onCapture exactSeenImage:(BOOL)exactSeenImage;
-(void)capture:(void (^)(LLSimpleCamera *camera, UIImage *image, NSDictionary *metadata, NSError *error))onCapture;
- (void)startRecordingWithOutputUrl:(NSURL *)url;
- (void)stopRecording:(void (^)(LLSimpleCamera *camera, NSURL *outputFileUrl, NSError *error))completionBlock;
- (void)attachToViewController:(UIViewController *)vc withFrame:(CGRect)frame;
- (LLCameraPosition)togglePosition;
- (BOOL)updateFlashMode:(LLCameraFlash)cameraFlash;
- (BOOL)isFlashAvailable;
- (BOOL)isTorchAvailable;
- (void)alterFocusBox:(CALayer *)layer animation:(CAAnimation *)animation;
+ (BOOL)isFrontCameraAvailable;
+ (BOOL)isRearCameraAvailable;
@end
