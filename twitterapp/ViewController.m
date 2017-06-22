//
//  ViewController.m
//  twitterapp
//
//  Created by macserver on 6/14/17.
//  Copyright © 2017 macserver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *appkey,*appsec;
    // appkey=@"yo7T0Vg7RR1cfPprit97lS4kh";
    // appsec=@"ZYoma3g2BcIUwBZerxQmSKGLiodq48SqsCD0KRqcNFGaJk4E4J";
    appkey=@"cW0z9UilapFeJtkJH2wMFFyI4";
    appsec=@"rhJOt3VBYK7rrHxPyUGHYjpDYz1uMxBKYuK2a4g3pMxhjl8v3S";
    
    STTwitterAPI *twitter = [STTwitterAPI twitterAPIAppOnlyWithConsumerKey:appkey
                                                            consumerSecret:appsec];
    
    [twitter verifyCredentialsWithUserSuccessBlock:^(NSString *username, NSString *userID)
     {
         NSLog(@"user name = %@",username);
         NSLog(@"user ID = %@",userID);
         
         
         [twitter getUserTimelineWithScreenName:@"blissTest1"
                                   successBlock:^(NSArray *statuses) {
                                       // ...
                                       NSLog(@"statuse ==%@",statuses);
                                   } errorBlock:^(NSError *error) {
                                       // ...
                                       NSLog(@"Error == %@",error.localizedDescription);
                                   }];
         
     } errorBlock:^(NSError *error) {
         // ...
     }];

   
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    

}

@end
