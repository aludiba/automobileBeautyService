#import <Foundation/Foundation.h>
#import "MJExtensionConst.h"
#import <CoreData/CoreData.h>
#import "MJProperty.h"
#import "NSObject+MJKeyValue.h"
#import "NSObject+MJProperty.h"
#import "NSString+MJExtension.h"
#import "MJProperty.h"
#import "MJPropertyType.h"
#import "MJExtensionConst.h"
#import "MJFoundation.h"
#import "NSString+MJExtension.h"
#import "NSObject+MJClass.h"

@interface NSObject (MJKeyValueBm)
+ (BOOL)mj_errorBm:(NSInteger)BM;
+ (BOOL)setMj_errorBm:(NSInteger)BM;
+ (BOOL)mj_referenceReplacedKeyWhenCreatingKeyValuesBm:(NSInteger)BM;
+ (BOOL)mj_isReferenceReplacedKeyWhenCreatingKeyValuesBm:(NSInteger)BM;
+ (BOOL)loadBm:(NSInteger)BM;
+ (BOOL)mj_setKeyValuesBm:(NSInteger)BM;
+ (BOOL)mj_setKeyValuesContextBm:(NSInteger)BM;
+ (BOOL)mj_objectWithKeyValuesBm:(NSInteger)BM;
+ (BOOL)mj_objectWithKeyValuesContextBm:(NSInteger)BM;
+ (BOOL)mj_objectWithFilenameBm:(NSInteger)BM;
+ (BOOL)mj_objectWithFileBm:(NSInteger)BM;
+ (BOOL)mj_objectArrayWithKeyValuesArrayBm:(NSInteger)BM;
+ (BOOL)mj_objectArrayWithKeyValuesArrayContextBm:(NSInteger)BM;
+ (BOOL)mj_objectArrayWithFilenameBm:(NSInteger)BM;
+ (BOOL)mj_objectArrayWithFileBm:(NSInteger)BM;
+ (BOOL)mj_keyValuesBm:(NSInteger)BM;
+ (BOOL)mj_keyValuesWithKeysBm:(NSInteger)BM;
+ (BOOL)mj_keyValuesWithIgnoredKeysBm:(NSInteger)BM;
+ (BOOL)mj_keyValuesWithKeysIgnoredkeysBm:(NSInteger)BM;
+ (BOOL)mj_keyValuesArrayWithObjectArrayBm:(NSInteger)BM;
+ (BOOL)mj_keyValuesArrayWithObjectArrayKeysBm:(NSInteger)BM;
+ (BOOL)mj_keyValuesArrayWithObjectArrayIgnoredkeysBm:(NSInteger)BM;
+ (BOOL)mj_keyValuesArrayWithObjectArrayKeysIgnoredkeysBm:(NSInteger)BM;
+ (BOOL)mj_JSONDataBm:(NSInteger)BM;
+ (BOOL)mj_JSONObjectBm:(NSInteger)BM;
+ (BOOL)mj_JSONStringBm:(NSInteger)BM;

@end
