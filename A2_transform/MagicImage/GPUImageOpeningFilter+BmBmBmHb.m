#import "GPUImageOpeningFilter+BmBmBmHb.h"
@implementation GPUImageOpeningFilter (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)initWithRadiusBmBmBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)setVerticalTexelSpacingBmBmBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)setHorizontalTexelSpacingBmBmBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
