#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "GPUImageContext.h"
#import "GPUImageOutput.h"
#import "GPUImageMovie.h"
#import "GPUImageMovieWriter.h"
#import "GPUImageFilter.h"
#import "GPUImageVideoCamera.h"
#import "GPUImageMovie+Bm.h"

@interface GPUImageMovie (BmBm)
+ (BOOL)initWithURLBmBm:(NSInteger)BM;
+ (BOOL)initWithAssetBmBm:(NSInteger)BM;
+ (BOOL)initWithPlayerItemBmBm:(NSInteger)BM;
+ (BOOL)yuvConversionSetupBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBm:(NSInteger)BM;
+ (BOOL)enableSynchronizedEncodingUsingMovieWriterBmBm:(NSInteger)BM;
+ (BOOL)startProcessingBmBm:(NSInteger)BM;
+ (BOOL)createAssetReaderBmBm:(NSInteger)BM;
+ (BOOL)processAssetBmBm:(NSInteger)BM;
+ (BOOL)processPlayerItemBmBm:(NSInteger)BM;
+ (BOOL)outputMediaDataWillChangeBmBm:(NSInteger)BM;
+ (BOOL)displayLinkCallbackBmBm:(NSInteger)BM;
+ (BOOL)readNextVideoFrameFromOutputBmBm:(NSInteger)BM;
+ (BOOL)readNextAudioSampleFromOutputBmBm:(NSInteger)BM;
+ (BOOL)processMovieFrameBmBm:(NSInteger)BM;
+ (BOOL)progressBmBm:(NSInteger)BM;
+ (BOOL)processMovieFrameWithsampletimeBmBm:(NSInteger)BM;
+ (BOOL)endProcessingBmBm:(NSInteger)BM;
+ (BOOL)cancelProcessingBmBm:(NSInteger)BM;
+ (BOOL)convertYUVToRGBOutputBmBm:(NSInteger)BM;
+ (BOOL)assetReaderBmBm:(NSInteger)BM;
+ (BOOL)audioEncodingIsFinishedBmBm:(NSInteger)BM;
+ (BOOL)videoEncodingIsFinishedBmBm:(NSInteger)BM;

@end
