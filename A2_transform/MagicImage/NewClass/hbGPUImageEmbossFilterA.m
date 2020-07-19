#import "hbGPUImageEmbossFilterA.h"
@implementation hbGPUImageEmbossFilterA
+ (BOOL)Pinit:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)TSetintensity:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
