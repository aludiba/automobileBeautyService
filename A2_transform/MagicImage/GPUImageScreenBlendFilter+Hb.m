#import "GPUImageScreenBlendFilter+Hb.h"
@implementation GPUImageScreenBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
