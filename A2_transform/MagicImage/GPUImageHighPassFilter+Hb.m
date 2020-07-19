#import "GPUImageHighPassFilter+Hb.h"
@implementation GPUImageHighPassFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setFilterStrengthHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)filterStrengthHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
