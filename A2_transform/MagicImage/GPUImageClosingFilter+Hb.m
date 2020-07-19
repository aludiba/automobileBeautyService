#import "GPUImageClosingFilter+Hb.h"
@implementation GPUImageClosingFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)initWithRadiusHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setVerticalTexelSpacingHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)setHorizontalTexelSpacingHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
