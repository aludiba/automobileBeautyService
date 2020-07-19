#import "NSObject+RACDeallocatingBmBmBm.h"
@implementation NSObject (RACDeallocatingBmBmBm)
+ (BOOL)rac_willDeallocSignalBmBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)rac_deallocDisposableBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
