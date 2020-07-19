#import <Foundation/Foundation.h>
#import "GPUImageOutput.h"
#import "GPUImageFilterPipeline.h"
#import "GPUImageFilterPipeline+Hb.h"

@interface GPUImageFilterPipeline (HbHb)
+ (BOOL)initWithConfigurationInputOutputHbHb:(NSInteger)hb;
+ (BOOL)initWithConfigurationFileInputOutputHbHb:(NSInteger)hb;
+ (BOOL)_parseConfigurationHbHb:(NSInteger)hb;
+ (BOOL)initWithOrderedFiltersInputOutputHbHb:(NSInteger)hb;
+ (BOOL)addFilterAtindexHbHb:(NSInteger)hb;
+ (BOOL)addFilterHbHb:(NSInteger)hb;
+ (BOOL)replaceFilterAtIndexWithfilterHbHb:(NSInteger)hb;
+ (BOOL)removeFilterHbHb:(NSInteger)hb;
+ (BOOL)removeFilterAtIndexHbHb:(NSInteger)hb;
+ (BOOL)removeAllFiltersHbHb:(NSInteger)hb;
+ (BOOL)replaceAllFiltersHbHb:(NSInteger)hb;
+ (BOOL)_refreshFiltersHbHb:(NSInteger)hb;
+ (BOOL)currentFilteredFrameHbHb:(NSInteger)hb;
+ (BOOL)currentFilteredFrameWithOrientationHbHb:(NSInteger)hb;
+ (BOOL)newCGImageFromCurrentFilteredFrameHbHb:(NSInteger)hb;

@end
