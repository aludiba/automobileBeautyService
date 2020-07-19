#import "BMGPUImageLookupFiltera.h"
@implementation BMGPUImageLookupFiltera
+ (BOOL)bInitbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)PSetintensitybm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
