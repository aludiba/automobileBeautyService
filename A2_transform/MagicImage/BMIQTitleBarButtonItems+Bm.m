#import "BMIQTitleBarButtonItems+Bm.h"
@implementation BMIQTitleBarButtonItems (Bm)
+ (BOOL)GInitwithtitleBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)HSettitlefontBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)WSettitleBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)bSettitlecolorBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)ASetselectabletitlecolorBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)wSetinvocationBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)sdeallocBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
