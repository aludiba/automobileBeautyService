#import "GPUImageSketchFilter+Hb.h"
@implementation GPUImageSketchFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
