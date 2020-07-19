#import "BMBMGPUImageRGBFilternA.h"
@implementation BMBMGPUImageRGBFilternA
+ (BOOL)OIinitbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)RVsetredbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)uNsetgreenbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)OIsetbluebm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
