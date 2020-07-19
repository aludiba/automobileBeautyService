#import "hbGPUImageSharpenFiltera+Hb.h"
@implementation hbGPUImageSharpenFiltera (Hb)
+ (BOOL)IInithbHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)mSetupfilterforsizehbHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)ZSetsharpnesshbHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
