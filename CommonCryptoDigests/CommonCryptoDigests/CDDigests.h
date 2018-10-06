//
//  CDDigests.h
//  CommonCryptoDigests
//
//  Created by Josue on 06/10/18.
//  Copyright © 2018 Josue. All rights reserved.
//

#ifndef CDDigests_h
#define CDDigests_h
#import <CommonCrypto/CommonDigest.h>
#import <Foundation/Foundation.h>

@interface CDDigests: NSObject
+(NSString *) sha1String: (NSString *)input;
+(NSString *) sha1Data: (NSData *)input;
@end
#endif /* CDDigests_h */
