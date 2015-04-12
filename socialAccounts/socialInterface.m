//
//  socialInterface.m
//  twitterAccount
//
//  Created by andrew hazlett on 4/12/15.
//  Copyright (c) 2015 andrew hazlett. All rights reserved.
//

#import "socialInterface.h"

@implementation socialInterface

-(UIViewController*)twitterPost :(NSString*)postText{
    //NSLog(@"twitterPost:%@",postText);
    UIViewController *twitterString;
    // Twitter
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweet setInitialText:postText];
        [tweet setCompletionHandler:^(SLComposeViewControllerResult result)
         {
             if (result == SLComposeViewControllerResultCancelled)
             {
                 NSLog(@"The user cancelled.");
                 UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Twitter"
                                                                 message:@"Cancelled Post"
                                                                delegate:self
                                                       cancelButtonTitle:@"OK"
                                                       otherButtonTitles:nil];
                 [alert show];

             }
             else if (result == SLComposeViewControllerResultDone)
             {
                 NSLog(@"The user sent the tweet");
                 UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Twitter"
                                                                 message:@"Posted on Twitter"
                                                                delegate:self
                                                       cancelButtonTitle:@"OK"
                                                       otherButtonTitles:nil];
                 [alert show];
             }
         }];
        twitterString = tweet;
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Twitter"
                                                        message:@"Twitter integration is not available.  A Twitter account must be set up on your device."
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    return twitterString;
}

@end
