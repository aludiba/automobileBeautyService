#import "hbGPUImageDilationFiltert.h"
@implementation hbGPUImageDilationFiltert
+ (BOOL)UInitwithradius:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)tinit:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
