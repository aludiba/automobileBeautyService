#import "GPUImageSphereRefractionFilter+BmBm.h"
@implementation GPUImageSphereRefractionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)adjustAspectRatioBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)forceProcessingAtSizeBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setRadiusBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setCenterBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setAspectRatioBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setRefractiveIndexBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
