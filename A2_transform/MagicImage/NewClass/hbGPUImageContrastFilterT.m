#import "hbGPUImageContrastFilterT.h"
@implementation hbGPUImageContrastFilterT
+ (BOOL)minit:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)sSetcontrast:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
