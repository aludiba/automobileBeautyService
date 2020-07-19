#import "hbGPUImageEmbossFilterN.h"
@implementation hbGPUImageEmbossFilterN
+ (BOOL)Tinit:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)ESetintensity:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
