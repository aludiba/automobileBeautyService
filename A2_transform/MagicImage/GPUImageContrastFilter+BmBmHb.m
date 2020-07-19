#import "GPUImageContrastFilter+BmBmHb.h"
@implementation GPUImageContrastFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)setContrastBmBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
