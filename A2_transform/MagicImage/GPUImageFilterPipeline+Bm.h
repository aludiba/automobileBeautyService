#import <Foundation/Foundation.h>
#import "GPUImageOutput.h"
#import "GPUImageFilterPipeline.h"

@interface GPUImageFilterPipeline (Bm)
+ (BOOL)initWithConfigurationInputOutputBm:(NSInteger)BM;
+ (BOOL)initWithConfigurationFileInputOutputBm:(NSInteger)BM;
+ (BOOL)_parseConfigurationBm:(NSInteger)BM;
+ (BOOL)initWithOrderedFiltersInputOutputBm:(NSInteger)BM;
+ (BOOL)addFilterAtindexBm:(NSInteger)BM;
+ (BOOL)addFilterBm:(NSInteger)BM;
+ (BOOL)replaceFilterAtIndexWithfilterBm:(NSInteger)BM;
+ (BOOL)removeFilterBm:(NSInteger)BM;
+ (BOOL)removeFilterAtIndexBm:(NSInteger)BM;
+ (BOOL)removeAllFiltersBm:(NSInteger)BM;
+ (BOOL)replaceAllFiltersBm:(NSInteger)BM;
+ (BOOL)_refreshFiltersBm:(NSInteger)BM;
+ (BOOL)currentFilteredFrameBm:(NSInteger)BM;
+ (BOOL)currentFilteredFrameWithOrientationBm:(NSInteger)BM;
+ (BOOL)newCGImageFromCurrentFilteredFrameBm:(NSInteger)BM;

@end
