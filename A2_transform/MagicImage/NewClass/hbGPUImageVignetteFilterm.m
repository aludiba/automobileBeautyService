#import "hbGPUImageVignetteFilterm.h"
@implementation hbGPUImageVignetteFilterm
+ (BOOL)yinit:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)MSetvignettecenter:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)HSetvignettecolor:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)ySetvignettestart:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)fSetvignetteend:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
