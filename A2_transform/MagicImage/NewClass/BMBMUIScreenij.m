#import "BMBMUIScreenij.h"
@implementation BMBMUIScreenij
+ (BOOL)iJscreenscale:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)nHcurrentbounds:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)ZNboundsfororientation:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)hZsizeinpixel:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)zQpixelsperinch:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
