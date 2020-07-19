#import "BMGPUImageLowPassFilterj.h"
@implementation BMGPUImageLowPassFilterj
+ (BOOL)JInitbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)DSetfilterstrengthbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)ZFilterstrengthbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)sAddtargetattexturelocationbm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
