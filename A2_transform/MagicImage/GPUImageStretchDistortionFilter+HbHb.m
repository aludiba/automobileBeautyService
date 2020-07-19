#import "GPUImageStretchDistortionFilter+HbHb.h"
@implementation GPUImageStretchDistortionFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setInputRotationAtindexHbHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setCenterHbHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
