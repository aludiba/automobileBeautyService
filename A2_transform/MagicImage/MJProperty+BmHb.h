#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "MJPropertyType.h"
#import "MJPropertyKey.h"
#import "MJProperty.h"
#import "MJFoundation.h"
#import "MJExtensionConst.h"
#import <objc/message.h>
#import "MJProperty+Bm.h"

@interface MJProperty (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)cachedPropertyWithPropertyBmHb:(NSInteger)hb;
+ (BOOL)setPropertyBmHb:(NSInteger)hb;
+ (BOOL)valueForObjectBmHb:(NSInteger)hb;
+ (BOOL)setValueForobjectBmHb:(NSInteger)hb;
+ (BOOL)propertyKeysWithStringKeyBmHb:(NSInteger)hb;
+ (BOOL)setOriginKeyForclassBmHb:(NSInteger)hb;
+ (BOOL)setPorpertyKeysForclassBmHb:(NSInteger)hb;
+ (BOOL)propertyKeysForClassBmHb:(NSInteger)hb;
+ (BOOL)setObjectClassInArrayForclassBmHb:(NSInteger)hb;
+ (BOOL)objectClassInArrayForClassBmHb:(NSInteger)hb;

@end
