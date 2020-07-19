#import "BMBKMIHomeViewo.h"
@implementation BMBKMIHomeViewo
+ (BOOL)nInitwithframebm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)JBktapbm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
