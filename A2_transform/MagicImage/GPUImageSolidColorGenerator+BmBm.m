#import "GPUImageSolidColorGenerator+BmBm.h"
@implementation GPUImageSolidColorGenerator (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)forceProcessingAtSizeBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)addTargetAttexturelocationBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setColorBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setColorRedGreenBlueAlphaBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setUseExistingAlphaBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
