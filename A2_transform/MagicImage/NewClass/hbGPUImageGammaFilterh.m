#import "hbGPUImageGammaFilterh.h"
@implementation hbGPUImageGammaFilterh
+ (BOOL)binit:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)sSetgamma:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
