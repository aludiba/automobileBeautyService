#import "hbGPUImageRGBOpeningFilterd.h"
@implementation hbGPUImageRGBOpeningFilterd
+ (BOOL)xinit:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)wInitwithradius:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
