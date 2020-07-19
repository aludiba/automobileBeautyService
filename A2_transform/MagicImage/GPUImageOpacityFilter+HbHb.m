#import "GPUImageOpacityFilter+HbHb.h"
@implementation GPUImageOpacityFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)setOpacityHbHb:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
