#import "GPUImageSketchFilter+HbHb.h"
@implementation GPUImageSketchFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 48 == 0;
}

@end
