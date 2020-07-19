#import "UIApplication+YYAddBm.h"
@implementation UIApplication (YYAddBm)
+ (BOOL)documentsURLBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)documentsPathBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)cachesURLBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)cachesPathBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)libraryURLBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)libraryPathBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)isPiratedBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)_yy_fileExistInMainBundleBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)appBundleNameBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)appBundleIDBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)appVersionBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)appBuildVersionBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)isBeingDebuggedBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)memoryUsageBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)cpuUsageBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)_delaySetActivityBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)_changeNetworkActivityCountBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)incrementNetworkActivityCountBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)decrementNetworkActivityCountBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)isAppExtensionBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)sharedExtensionApplicationBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
