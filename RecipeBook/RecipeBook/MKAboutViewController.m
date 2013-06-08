//
//  MKAboutViewController.m
//  RecipeBook
//
//  Created by 付 翾宇 on 13-5-23.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import "MKAboutViewController.h"

@interface MKAboutViewController ()

@end

@implementation MKAboutViewController

@synthesize webView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSURL *url = [[NSURL alloc] initWithString:@"http://www.mmpaper.cn/news/64.html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
