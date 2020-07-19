#import "BMNSArrayA.h"
@implementation BMNSArrayA
+ (BOOL)lSortedarraybytagbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)SSortedarraybypositionbm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
