
//  ViewController.h
//  twitterapp
//
//  Created by macserver on 6/14/17.
//  Copyright © 2017 macserver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>
#import <Social/Social.h>
#import "STTwitterAPI.h"


@interface ViewController : UIViewController
@property (nonatomic, strong) STTwitterAPI *twitter;

@end

