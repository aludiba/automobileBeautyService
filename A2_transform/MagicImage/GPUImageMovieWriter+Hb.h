#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "GPUImageContext.h"
#import "GPUImageMovieWriter.h"
#import "GPUImageContext.h"
#import "GLProgram.h"
#import "GPUImageFilter.h"

@interface GPUImageMovieWriter (Hb)
+ (BOOL)initWithMovieURLSizeHb:(NSInteger)hb;
+ (BOOL)initWithMovieURLSizeFiletypeOutputsettingsHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)initializeMovieWithOutputSettingsHb:(NSInteger)hb;
+ (BOOL)setEncodingLiveVideoHb:(NSInteger)hb;
+ (BOOL)startRecordingHb:(NSInteger)hb;
+ (BOOL)startRecordingInOrientationHb:(NSInteger)hb;
+ (BOOL)cancelRecordingHb:(NSInteger)hb;
+ (BOOL)finishRecordingHb:(NSInteger)hb;
+ (BOOL)finishRecordingWithCompletionHandlerHb:(NSInteger)hb;
+ (BOOL)processAudioBufferHb:(NSInteger)hb;
+ (BOOL)enableSynchronizationCallbacksHb:(NSInteger)hb;
+ (BOOL)createDataFBOHb:(NSInteger)hb;
+ (BOOL)destroyDataFBOHb:(NSInteger)hb;
+ (BOOL)setFilterFBOHb:(NSInteger)hb;
+ (BOOL)renderAtInternalSizeUsingFramebufferHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb;
+ (BOOL)nextAvailableTextureIndexHb:(NSInteger)hb;
+ (BOOL)setInputFramebufferAtindexHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb;
+ (BOOL)maximumOutputSizeHb:(NSInteger)hb;
+ (BOOL)endProcessingHb:(NSInteger)hb;
+ (BOOL)shouldIgnoreUpdatesToThisTargetHb:(NSInteger)hb;
+ (BOOL)wantsMonochromeInputHb:(NSInteger)hb;
+ (BOOL)setCurrentlyReceivingMonochromeInputHb:(NSInteger)hb;
+ (BOOL)setHasAudioTrackHb:(NSInteger)hb;
+ (BOOL)setHasAudioTrackAudiosettingsHb:(NSInteger)hb;
+ (BOOL)metaDataHb:(NSInteger)hb;
+ (BOOL)setMetaDataHb:(NSInteger)hb;
+ (BOOL)durationHb:(NSInteger)hb;
+ (BOOL)transformHb:(NSInteger)hb;
+ (BOOL)setTransformHb:(NSInteger)hb;
+ (BOOL)assetWriterHb:(NSInteger)hb;

@end
