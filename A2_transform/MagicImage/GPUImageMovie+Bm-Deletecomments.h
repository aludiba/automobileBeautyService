#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "GPUImageContext.h"
#import "GPUImageOutput.h"
#import "GPUImageMovie.h"
#import "GPUImageMovieWriter.h"
#import "GPUImageFilter.h"
#import "GPUImageVideoCamera.h"
#import "GPUImageMovie+Bm.h"

@interface GPUImageMovie (Bm-Deletecomments)
+ (BOOL)initWithURLBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithAssetBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithPlayerItemBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)yuvConversionSetupBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)deallocBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)enableSynchronizedEncodingUsingMovieWriterBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)startProcessingBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)createAssetReaderBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)processAssetBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)processPlayerItemBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)outputMediaDataWillChangeBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)displayLinkCallbackBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)readNextVideoFrameFromOutputBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)readNextAudioSampleFromOutputBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)processMovieFrameBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)progressBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)processMovieFrameWithsampletimeBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)endProcessingBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)cancelProcessingBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)convertYUVToRGBOutputBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)assetReaderBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)audioEncodingIsFinishedBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)videoEncodingIsFinishedBm-Deletecomments:(NSInteger)-deleteComments;

@end
