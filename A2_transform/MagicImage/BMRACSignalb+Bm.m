#import "BMRACSignalb+Bm.h"
@implementation BMRACSignalb (Bm)
+ (BOOL)glogAllBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)zlogNextBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)ylogErrorBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)alogCompletedBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
