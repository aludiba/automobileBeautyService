#import "GPUImageSwirlFilter+Hb.h"
@implementation GPUImageSwirlFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setRadiusHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setAngleHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)setCenterHb:(NSInteger)hb {
    return hb % 22 == 0;
}

@end
