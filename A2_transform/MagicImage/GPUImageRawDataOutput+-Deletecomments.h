#import <Foundation/Foundation.h>
#import "GPUImageContext.h"
#import "GPUImageRawDataOutput.h"
#import "GPUImageContext.h"
#import "GLProgram.h"
#import "GPUImageFilter.h"
#import "GPUImageMovieWriter.h"

@interface GPUImageRawDataOutput (-Deletecomments)
+ (BOOL)initWithImageSizeResultsinbgraformat-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dealloc-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)renderAtInternalSize-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)colorAtLocation-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)newFrameReadyAtTimeAtindex-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)nextAvailableTextureIndex-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setInputFramebufferAtindex-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setInputRotationAtindex-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setInputSizeAtindex-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)maximumOutputSize-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)endProcessing-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)shouldIgnoreUpdatesToThisTarget-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)wantsMonochromeInput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setCurrentlyReceivingMonochromeInput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)rawBytesForImage-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)bytesPerRowInOutput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setImageSize-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)lockFramebufferForReading-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)unlockFramebufferAfterReading-Deletecomments:(NSInteger)-deleteComments;

@end
