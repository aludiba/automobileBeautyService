#import "GPUImageHighPassFilter+HbHb.h"
@implementation GPUImageHighPassFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)setFilterStrengthHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)filterStrengthHbHb:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
