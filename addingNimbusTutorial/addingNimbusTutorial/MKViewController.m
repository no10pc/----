//
//  MKViewController.m
//  addingNimbusTutorial
//
//  Created by 付 翾宇 on 13-6-7.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import "MKViewController.h"
#import "NimbusNetworkImage.h"
@interface MKViewController ()

@end

@implementation MKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loadPicture:(id)sender {
    
    UIImage* image = [UIImage imageWithContentsOfFile:
                      NIPathForBundleResource(nil, @"default@2x.png")];
    NINetworkImageView* imageView = [[NINetworkImageView alloc] initWithImage:image];
    
    // Method #1: Use the image's frame to determine the display size for the network image.
    imageView.frame = CGRectMake(0, 0, 768, 768);

    [imageView setPathToNetworkImage:@"http://farm2.static.flickr.com/1165/644335254_4b8a712be5.jpg" contentMode:UIViewContentModeScaleAspectFill];
    
    [self.view addSubview:(imageView)];
    

}
@end
