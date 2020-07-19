#import "GPUImageVideoCamera.h"
#import "GPUImageStillCamera.h"

@interface GPUImageStillCamera (-Deletecomments)
+ (BOOL)initWithSessionPresetCameraposition-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)removeInputsAndOutputs-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)capturePhotoAsSampleBufferWithCompletionHandler-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithcompletionhandler-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithorientationWithcompletionhandler-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithcompletionhandler-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithorientationWithcompletionhandler-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithcompletionhandler-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithorientationWithcompletionhandler-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)capturePhotoProcessedUpToFilterWithimageongpuhandler-Deletecomments:(NSInteger)-deleteComments;

@end
