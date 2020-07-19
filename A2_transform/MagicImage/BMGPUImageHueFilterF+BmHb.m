#import "BMGPUImageHueFilterF+BmHb.h"
@implementation BMGPUImageHueFilterF (BmHb)
+ (BOOL)bInitbmbmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)VSethuebmbmBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
