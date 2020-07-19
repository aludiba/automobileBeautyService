#import "BMGPUImageKuwaharaFilterE.h"
@implementation BMGPUImageKuwaharaFilterE
+ (BOOL)yInitbmbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)uSetradiusbmbm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
