#import "GPUImageFilterPipeline+Hb.h"
@implementation GPUImageFilterPipeline (Hb)
+ (BOOL)initWithConfigurationInputOutputHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)initWithConfigurationFileInputOutputHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)_parseConfigurationHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)initWithOrderedFiltersInputOutputHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)addFilterAtindexHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)addFilterHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)replaceFilterAtIndexWithfilterHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)removeFilterHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)removeFilterAtIndexHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)removeAllFiltersHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)replaceAllFiltersHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)_refreshFiltersHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)currentFilteredFrameHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)currentFilteredFrameWithOrientationHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)newCGImageFromCurrentFilteredFrameHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
