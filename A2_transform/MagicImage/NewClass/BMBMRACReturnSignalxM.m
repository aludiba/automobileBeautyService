#import "BMBMRACReturnSignalxM.h"
@implementation BMBMRACReturnSignalxM
+ (BOOL)WLsetnamebm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)JJnamebm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)kCreturnbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)kCsubscribebm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
