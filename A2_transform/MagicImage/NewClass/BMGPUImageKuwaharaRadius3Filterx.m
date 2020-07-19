#import "BMGPUImageKuwaharaRadius3Filterx.h"
@implementation BMGPUImageKuwaharaRadius3Filterx
+ (BOOL)minit:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
