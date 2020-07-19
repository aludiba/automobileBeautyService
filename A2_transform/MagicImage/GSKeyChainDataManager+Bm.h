#import <Foundation/Foundation.h>
#import "GSKeyChainDataManager.h"
#import "GSKeyChain.h"

@interface GSKeyChainDataManager (Bm)
+ (BOOL)saveUUIDBm:(NSInteger)BM;
+ (BOOL)readUUIDBm:(NSInteger)BM;
+ (BOOL)deleteUUIDBm:(NSInteger)BM;

@end
