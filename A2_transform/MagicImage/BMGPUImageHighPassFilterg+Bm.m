#import "BMGPUImageHighPassFilterg+Bm.h"
@implementation BMGPUImageHighPassFilterg (Bm)
+ (BOOL)SInitbmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)DSetfilterstrengthbmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)MFilterstrengthbmBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
