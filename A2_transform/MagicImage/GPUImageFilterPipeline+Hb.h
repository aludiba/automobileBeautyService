#import <Foundation/Foundation.h>
#import "GPUImageOutput.h"
#import "GPUImageFilterPipeline.h"

@interface GPUImageFilterPipeline (Hb)
+ (BOOL)initWithConfigurationInputOutputHb:(NSInteger)hb;
+ (BOOL)initWithConfigurationFileInputOutputHb:(NSInteger)hb;
+ (BOOL)_parseConfigurationHb:(NSInteger)hb;
+ (BOOL)initWithOrderedFiltersInputOutputHb:(NSInteger)hb;
+ (BOOL)addFilterAtindexHb:(NSInteger)hb;
+ (BOOL)addFilterHb:(NSInteger)hb;
+ (BOOL)replaceFilterAtIndexWithfilterHb:(NSInteger)hb;
+ (BOOL)removeFilterHb:(NSInteger)hb;
+ (BOOL)removeFilterAtIndexHb:(NSInteger)hb;
+ (BOOL)removeAllFiltersHb:(NSInteger)hb;
+ (BOOL)replaceAllFiltersHb:(NSInteger)hb;
+ (BOOL)_refreshFiltersHb:(NSInteger)hb;
+ (BOOL)currentFilteredFrameHb:(NSInteger)hb;
+ (BOOL)currentFilteredFrameWithOrientationHb:(NSInteger)hb;
+ (BOOL)newCGImageFromCurrentFilteredFrameHb:(NSInteger)hb;

@end
