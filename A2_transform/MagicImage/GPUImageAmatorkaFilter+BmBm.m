#import "GPUImageAmatorkaFilter+BmBm.h"
@implementation GPUImageAmatorkaFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
