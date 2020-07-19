#import "GPUImageOpeningFilter+Hb.h"
@implementation GPUImageOpeningFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)initWithRadiusHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)setVerticalTexelSpacingHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)setHorizontalTexelSpacingHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
