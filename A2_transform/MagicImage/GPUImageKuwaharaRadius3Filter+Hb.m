#import "GPUImageKuwaharaRadius3Filter+Hb.h"
@implementation GPUImageKuwaharaRadius3Filter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
