#import "GPUImagePrewittEdgeDetectionFilter+Hb.h"
@implementation GPUImagePrewittEdgeDetectionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
