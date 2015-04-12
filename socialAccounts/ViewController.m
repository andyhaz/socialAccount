//
//  ViewController.m
//  socialAccounts
//
//  Created by andrew hazlett on 4/12/15.
//  Copyright (c) 2015 andrew hazlett. All rights reserved.
//

#import "ViewController.h"
#import "socialInterface.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)twtterButton:(id)sender {
    NSLog(@"twitter button");
    socialInterface *si = [[socialInterface alloc]init];
    
    [self presentViewController:[si twitterPost:@"SocialInterface twittwe Post"] animated:YES completion:nil];
}

- (IBAction)facebookButton:(id)sender {
    NSLog(@"facebook button");
    socialInterface *si = [[socialInterface alloc]init];
    
    [self presentViewController:[si twitterPost:@"SocialInterface facebook Post"] animated:YES completion:nil];
}
@end
