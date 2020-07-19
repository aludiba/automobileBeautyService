#import "AppDelegate+Bm.h"
@implementation AppDelegate (Bm)
+ (BOOL)applicationDidfinishlaunchingwithoptionsBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)applicationWillResignActiveBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)applicationDidEnterBackgroundBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)applicationWillEnterForegroundBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)applicationDidBecomeActiveBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)applicationWillTerminateBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
