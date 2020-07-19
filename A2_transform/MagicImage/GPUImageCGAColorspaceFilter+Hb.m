#import "GPUImageCGAColorspaceFilter+Hb.h"
@implementation GPUImageCGAColorspaceFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
