#import "BMGPUImageLookupFilterU.h"
@implementation BMGPUImageLookupFilterU
+ (BOOL)Ninit:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)pSetintensity:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
