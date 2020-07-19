#import "UIDevice+YYAddBm.h"
@implementation UIDevice (YYAddBm)
+ (BOOL)systemVersionBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)isPadBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)isSimulatorBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)isJailbrokenBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)canMakePhoneCallsBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)ipAddressWithIfaNameBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)ipAddressWIFIBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)ipAddressCellBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)getNetworkTrafficBytesBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)machineModelBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)machineModelNameBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)systemUptimeBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)diskSpaceBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)diskSpaceFreeBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)diskSpaceUsedBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)memoryTotalBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)memoryUsedBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)memoryFreeBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)memoryActiveBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)memoryInactiveBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)memoryWiredBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)memoryPurgableBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)cpuCountBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)cpuUsageBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)cpuUsagePerProcessorBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)+ CPU_STATE_SYSTEM] - _prevCPUInfo[(CPU_STATE_MAX * i) + CPU_STATE_SYSTEM])
                          + (_cpuInfo[(CPU_STATE_MAX * i) + CPU_STATE_NICE]   - _prevCPUInfo[(CPU_STATE_MAX * i) + CPU_STATE_NICE])
                          )Bm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
