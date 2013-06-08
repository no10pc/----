//
//  MKViewController.h
//  RecipeBook
//
//  Created by 付 翾宇 on 13-5-23.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MKViewController : UIViewController
<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) IBOutlet UITableView *tableView;

@end
