#import "GPUImageKuwaharaFilter+Hb.h"
@implementation GPUImageKuwaharaFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)setRadiusHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
