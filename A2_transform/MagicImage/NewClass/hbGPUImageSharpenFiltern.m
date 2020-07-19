#import "hbGPUImageSharpenFiltern.h"
@implementation hbGPUImageSharpenFiltern
+ (BOOL)Einit:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)lSetupfilterforsize:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)zSetsharpness:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
