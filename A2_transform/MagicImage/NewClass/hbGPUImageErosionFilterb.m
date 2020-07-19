#import "hbGPUImageErosionFilterb.h"
@implementation hbGPUImageErosionFilterb
+ (BOOL)mInitwithradius:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)Kinit:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
