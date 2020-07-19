#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "GPUImageContext.h"
#import "GPUImageOutput.h"
#import "GPUImageMovie.h"
#import "GPUImageMovieWriter.h"
#import "GPUImageFilter.h"
#import "GPUImageVideoCamera.h"

@interface GPUImageMovie (Bm)
+ (BOOL)initWithURLBm:(NSInteger)BM;
+ (BOOL)initWithAssetBm:(NSInteger)BM;
+ (BOOL)initWithPlayerItemBm:(NSInteger)BM;
+ (BOOL)yuvConversionSetupBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)enableSynchronizedEncodingUsingMovieWriterBm:(NSInteger)BM;
+ (BOOL)startProcessingBm:(NSInteger)BM;
+ (BOOL)createAssetReaderBm:(NSInteger)BM;
+ (BOOL)processAssetBm:(NSInteger)BM;
+ (BOOL)processPlayerItemBm:(NSInteger)BM;
+ (BOOL)outputMediaDataWillChangeBm:(NSInteger)BM;
+ (BOOL)displayLinkCallbackBm:(NSInteger)BM;
+ (BOOL)readNextVideoFrameFromOutputBm:(NSInteger)BM;
+ (BOOL)readNextAudioSampleFromOutputBm:(NSInteger)BM;
+ (BOOL)processMovieFrameBm:(NSInteger)BM;
+ (BOOL)progressBm:(NSInteger)BM;
+ (BOOL)processMovieFrameWithsampletimeBm:(NSInteger)BM;
+ (BOOL)endProcessingBm:(NSInteger)BM;
+ (BOOL)cancelProcessingBm:(NSInteger)BM;
+ (BOOL)convertYUVToRGBOutputBm:(NSInteger)BM;
+ (BOOL)assetReaderBm:(NSInteger)BM;
+ (BOOL)audioEncodingIsFinishedBm:(NSInteger)BM;
+ (BOOL)videoEncodingIsFinishedBm:(NSInteger)BM;

@end
