#import "GPUImageOpacityFilter+Hb.h"
@implementation GPUImageOpacityFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)setOpacityHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
