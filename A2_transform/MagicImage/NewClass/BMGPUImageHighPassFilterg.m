#import "BMGPUImageHighPassFilterg.h"
@implementation BMGPUImageHighPassFilterg
+ (BOOL)SInitbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)DSetfilterstrengthbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)MFilterstrengthbm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
