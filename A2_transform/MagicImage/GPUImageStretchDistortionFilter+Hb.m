#import "GPUImageStretchDistortionFilter+Hb.h"
@implementation GPUImageStretchDistortionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)setCenterHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
