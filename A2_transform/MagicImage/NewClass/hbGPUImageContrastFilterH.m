#import "hbGPUImageContrastFilterH.h"
@implementation hbGPUImageContrastFilterH
+ (BOOL)OInithb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)fSetcontrasthb:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
