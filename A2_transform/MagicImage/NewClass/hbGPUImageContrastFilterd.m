#import "hbGPUImageContrastFilterd.h"
@implementation hbGPUImageContrastFilterd
+ (BOOL)qinit:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)nSetcontrast:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
