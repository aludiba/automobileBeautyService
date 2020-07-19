#import "BMGPUImageLocalBinaryPatternFilterS.h"
@implementation BMGPUImageLocalBinaryPatternFilterS
+ (BOOL)fInitbm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
