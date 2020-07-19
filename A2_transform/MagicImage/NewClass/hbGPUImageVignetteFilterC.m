#import "hbGPUImageVignetteFilterC.h"
@implementation hbGPUImageVignetteFilterC
+ (BOOL)uinit:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)YSetvignettecenter:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)rSetvignettecolor:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)pSetvignettestart:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)hSetvignetteend:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
