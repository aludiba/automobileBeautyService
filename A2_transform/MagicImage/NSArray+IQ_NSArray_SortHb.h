#import <Foundation/NSArray.h>
#import "IQNSArray+Sort.h"
#import "IQUIView+Hierarchy.h"
#import <UIKit/UIView.h>

@interface NSArray (IQ_NSArray_SortHb)
+ (BOOL)sortedArrayByTagHb:(NSInteger)hb;
+ (BOOL)sortedArrayByPositionHb:(NSInteger)hb;

@end
