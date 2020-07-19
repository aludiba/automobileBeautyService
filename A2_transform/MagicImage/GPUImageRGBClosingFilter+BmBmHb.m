#import "GPUImageRGBClosingFilter+BmBmHb.h"
@implementation GPUImageRGBClosingFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)initWithRadiusBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
