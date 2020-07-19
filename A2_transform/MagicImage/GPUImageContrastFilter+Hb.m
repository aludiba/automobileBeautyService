#import "GPUImageContrastFilter+Hb.h"
@implementation GPUImageContrastFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)setContrastHb:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
