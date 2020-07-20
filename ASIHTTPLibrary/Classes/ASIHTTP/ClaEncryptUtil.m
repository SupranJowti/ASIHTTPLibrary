//
//  ClaEncryptUtil.m
//  ASIHttpRequest
//
//  Created on 3/19/14.
//
//

#import "ClaEncryptUtil.h"

@implementation ClaEncryptUtil

+ (void)encryptData:(NSMutableData*)inputData keyString:(NSString*)keyString
{
    NSString* w_xor_key = @"!~'photocapsule/forever?big-hit|^#";
    if(keyString && keyString.length)
        w_xor_key = keyString;
    
    Byte l = 0;
    Byte *keys = (Byte*)[w_xor_key dataUsingEncoding:NSASCIIStringEncoding].bytes;
    NSInteger key_len = w_xor_key.length;
    
    for (int i=0; i<inputData.length; i++){
        [inputData getBytes:&l range:NSMakeRange(i, 1)];
        
        l = (l^keys[i%key_len]);
        
        [inputData replaceBytesInRange:NSMakeRange(i, 1) withBytes:&l];
    }
}

@end
