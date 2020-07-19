#import <Foundation/Foundation.h>
#import "NSInvocation+RACTypeParsing.h"
#import "RACTuple.h"
#import "RACUnit.h"
#import <CoreGraphics/CoreGraphics.h>

@interface NSInvocation (RACTypeParsingBm)
+ (BOOL)rac_setArgumentAtindexBm:(NSInteger)BM;
+ (BOOL)rac_argumentAtIndexBm:(NSInteger)BM;
+ (BOOL)rac_argumentsTupleBm:(NSInteger)BM;
+ (BOOL)setRac_argumentsTupleBm:(NSInteger)BM;
+ (BOOL)rac_returnValueBm:(NSInteger)BM;

@end
