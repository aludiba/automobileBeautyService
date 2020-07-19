#import <UIKit/UIKit.h>
#import "UIDevice+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "NSString+YYAdd.h"

@interface UIDevice (YYAddBm)
+ (BOOL)systemVersionBm:(NSInteger)BM;
+ (BOOL)isPadBm:(NSInteger)BM;
+ (BOOL)isSimulatorBm:(NSInteger)BM;
+ (BOOL)isJailbrokenBm:(NSInteger)BM;
+ (BOOL)canMakePhoneCallsBm:(NSInteger)BM;
+ (BOOL)ipAddressWithIfaNameBm:(NSInteger)BM;
+ (BOOL)ipAddressWIFIBm:(NSInteger)BM;
+ (BOOL)ipAddressCellBm:(NSInteger)BM;
+ (BOOL)getNetworkTrafficBytesBm:(NSInteger)BM;
+ (BOOL)machineModelBm:(NSInteger)BM;
+ (BOOL)machineModelNameBm:(NSInteger)BM;
+ (BOOL)systemUptimeBm:(NSInteger)BM;
+ (BOOL)diskSpaceBm:(NSInteger)BM;
+ (BOOL)diskSpaceFreeBm:(NSInteger)BM;
+ (BOOL)diskSpaceUsedBm:(NSInteger)BM;
+ (BOOL)memoryTotalBm:(NSInteger)BM;
+ (BOOL)memoryUsedBm:(NSInteger)BM;
+ (BOOL)memoryFreeBm:(NSInteger)BM;
+ (BOOL)memoryActiveBm:(NSInteger)BM;
+ (BOOL)memoryInactiveBm:(NSInteger)BM;
+ (BOOL)memoryWiredBm:(NSInteger)BM;
+ (BOOL)memoryPurgableBm:(NSInteger)BM;
+ (BOOL)cpuCountBm:(NSInteger)BM;
+ (BOOL)cpuUsageBm:(NSInteger)BM;
+ (BOOL)cpuUsagePerProcessorBm:(NSInteger)BM;
+ (BOOL)+ CPU_STATE_SYSTEM] - _prevCPUInfo[(CPU_STATE_MAX * i) + CPU_STATE_SYSTEM])
                          + (_cpuInfo[(CPU_STATE_MAX * i) + CPU_STATE_NICE]   - _prevCPUInfo[(CPU_STATE_MAX * i) + CPU_STATE_NICE])
                          )Bm:(NSInteger)BM;

@end
