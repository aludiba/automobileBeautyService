#import "GPUImageSphereRefractionFilter+Bm.h"
@implementation GPUImageSphereRefractionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)adjustAspectRatioBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)forceProcessingAtSizeBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setRadiusBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setCenterBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setAspectRatioBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setRefractiveIndexBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
