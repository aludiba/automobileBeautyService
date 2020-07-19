#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "YYClassInfo.h"
#import <objc/runtime.h>

@interface YYClassInfo (Hb)
+ (BOOL)initWithClassHb:(NSInteger)hb;
+ (BOOL)_updateHb:(NSInteger)hb;
+ (BOOL)setNeedUpdateHb:(NSInteger)hb;
+ (BOOL)needUpdateHb:(NSInteger)hb;
+ (BOOL)classInfoWithClassHb:(NSInteger)hb;
+ (BOOL)classInfoWithClassNameHb:(NSInteger)hb;

@end
