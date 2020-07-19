#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "GPUImageContext.h"
#import "GPUImageOutput.h"
#import "GPUImageMovie.h"
#import "GPUImageMovieWriter.h"
#import "GPUImageFilter.h"
#import "GPUImageVideoCamera.h"

@interface GPUImageMovie (-Deletecomments)
+ (BOOL)initWithURL-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithAsset-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithPlayerItem-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)yuvConversionSetup-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dealloc-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)enableSynchronizedEncodingUsingMovieWriter-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)startProcessing-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)createAssetReader-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)processAsset-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)processPlayerItem-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)outputMediaDataWillChange-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)displayLinkCallback-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)readNextVideoFrameFromOutput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)readNextAudioSampleFromOutput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)processMovieFrame-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)progress-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)processMovieFrameWithsampletime-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)endProcessing-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)cancelProcessing-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)convertYUVToRGBOutput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)assetReader-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)audioEncodingIsFinished-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)videoEncodingIsFinished-Deletecomments:(NSInteger)-deleteComments;

@end
