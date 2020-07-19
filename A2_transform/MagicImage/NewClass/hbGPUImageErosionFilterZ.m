#import "hbGPUImageErosionFilterZ.h"
@implementation hbGPUImageErosionFilterZ
+ (BOOL)aInitwithradius:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)Ainit:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
