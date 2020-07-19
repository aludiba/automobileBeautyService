#import "hbGPUImageVignetteFilteru.h"
@implementation hbGPUImageVignetteFilteru
+ (BOOL)yInitbm:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)zSetvignettecenterbm:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)hSetvignettecolorbm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)CSetvignettestartbm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)gSetvignetteendbm:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
