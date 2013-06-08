//
//  MKDetailViewController.h
//  RecipeBook
//
//  Created by 付 翾宇 on 13-5-23.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MKDetailViewController : UIViewController

@property (nonatomic,strong) NSString *recipeName;

@property (strong, nonatomic) IBOutlet UINavigationItem *navTitle;



@end
