#import "BMGPUImageEmbossFilterw.h"
@implementation BMGPUImageEmbossFilterw
+ (BOOL)zInitbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)HSetintensitybm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
