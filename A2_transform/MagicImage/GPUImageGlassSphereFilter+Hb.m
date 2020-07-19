#import "GPUImageGlassSphereFilter+Hb.h"
@implementation GPUImageGlassSphereFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
