#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "YYClassInfo.h"
#import <objc/runtime.h>
#import "YYClassInfo+Bm.h"

@interface YYClassInfo (BmHb)
+ (BOOL)initWithClassBmHb:(NSInteger)hb;
+ (BOOL)_updateBmHb:(NSInteger)hb;
+ (BOOL)setNeedUpdateBmHb:(NSInteger)hb;
+ (BOOL)needUpdateBmHb:(NSInteger)hb;
+ (BOOL)classInfoWithClassBmHb:(NSInteger)hb;
+ (BOOL)classInfoWithClassNameBmHb:(NSInteger)hb;

@end
