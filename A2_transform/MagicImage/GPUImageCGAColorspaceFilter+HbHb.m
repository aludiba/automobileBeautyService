#import "GPUImageCGAColorspaceFilter+HbHb.h"
@implementation GPUImageCGAColorspaceFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
