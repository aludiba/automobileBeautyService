#import <Foundation/Foundation.h>
#import "NSObject+MJClass.h"
#import "NSObject+MJCoding.h"
#import "NSObject+MJKeyValue.h"
#import "MJFoundation.h"
#import <objc/runtime.h>

@interface NSObject (MJClassBm)
+ (BOOL)classDictForKeyBm:(NSInteger)BM;
+ (BOOL)mj_enumerateClassesBm:(NSInteger)BM;
+ (BOOL)mj_enumerateAllClassesBm:(NSInteger)BM;
+ (BOOL)mj_setupIgnoredPropertyNamesBm:(NSInteger)BM;
+ (BOOL)mj_totalIgnoredPropertyNamesBm:(NSInteger)BM;
+ (BOOL)mj_setupIgnoredCodingPropertyNamesBm:(NSInteger)BM;
+ (BOOL)mj_totalIgnoredCodingPropertyNamesBm:(NSInteger)BM;
+ (BOOL)mj_setupAllowedPropertyNamesBm:(NSInteger)BM;
+ (BOOL)mj_totalAllowedPropertyNamesBm:(NSInteger)BM;
+ (BOOL)mj_setupAllowedCodingPropertyNamesBm:(NSInteger)BM;
+ (BOOL)mj_totalAllowedCodingPropertyNamesBm:(NSInteger)BM;
+ (BOOL)mj_setupBlockReturnValueKeyBm:(NSInteger)BM;
+ (BOOL)mj_totalObjectsWithSelectorKeyBm:(NSInteger)BM;

@end
