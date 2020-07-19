#import "hbGPUImageSharpenFilterz.h"
@implementation hbGPUImageSharpenFilterz
+ (BOOL)HInithb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)ASetupfilterforsizehb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)BSetsharpnesshb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
