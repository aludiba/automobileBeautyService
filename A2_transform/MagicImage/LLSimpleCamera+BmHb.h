#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "LLSimpleCamera.h"
#import <ImageIO/CGImageProperties.h>
#import "UIImage+FixOrientation.h"
#import "LLSimpleCamera+Bm.h"

@interface LLSimpleCamera (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)initWithVideoEnabledBmHb:(NSInteger)hb;
+ (BOOL)initWithQualityPositionVideoenabledBmHb:(NSInteger)hb;
+ (BOOL)initWithCoderBmHb:(NSInteger)hb;
+ (BOOL)setupWithQualityPositionVideoenabledBmHb:(NSInteger)hb;
+ (BOOL)viewDidLoadBmHb:(NSInteger)hb;
+ (BOOL)gestureRecognizerShouldBeginBmHb:(NSInteger)hb;
+ (BOOL)handlePinchGestureBmHb:(NSInteger)hb;
+ (BOOL)attachToViewControllerWithframeBmHb:(NSInteger)hb;
+ (BOOL)startBmHb:(NSInteger)hb;
+ (BOOL)initializeBmHb:(NSInteger)hb;
+ (BOOL)stopBmHb:(NSInteger)hb;
+ (BOOL)captureExactseenimageBmHb:(NSInteger)hb;
+ (BOOL)captureBmHb:(NSInteger)hb;
+ (BOOL)startRecordingWithOutputUrlBmHb:(NSInteger)hb;
+ (BOOL)stopRecordingBmHb:(NSInteger)hb;
+ (BOOL)captureOutputDidstartrecordingtooutputfileaturlFromconnectionsBmHb:(NSInteger)hb;
+ (BOOL)captureOutputDidfinishrecordingtooutputfileaturlFromconnectionsErrorBmHb:(NSInteger)hb;
+ (BOOL)enableTorchBmHb:(NSInteger)hb;
+ (BOOL)cropImageUsingPreviewBoundsBmHb:(NSInteger)hb;
+ (BOOL)captureConnectionBmHb:(NSInteger)hb;
+ (BOOL)setVideoCaptureDeviceBmHb:(NSInteger)hb;
+ (BOOL)isFlashAvailableBmHb:(NSInteger)hb;
+ (BOOL)isTorchAvailableBmHb:(NSInteger)hb;
+ (BOOL)updateFlashModeBmHb:(NSInteger)hb;
+ (BOOL)setWhiteBalanceModeBmHb:(NSInteger)hb;
+ (BOOL)setMirrorBmHb:(NSInteger)hb;
+ (BOOL)togglePositionBmHb:(NSInteger)hb;
+ (BOOL)setCameraPositionBmHb:(NSInteger)hb;
+ (BOOL)cameraWithPositionBmHb:(NSInteger)hb;
+ (BOOL)previewTappedBmHb:(NSInteger)hb;
+ (BOOL)addDefaultFocusBoxBmHb:(NSInteger)hb;
+ (BOOL)alterFocusBoxAnimationBmHb:(NSInteger)hb;
+ (BOOL)focusAtPointBmHb:(NSInteger)hb;
+ (BOOL)showFocusBoxBmHb:(NSInteger)hb;
+ (BOOL)convertToPointOfInterestFromViewCoordinatesBmHb:(NSInteger)hb;
+ (BOOL)viewWillAppearBmHb:(NSInteger)hb;
+ (BOOL)viewWillDisappearBmHb:(NSInteger)hb;
+ (BOOL)viewWillLayoutSubviewsBmHb:(NSInteger)hb;
+ (BOOL)orientationForConnectionBmHb:(NSInteger)hb;
+ (BOOL)willRotateToInterfaceOrientationDurationBmHb:(NSInteger)hb;
+ (BOOL)didReceiveMemoryWarningBmHb:(NSInteger)hb;
+ (BOOL)deallocBmHb:(NSInteger)hb;
+ (BOOL)requestCameraPermissionBmHb:(NSInteger)hb;
+ (BOOL)requestMicrophonePermissionBmHb:(NSInteger)hb;
+ (BOOL)isFrontCameraAvailableBmHb:(NSInteger)hb;
+ (BOOL)isRearCameraAvailableBmHb:(NSInteger)hb;

@end
