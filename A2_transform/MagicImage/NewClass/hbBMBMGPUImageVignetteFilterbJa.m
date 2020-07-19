#import "hbBMBMGPUImageVignetteFilterbJa.h"
@implementation hbBMBMGPUImageVignetteFilterbJa
+ (BOOL)QHwinit:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)CUbsetvignettecenter:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)iCxsetvignettecolor:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)QExsetvignettestart:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)FXwsetvignetteend:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
