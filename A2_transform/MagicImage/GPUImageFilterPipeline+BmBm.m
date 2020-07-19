#import "GPUImageFilterPipeline+BmBm.h"
@implementation GPUImageFilterPipeline (BmBm)
+ (BOOL)initWithConfigurationInputOutputBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)initWithConfigurationFileInputOutputBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)_parseConfigurationBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)initWithOrderedFiltersInputOutputBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)addFilterAtindexBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)addFilterBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)replaceFilterAtIndexWithfilterBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)removeFilterBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)removeFilterAtIndexBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)removeAllFiltersBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)replaceAllFiltersBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)_refreshFiltersBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)currentFilteredFrameBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)currentFilteredFrameWithOrientationBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)newCGImageFromCurrentFilteredFrameBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
