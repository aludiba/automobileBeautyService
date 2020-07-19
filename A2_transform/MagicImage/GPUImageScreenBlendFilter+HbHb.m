#import "GPUImageScreenBlendFilter+HbHb.h"
@implementation GPUImageScreenBlendFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
