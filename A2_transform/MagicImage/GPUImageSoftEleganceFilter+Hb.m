#import "GPUImageSoftEleganceFilter+Hb.h"
@implementation GPUImageSoftEleganceFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
