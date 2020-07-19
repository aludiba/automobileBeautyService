#import "GPUImageColorInvertFilter+Hb.h"
@implementation GPUImageColorInvertFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
