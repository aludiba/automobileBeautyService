#import "BMGPUImageRGBFilterz+BmBmHb.h"
@implementation BMGPUImageRGBFilterz (BmBmHb)
+ (BOOL)PinitBmBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)XSetredBmBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)DSetgreenBmBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)mSetblueBmBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
