#import "hbGPUImageErosionFiltero.h"
@implementation hbGPUImageErosionFiltero
+ (BOOL)vInitwithradiushb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)CInithb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
