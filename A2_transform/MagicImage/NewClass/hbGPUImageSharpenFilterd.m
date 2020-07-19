#import "hbGPUImageSharpenFilterd.h"
@implementation hbGPUImageSharpenFilterd
+ (BOOL)Vinit:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)sSetupfilterforsize:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)ZSetsharpness:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
