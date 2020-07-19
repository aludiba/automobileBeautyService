#import "GPUImageFilterPipeline+Bm.h"
@implementation GPUImageFilterPipeline (Bm)
+ (BOOL)initWithConfigurationInputOutputBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)initWithConfigurationFileInputOutputBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)_parseConfigurationBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)initWithOrderedFiltersInputOutputBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)addFilterAtindexBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)addFilterBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)replaceFilterAtIndexWithfilterBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)removeFilterBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)removeFilterAtIndexBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)removeAllFiltersBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)replaceAllFiltersBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)_refreshFiltersBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)currentFilteredFrameBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)currentFilteredFrameWithOrientationBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)newCGImageFromCurrentFilteredFrameBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
