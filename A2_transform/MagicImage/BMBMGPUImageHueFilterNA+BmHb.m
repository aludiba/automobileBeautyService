#import "BMBMGPUImageHueFilterNA+BmHb.h"
@implementation BMBMGPUImageHueFilterNA (BmHb)
+ (BOOL)PRinitBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)HXsethueBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
