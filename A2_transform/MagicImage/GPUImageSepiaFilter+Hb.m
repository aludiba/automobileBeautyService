#import "GPUImageSepiaFilter+Hb.h"
@implementation GPUImageSepiaFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
