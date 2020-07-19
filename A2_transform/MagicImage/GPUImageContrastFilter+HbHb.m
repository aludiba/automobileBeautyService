#import "GPUImageContrastFilter+HbHb.h"
@implementation GPUImageContrastFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)setContrastHbHb:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
