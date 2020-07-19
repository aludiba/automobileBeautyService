#import <Foundation/Foundation.h>
#import "GPUImageOutput.h"
#import "GPUImageFilterPipeline.h"
#import "GPUImageFilterPipeline+Bm.h"
#import "GPUImageFilterPipeline+BmBm.h"

@interface GPUImageFilterPipeline (BmBm-Deletecomments)
+ (BOOL)initWithConfigurationInputOutputBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithConfigurationFileInputOutputBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)_parseConfigurationBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithOrderedFiltersInputOutputBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)addFilterAtindexBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)addFilterBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)replaceFilterAtIndexWithfilterBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)removeFilterBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)removeFilterAtIndexBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)removeAllFiltersBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)replaceAllFiltersBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)_refreshFiltersBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)currentFilteredFrameBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)currentFilteredFrameWithOrientationBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)newCGImageFromCurrentFilteredFrameBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
