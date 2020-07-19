#import "BMBMGPUImageKuwaharaFilterJK.h"
@implementation BMBMGPUImageKuwaharaFilterJK
+ (BOOL)qCinitbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)aTsetradiusbm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
