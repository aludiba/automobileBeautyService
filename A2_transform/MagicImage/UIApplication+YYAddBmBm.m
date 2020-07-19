#import "UIApplication+YYAddBmBm.h"
@implementation UIApplication (YYAddBmBm)
+ (BOOL)documentsURLBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)documentsPathBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)cachesURLBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)cachesPathBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)libraryURLBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)libraryPathBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)isPiratedBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)_yy_fileExistInMainBundleBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)appBundleNameBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)appBundleIDBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)appVersionBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)appBuildVersionBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)isBeingDebuggedBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)memoryUsageBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)cpuUsageBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)_delaySetActivityBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)_changeNetworkActivityCountBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)incrementNetworkActivityCountBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)decrementNetworkActivityCountBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)isAppExtensionBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)sharedExtensionApplicationBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
