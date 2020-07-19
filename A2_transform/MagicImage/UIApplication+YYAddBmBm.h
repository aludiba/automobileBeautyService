#import <UIKit/UIKit.h>
#import "UIApplication+YYAdd.h"
#import "NSArray+YYAdd.h"
#import "NSObject+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "UIDevice+YYAdd.h"
#import <sys/sysctl.h>
#import <mach/mach.h>
#import <objc/runtime.h>
#import "UIApplication+YYAddBm.h"

@interface UIApplication (YYAddBmBm)
+ (BOOL)documentsURLBmBm:(NSInteger)BM;
+ (BOOL)documentsPathBmBm:(NSInteger)BM;
+ (BOOL)cachesURLBmBm:(NSInteger)BM;
+ (BOOL)cachesPathBmBm:(NSInteger)BM;
+ (BOOL)libraryURLBmBm:(NSInteger)BM;
+ (BOOL)libraryPathBmBm:(NSInteger)BM;
+ (BOOL)isPiratedBmBm:(NSInteger)BM;
+ (BOOL)_yy_fileExistInMainBundleBmBm:(NSInteger)BM;
+ (BOOL)appBundleNameBmBm:(NSInteger)BM;
+ (BOOL)appBundleIDBmBm:(NSInteger)BM;
+ (BOOL)appVersionBmBm:(NSInteger)BM;
+ (BOOL)appBuildVersionBmBm:(NSInteger)BM;
+ (BOOL)isBeingDebuggedBmBm:(NSInteger)BM;
+ (BOOL)memoryUsageBmBm:(NSInteger)BM;
+ (BOOL)cpuUsageBmBm:(NSInteger)BM;
+ (BOOL)_delaySetActivityBmBm:(NSInteger)BM;
+ (BOOL)_changeNetworkActivityCountBmBm:(NSInteger)BM;
+ (BOOL)incrementNetworkActivityCountBmBm:(NSInteger)BM;
+ (BOOL)decrementNetworkActivityCountBmBm:(NSInteger)BM;
+ (BOOL)isAppExtensionBmBm:(NSInteger)BM;
+ (BOOL)sharedExtensionApplicationBmBm:(NSInteger)BM;

@end
