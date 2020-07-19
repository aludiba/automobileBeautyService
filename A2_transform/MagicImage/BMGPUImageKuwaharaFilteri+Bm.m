#import "BMGPUImageKuwaharaFilteri+Bm.h"
@implementation BMGPUImageKuwaharaFilteri (Bm)
+ (BOOL)minitBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)RSetradiusBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
