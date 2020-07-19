#import "GPUImageLocalBinaryPatternFilter+Hb.h"
@implementation GPUImageLocalBinaryPatternFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
