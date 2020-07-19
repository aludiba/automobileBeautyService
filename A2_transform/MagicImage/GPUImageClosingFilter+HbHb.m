#import "GPUImageClosingFilter+HbHb.h"
@implementation GPUImageClosingFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)initWithRadiusHbHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)setVerticalTexelSpacingHbHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)setHorizontalTexelSpacingHbHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
