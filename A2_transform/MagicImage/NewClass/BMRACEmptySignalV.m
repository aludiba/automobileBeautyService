#import "BMRACEmptySignalV.h"
@implementation BMRACEmptySignalV
+ (BOOL)YSetnamebm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)pNamebm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)iEmptybm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)XSubscribebm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
