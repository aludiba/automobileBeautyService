#import "BMBMNSArrayGD+Bm.h"
@implementation BMBMNSArrayGD (Bm)
+ (BOOL)MYsortedarraybytagBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)fGsortedarraybypositionBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
