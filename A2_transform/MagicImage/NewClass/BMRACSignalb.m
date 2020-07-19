#import "BMRACSignalb.h"
@implementation BMRACSignalb
+ (BOOL)glogAll:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)zlogNext:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)ylogError:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)alogCompleted:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
