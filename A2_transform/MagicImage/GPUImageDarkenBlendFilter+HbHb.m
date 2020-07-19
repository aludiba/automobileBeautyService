#import "GPUImageDarkenBlendFilter+HbHb.h"
@implementation GPUImageDarkenBlendFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
