#import "GPUImageDilationFilter+HbHb.h"
@implementation GPUImageDilationFilter (HbHb)
+ (BOOL)initWithRadiusHbHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
