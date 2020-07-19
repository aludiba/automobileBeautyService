#import "GPUImageBrightnessFilter+HbHb.h"
@implementation GPUImageBrightnessFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)setBrightnessHbHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
