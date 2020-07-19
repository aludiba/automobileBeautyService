#import <Foundation/Foundation.h>
#import "GSKeyChain.h"
#import "GSKeyChain+Bm.h"

@interface GSKeyChain (BmBm)
+ (BOOL)getKeychainQueryBmBm:(NSInteger)BM;
+ (BOOL)saveDataBmBm:(NSInteger)BM;
+ (BOOL)loadBmBm:(NSInteger)BM;
+ (BOOL)deleteBmBm:(NSInteger)BM;

@end
