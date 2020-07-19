#import <Foundation/Foundation.h>
#import "GPUImageOutput.h"
#import "GPUImageFilterPipeline.h"
#import "GPUImageFilterPipeline+Bm.h"
#import "GPUImageFilterPipeline+BmBm.h"

@interface GPUImageFilterPipeline (BmBmBm)
+ (BOOL)initWithConfigurationInputOutputBmBmBm:(NSInteger)BM;
+ (BOOL)initWithConfigurationFileInputOutputBmBmBm:(NSInteger)BM;
+ (BOOL)_parseConfigurationBmBmBm:(NSInteger)BM;
+ (BOOL)initWithOrderedFiltersInputOutputBmBmBm:(NSInteger)BM;
+ (BOOL)addFilterAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)addFilterBmBmBm:(NSInteger)BM;
+ (BOOL)replaceFilterAtIndexWithfilterBmBmBm:(NSInteger)BM;
+ (BOOL)removeFilterBmBmBm:(NSInteger)BM;
+ (BOOL)removeFilterAtIndexBmBmBm:(NSInteger)BM;
+ (BOOL)removeAllFiltersBmBmBm:(NSInteger)BM;
+ (BOOL)replaceAllFiltersBmBmBm:(NSInteger)BM;
+ (BOOL)_refreshFiltersBmBmBm:(NSInteger)BM;
+ (BOOL)currentFilteredFrameBmBmBm:(NSInteger)BM;
+ (BOOL)currentFilteredFrameWithOrientationBmBmBm:(NSInteger)BM;
+ (BOOL)newCGImageFromCurrentFilteredFrameBmBmBm:(NSInteger)BM;

@end
