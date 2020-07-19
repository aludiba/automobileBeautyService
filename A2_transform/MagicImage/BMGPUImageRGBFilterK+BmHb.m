#import "BMGPUImageRGBFilterK+BmHb.h"
@implementation BMGPUImageRGBFilterK (BmHb)
+ (BOOL)rinitBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)lSetredBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)PSetgreenBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)wSetblueBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
