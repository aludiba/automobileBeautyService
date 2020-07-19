#import "hbGPUImageRGBClosingFilterT.h"
@implementation hbGPUImageRGBClosingFilterT
+ (BOOL)ainit:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)zInitwithradius:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
