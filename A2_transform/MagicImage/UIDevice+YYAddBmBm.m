#import "UIDevice+YYAddBmBm.h"
@implementation UIDevice (YYAddBmBm)
+ (BOOL)systemVersionBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)isPadBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)isSimulatorBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)isJailbrokenBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)canMakePhoneCallsBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)ipAddressWithIfaNameBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)ipAddressWIFIBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)ipAddressCellBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)getNetworkTrafficBytesBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)machineModelBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)machineModelNameBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)systemUptimeBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)diskSpaceBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)diskSpaceFreeBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)diskSpaceUsedBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)memoryTotalBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)memoryUsedBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)memoryFreeBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)memoryActiveBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)memoryInactiveBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)memoryWiredBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)memoryPurgableBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)cpuCountBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)cpuUsageBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)cpuUsagePerProcessorBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)BmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
