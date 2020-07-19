#import "BMGPUImagePrewittEdgeDetectionFiltery.h"
@implementation BMGPUImagePrewittEdgeDetectionFiltery
+ (BOOL)DInitbm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
