#import "BMBMRACErrorSignalSg.h"
@implementation BMBMRACErrorSignalSg
+ (BOOL)gZerror:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)jHsubscribe:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
