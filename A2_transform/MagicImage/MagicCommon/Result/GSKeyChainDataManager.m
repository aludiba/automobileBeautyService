#import "GSKeyChainDataManager.h"
#import "GSKeyChain.h"
@implementation GSKeyChainDataManager
static NSString * const KEY_IN_KEYCHAIN_UUID = @"dfbUUID";
static NSString * const KEY_UUID = @"DfbUUID";
+(void)saveUUID:(NSString *)UUID{
    NSMutableDictionary *usernamepasswordKVPairs = [NSMutableDictionary dictionary];
    [usernamepasswordKVPairs setObject:UUID forKey:KEY_UUID];
    [GSKeyChain save:KEY_IN_KEYCHAIN_UUID data:usernamepasswordKVPairs];
}
+(NSString *)readUUID{
    NSMutableDictionary *usernamepasswordKVPair = (NSMutableDictionary *)[GSKeyChain load:KEY_IN_KEYCHAIN_UUID];
    return [usernamepasswordKVPair objectForKey:KEY_UUID];
}
+(void)deleteUUID{
    [GSKeyChain delete:KEY_IN_KEYCHAIN_UUID];
}
@end
