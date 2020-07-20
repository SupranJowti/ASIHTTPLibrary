//
//  ClaEncryptUtil.h
//  ASIHttpRequest
//
//  Created on 3/19/14.
//
//

#import <Foundation/Foundation.h>

#define kDownloadContentEncryptBlockMAxSize             1024

@interface ClaEncryptUtil : NSObject

+ (void)encryptData:(NSMutableData*)inputData keyString:(NSString*)keyString;

@end
