#import "GPUImageAlphaBlendFilter+BmHb.h"
@implementation GPUImageAlphaBlendFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)setMixBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
