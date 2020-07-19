#import <Foundation/Foundation.h>
#import "GPUImageOutput.h"
#import "GPUImageFilterPipeline.h"
#import "GPUImageFilterPipeline+Bm.h"
#import "GPUImageFilterPipeline+BmBm.h"

@interface GPUImageFilterPipeline (BmBmHb)
+ (BOOL)initWithConfigurationInputOutputBmBmHb:(NSInteger)hb;
+ (BOOL)initWithConfigurationFileInputOutputBmBmHb:(NSInteger)hb;
+ (BOOL)_parseConfigurationBmBmHb:(NSInteger)hb;
+ (BOOL)initWithOrderedFiltersInputOutputBmBmHb:(NSInteger)hb;
+ (BOOL)addFilterAtindexBmBmHb:(NSInteger)hb;
+ (BOOL)addFilterBmBmHb:(NSInteger)hb;
+ (BOOL)replaceFilterAtIndexWithfilterBmBmHb:(NSInteger)hb;
+ (BOOL)removeFilterBmBmHb:(NSInteger)hb;
+ (BOOL)removeFilterAtIndexBmBmHb:(NSInteger)hb;
+ (BOOL)removeAllFiltersBmBmHb:(NSInteger)hb;
+ (BOOL)replaceAllFiltersBmBmHb:(NSInteger)hb;
+ (BOOL)_refreshFiltersBmBmHb:(NSInteger)hb;
+ (BOOL)currentFilteredFrameBmBmHb:(NSInteger)hb;
+ (BOOL)currentFilteredFrameWithOrientationBmBmHb:(NSInteger)hb;
+ (BOOL)newCGImageFromCurrentFilteredFrameBmBmHb:(NSInteger)hb;

@end
