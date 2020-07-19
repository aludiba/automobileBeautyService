#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "GPUImageContext.h"
#import "GPUImageOutput.h"
#import "GPUImageMovie.h"
#import "GPUImageMovieWriter.h"
#import "GPUImageFilter.h"
#import "GPUImageVideoCamera.h"

@interface GPUImageMovie (Hb)
+ (BOOL)initWithURLHb:(NSInteger)hb;
+ (BOOL)initWithAssetHb:(NSInteger)hb;
+ (BOOL)initWithPlayerItemHb:(NSInteger)hb;
+ (BOOL)yuvConversionSetupHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)enableSynchronizedEncodingUsingMovieWriterHb:(NSInteger)hb;
+ (BOOL)startProcessingHb:(NSInteger)hb;
+ (BOOL)createAssetReaderHb:(NSInteger)hb;
+ (BOOL)processAssetHb:(NSInteger)hb;
+ (BOOL)processPlayerItemHb:(NSInteger)hb;
+ (BOOL)outputMediaDataWillChangeHb:(NSInteger)hb;
+ (BOOL)displayLinkCallbackHb:(NSInteger)hb;
+ (BOOL)readNextVideoFrameFromOutputHb:(NSInteger)hb;
+ (BOOL)readNextAudioSampleFromOutputHb:(NSInteger)hb;
+ (BOOL)processMovieFrameHb:(NSInteger)hb;
+ (BOOL)progressHb:(NSInteger)hb;
+ (BOOL)processMovieFrameWithsampletimeHb:(NSInteger)hb;
+ (BOOL)endProcessingHb:(NSInteger)hb;
+ (BOOL)cancelProcessingHb:(NSInteger)hb;
+ (BOOL)convertYUVToRGBOutputHb:(NSInteger)hb;
+ (BOOL)assetReaderHb:(NSInteger)hb;
+ (BOOL)audioEncodingIsFinishedHb:(NSInteger)hb;
+ (BOOL)videoEncodingIsFinishedHb:(NSInteger)hb;

@end
