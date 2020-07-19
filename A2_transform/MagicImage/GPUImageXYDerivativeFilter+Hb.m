#import "GPUImageXYDerivativeFilter+Hb.h"
@implementation GPUImageXYDerivativeFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
