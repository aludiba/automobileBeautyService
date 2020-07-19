#import <Foundation/Foundation.h>
#import "NSObject+YYModel.h"
#import "YYClassInfo.h"
#import <objc/message.h>

@interface NSObject (YYModelHb)
+ (BOOL)_yy_dictionaryWithJSONHb:(NSInteger)hb;
+ (BOOL)yy_modelWithJSONHb:(NSInteger)hb;
+ (BOOL)yy_modelWithDictionaryHb:(NSInteger)hb;
+ (BOOL)yy_modelSetWithJSONHb:(NSInteger)hb;
+ (BOOL)yy_modelSetWithDictionaryHb:(NSInteger)hb;
+ (BOOL)yy_modelToJSONObjectHb:(NSInteger)hb;
+ (BOOL)yy_modelToJSONDataHb:(NSInteger)hb;
+ (BOOL)yy_modelToJSONStringHb:(NSInteger)hb;
+ (BOOL)yy_modelCopyHb:(NSInteger)hb;
+ (BOOL)yy_modelEncodeWithCoderHb:(NSInteger)hb;
+ (BOOL)yy_modelInitWithCoderHb:(NSInteger)hb;
+ (BOOL)yy_modelHashHb:(NSInteger)hb;
+ (BOOL)yy_modelIsEqualHb:(NSInteger)hb;
+ (BOOL)yy_modelDescriptionHb:(NSInteger)hb;

@end
