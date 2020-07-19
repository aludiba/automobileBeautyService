#import "GPUImageDilationFilter+Hb.h"
@implementation GPUImageDilationFilter (Hb)
+ (BOOL)initWithRadiusHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
