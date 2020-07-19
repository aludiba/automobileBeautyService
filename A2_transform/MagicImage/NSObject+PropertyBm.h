#import <Foundation/Foundation.h>
#import "MJExtensionConst.h"
#import "NSObject+MJProperty.h"
#import "NSObject+MJKeyValue.h"
#import "NSObject+MJCoding.h"
#import "NSObject+MJClass.h"
#import "MJProperty.h"
#import "MJFoundation.h"
#import <objc/runtime.h>

@interface NSObject (PropertyBm)
+ (BOOL)propertyDictForKeyBm:(NSInteger)BM;
+ (BOOL)propertyKeyBm:(NSInteger)BM;
+ (BOOL)propertyObjectClassInArrayBm:(NSInteger)BM;
+ (BOOL)mj_enumeratePropertiesBm:(NSInteger)BM;
+ (BOOL)propertiesBm:(NSInteger)BM;
+ (BOOL)mj_setupNewValueFromOldValueBm:(NSInteger)BM;
+ (BOOL)mj_getNewValueFromObjectOldvaluePropertyBm:(NSInteger)BM;
+ (BOOL)mj_setupObjectClassInArrayBm:(NSInteger)BM;
+ (BOOL)mj_setupReplacedKeyFromPropertyNameBm:(NSInteger)BM;
+ (BOOL)mj_setupReplacedKeyFromPropertyName121Bm:(NSInteger)BM;

@end
