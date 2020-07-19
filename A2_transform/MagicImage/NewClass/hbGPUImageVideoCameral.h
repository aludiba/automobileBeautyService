#import <Foundation/Foundation.h>
@interface hbGPUImageVideoCameral: NSObject
+ (BOOL)finit:(NSInteger)hb;
+ (BOOL)KInitwithsessionpresetlCameraposition:(NSInteger)hb;
+ (BOOL)SframebufferForOutput:(NSInteger)hb;
+ (BOOL)Ldealloc:(NSInteger)hb;
+ (BOOL)gaddAudioInputsAndOutputs:(NSInteger)hb;
+ (BOOL)premoveAudioInputsAndOutputs:(NSInteger)hb;
+ (BOOL)SremoveInputsAndOutputs:(NSInteger)hb;
+ (BOOL)TAddtargetLAttexturelocation:(NSInteger)hb;
+ (BOOL)QstartCameraCapture:(NSInteger)hb;
+ (BOOL)gstopCameraCapture:(NSInteger)hb;
+ (BOOL)JpauseCameraCapture:(NSInteger)hb;
+ (BOOL)fresumeCameraCapture:(NSInteger)hb;
+ (BOOL)grotateCamera:(NSInteger)hb;
+ (BOOL)icameraPosition:(NSInteger)hb;
+ (BOOL)wisBackFacingCameraPresent:(NSInteger)hb;
+ (BOOL)bisBackFacingCameraPresent:(NSInteger)hb;
+ (BOOL)GisFrontFacingCameraPresent:(NSInteger)hb;
+ (BOOL)iisFrontFacingCameraPresent:(NSInteger)hb;
+ (BOOL)sSetcapturesessionpreset:(NSInteger)hb;
+ (BOOL)FSetframerate:(NSInteger)hb;
+ (BOOL)eframeRate:(NSInteger)hb;
+ (BOOL)avideoCaptureConnection:(NSInteger)hb;
+ (BOOL)TUpdatetargetsforvideocamerausingcachetextureatwidthaHeightcTime:(NSInteger)hb;
+ (BOOL)lProcessvideosamplebuffer:(NSInteger)hb;
+ (BOOL)pProcessaudiosamplebuffer:(NSInteger)hb;
+ (BOOL)RconvertYUVToRGBOutput:(NSInteger)hb;
+ (BOOL)laverageFrameDurationDuringCapture:(NSInteger)hb;
+ (BOOL)zresetBenchmarkAverage:(NSInteger)hb;
+ (BOOL)UCaptureoutputUDidoutputsamplebufferHFromconnection:(NSInteger)hb;
+ (BOOL)dSetaudioencodingtarget:(NSInteger)hb;
+ (BOOL)AupdateOrientationSendToTargets:(NSInteger)hb;
+ (BOOL)YSetoutputimageorientation:(NSInteger)hb;
+ (BOOL)ESethorizontallymirrorfrontfacingcamera:(NSInteger)hb;
+ (BOOL)cSethorizontallymirrorrearfacingcamera:(NSInteger)hb;

@end
