#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "GPUImageContext.h"
#import "GPUImageOutput.h"
#import "GPUImageMovie.h"
#import "GPUImageMovieWriter.h"
#import "GPUImageFilter.h"
#import "GPUImageVideoCamera.h"
#import "GPUImageMovie+Bm.h"

@interface GPUImageMovie (BmHb)
+ (BOOL)initWithURLBmHb:(NSInteger)hb;
+ (BOOL)initWithAssetBmHb:(NSInteger)hb;
+ (BOOL)initWithPlayerItemBmHb:(NSInteger)hb;
+ (BOOL)yuvConversionSetupBmHb:(NSInteger)hb;
+ (BOOL)deallocBmHb:(NSInteger)hb;
+ (BOOL)enableSynchronizedEncodingUsingMovieWriterBmHb:(NSInteger)hb;
+ (BOOL)startProcessingBmHb:(NSInteger)hb;
+ (BOOL)createAssetReaderBmHb:(NSInteger)hb;
+ (BOOL)processAssetBmHb:(NSInteger)hb;
+ (BOOL)processPlayerItemBmHb:(NSInteger)hb;
+ (BOOL)outputMediaDataWillChangeBmHb:(NSInteger)hb;
+ (BOOL)displayLinkCallbackBmHb:(NSInteger)hb;
+ (BOOL)readNextVideoFrameFromOutputBmHb:(NSInteger)hb;
+ (BOOL)readNextAudioSampleFromOutputBmHb:(NSInteger)hb;
+ (BOOL)processMovieFrameBmHb:(NSInteger)hb;
+ (BOOL)progressBmHb:(NSInteger)hb;
+ (BOOL)processMovieFrameWithsampletimeBmHb:(NSInteger)hb;
+ (BOOL)endProcessingBmHb:(NSInteger)hb;
+ (BOOL)cancelProcessingBmHb:(NSInteger)hb;
+ (BOOL)convertYUVToRGBOutputBmHb:(NSInteger)hb;
+ (BOOL)assetReaderBmHb:(NSInteger)hb;
+ (BOOL)audioEncodingIsFinishedBmHb:(NSInteger)hb;
+ (BOOL)videoEncodingIsFinishedBmHb:(NSInteger)hb;

@end
