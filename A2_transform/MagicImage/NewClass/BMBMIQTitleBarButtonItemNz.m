#import "BMBMIQTitleBarButtonItemNz.h"
@implementation BMBMIQTitleBarButtonItemNz
+ (BOOL)pNinitwithtitlebmbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)aLsettitlefontbmbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)EYsettitlebmbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)GYsettitlecolorbmbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)RIsetselectabletitlecolorbmbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)QKsetinvocationbmbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)SOdeallocbmbm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
