#import "hbGPUImageRGBClosingFilterY.h"
@implementation hbGPUImageRGBClosingFilterY
+ (BOOL)ninit:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)vInitwithradius:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
