#import <Foundation/Foundation.h>
#import "NSInvocation+RACTypeParsing.h"
#import "RACTuple.h"
#import "RACUnit.h"
#import <CoreGraphics/CoreGraphics.h>

@interface NSInvocation (RACTypeParsingHb)
+ (BOOL)rac_setArgumentAtindexHb:(NSInteger)hb;
+ (BOOL)rac_argumentAtIndexHb:(NSInteger)hb;
+ (BOOL)rac_argumentsTupleHb:(NSInteger)hb;
+ (BOOL)setRac_argumentsTupleHb:(NSInteger)hb;
+ (BOOL)rac_returnValueHb:(NSInteger)hb;

@end
