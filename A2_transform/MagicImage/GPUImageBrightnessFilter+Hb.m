#import "GPUImageBrightnessFilter+Hb.h"
@implementation GPUImageBrightnessFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)setBrightnessHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
