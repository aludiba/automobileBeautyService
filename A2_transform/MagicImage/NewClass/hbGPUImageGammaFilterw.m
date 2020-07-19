#import "hbGPUImageGammaFilterw.h"
@implementation hbGPUImageGammaFilterw
+ (BOOL)linit:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)ESetgamma:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
