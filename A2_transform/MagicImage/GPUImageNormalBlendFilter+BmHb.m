#import "GPUImageNormalBlendFilter+BmHb.h"
@implementation GPUImageNormalBlendFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
