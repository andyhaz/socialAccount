//
//  socialInterface.h
//  twitterAccount
//
//  Created by andrew hazlett on 4/12/15.
//  Copyright (c) 2015 andrew hazlett. All rights reserved.
//
/*
-------------------------------
 socialInterdace
 by:Andy Hazlett
 Date: April 12, 2015
 Current Version:0.1
 Version History:
 0.1 first release
 
 Example:
 Twitter
 socialInterface *si = [[socialInterface alloc]init];
 [self presentViewController:[si twitterPost:@"SocialInterface Post"] animated:YES completion:nil];
 
 Facebooook:
 socialInterface *si = [[socialInterface alloc]init];
 [self presentViewController:[si facebookPost:@"SocialInterface Post"] animated:YES completion:nil];
-------------------------------
 */
#import <Foundation/Foundation.h>
#import  <Social/Social.h>

@interface socialInterface : NSObject

-(UIViewController*)twitterPost :(NSString*)postText;

-(UIViewController*)facebookPost :(NSString*)postText;

@end
