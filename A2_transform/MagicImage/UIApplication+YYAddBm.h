#import <UIKit/UIKit.h>
#import "UIApplication+YYAdd.h"
#import "NSArray+YYAdd.h"
#import "NSObject+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "UIDevice+YYAdd.h"
#import <sys/sysctl.h>
#import <mach/mach.h>
#import <objc/runtime.h>

@interface UIApplication (YYAddBm)
+ (BOOL)documentsURLBm:(NSInteger)BM;
+ (BOOL)documentsPathBm:(NSInteger)BM;
+ (BOOL)cachesURLBm:(NSInteger)BM;
+ (BOOL)cachesPathBm:(NSInteger)BM;
+ (BOOL)libraryURLBm:(NSInteger)BM;
+ (BOOL)libraryPathBm:(NSInteger)BM;
+ (BOOL)isPiratedBm:(NSInteger)BM;
+ (BOOL)_yy_fileExistInMainBundleBm:(NSInteger)BM;
+ (BOOL)appBundleNameBm:(NSInteger)BM;
+ (BOOL)appBundleIDBm:(NSInteger)BM;
+ (BOOL)appVersionBm:(NSInteger)BM;
+ (BOOL)appBuildVersionBm:(NSInteger)BM;
+ (BOOL)isBeingDebuggedBm:(NSInteger)BM;
+ (BOOL)memoryUsageBm:(NSInteger)BM;
+ (BOOL)cpuUsageBm:(NSInteger)BM;
+ (BOOL)_delaySetActivityBm:(NSInteger)BM;
+ (BOOL)_changeNetworkActivityCountBm:(NSInteger)BM;
+ (BOOL)incrementNetworkActivityCountBm:(NSInteger)BM;
+ (BOOL)decrementNetworkActivityCountBm:(NSInteger)BM;
+ (BOOL)isAppExtensionBm:(NSInteger)BM;
+ (BOOL)sharedExtensionApplicationBm:(NSInteger)BM;

@end
