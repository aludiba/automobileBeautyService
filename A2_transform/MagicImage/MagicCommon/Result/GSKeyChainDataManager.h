#import <Foundation/Foundation.h>
@interface GSKeyChainDataManager : NSObject
+(void)saveUUID:(NSString *)UUID;
+(NSString *)readUUID;
+(void)deleteUUID;
@end
