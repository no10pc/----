//
//  MKDetailViewController.m
//  RecipeBook
//
//  Created by 付 翾宇 on 13-5-23.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import "MKDetailViewController.h"

@interface MKDetailViewController ()

@end

@implementation MKDetailViewController

@synthesize recipeName;
@synthesize navTitle;


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

    navTitle.title = recipeName;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
