#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "GPUImageContext.h"
#import "GPUImageOutput.h"
#import "GPUImageMovie.h"
#import "GPUImageMovieWriter.h"
#import "GPUImageFilter.h"
#import "GPUImageVideoCamera.h"
#import "GPUImageMovie+Bm.h"
#import "GPUImageMovie+BmBm.h"

@interface GPUImageMovie (BmBmBm)
+ (BOOL)initWithURLBmBmBm:(NSInteger)BM;
+ (BOOL)initWithAssetBmBmBm:(NSInteger)BM;
+ (BOOL)initWithPlayerItemBmBmBm:(NSInteger)BM;
+ (BOOL)yuvConversionSetupBmBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBmBm:(NSInteger)BM;
+ (BOOL)enableSynchronizedEncodingUsingMovieWriterBmBmBm:(NSInteger)BM;
+ (BOOL)startProcessingBmBmBm:(NSInteger)BM;
+ (BOOL)createAssetReaderBmBmBm:(NSInteger)BM;
+ (BOOL)processAssetBmBmBm:(NSInteger)BM;
+ (BOOL)processPlayerItemBmBmBm:(NSInteger)BM;
+ (BOOL)outputMediaDataWillChangeBmBmBm:(NSInteger)BM;
+ (BOOL)displayLinkCallbackBmBmBm:(NSInteger)BM;
+ (BOOL)readNextVideoFrameFromOutputBmBmBm:(NSInteger)BM;
+ (BOOL)readNextAudioSampleFromOutputBmBmBm:(NSInteger)BM;
+ (BOOL)processMovieFrameBmBmBm:(NSInteger)BM;
+ (BOOL)progressBmBmBm:(NSInteger)BM;
+ (BOOL)processMovieFrameWithsampletimeBmBmBm:(NSInteger)BM;
+ (BOOL)endProcessingBmBmBm:(NSInteger)BM;
+ (BOOL)cancelProcessingBmBmBm:(NSInteger)BM;
+ (BOOL)convertYUVToRGBOutputBmBmBm:(NSInteger)BM;
+ (BOOL)assetReaderBmBmBm:(NSInteger)BM;
+ (BOOL)audioEncodingIsFinishedBmBmBm:(NSInteger)BM;
+ (BOOL)videoEncodingIsFinishedBmBmBm:(NSInteger)BM;

@end
