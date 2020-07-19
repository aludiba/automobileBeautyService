#import <Foundation/Foundation.h>
#import "GPUImageOutput.h"
#import "GPUImageFilterPipeline.h"
#import "GPUImageFilterPipeline+Bm.h"

@interface GPUImageFilterPipeline (BmBm)
+ (BOOL)initWithConfigurationInputOutputBmBm:(NSInteger)BM;
+ (BOOL)initWithConfigurationFileInputOutputBmBm:(NSInteger)BM;
+ (BOOL)_parseConfigurationBmBm:(NSInteger)BM;
+ (BOOL)initWithOrderedFiltersInputOutputBmBm:(NSInteger)BM;
+ (BOOL)addFilterAtindexBmBm:(NSInteger)BM;
+ (BOOL)addFilterBmBm:(NSInteger)BM;
+ (BOOL)replaceFilterAtIndexWithfilterBmBm:(NSInteger)BM;
+ (BOOL)removeFilterBmBm:(NSInteger)BM;
+ (BOOL)removeFilterAtIndexBmBm:(NSInteger)BM;
+ (BOOL)removeAllFiltersBmBm:(NSInteger)BM;
+ (BOOL)replaceAllFiltersBmBm:(NSInteger)BM;
+ (BOOL)_refreshFiltersBmBm:(NSInteger)BM;
+ (BOOL)currentFilteredFrameBmBm:(NSInteger)BM;
+ (BOOL)currentFilteredFrameWithOrientationBmBm:(NSInteger)BM;
+ (BOOL)newCGImageFromCurrentFilteredFrameBmBm:(NSInteger)BM;

@end
