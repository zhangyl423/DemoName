//
//  NetAddress.m
//  GroupPurchaseApp
//
//  Created by lanou3g on 15/5/20.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "NetAddress.h"
#import "SignatrueEncryption.h"

@implementation NetAddress

+ (NSString *)getURLWithDictionary:(NSMutableDictionary *)dictionary {
    NSMutableDictionary * newDictionary = [SignatrueEncryption encryptedParamsWithBaseParams:dictionary];

//    NSString * url = [NSString stringWithFormat:@"http://api.meishi.cc/v2/recipe_detail.php?appkey=42960815&sign=%@&category=%@&city=%@&limit=%@&page=%@", newDictionary[@"sign"], newDictionary[@"category"], newDictionary[@"city"], newDictionary[@"limit"], newDictionary[@"page"]];
    
    NSString * url = [NSString stringWithFormat:@"http://api.meishi.cc/v2/recipe_detail.php?id=%@&verfiy_key=%@&source=iphone&format=json&lat=&lon=", newDictionary[@"id"], newDictionary[@"sign"]];
//    NSLog(@"%@", url);
    return [NetAddress URLEncodedString:url];
}

+ (NSString *)URLEncodedString:(NSString *)url{
    NSString * result = [url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    return result;
}

@end
