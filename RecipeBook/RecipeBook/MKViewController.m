//
//  MKViewController.m
//  RecipeBook
//
//  Created by 付 翾宇 on 13-5-23.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import "MKViewController.h"
#import "MKDetailViewController.h"
@interface MKViewController ()

@end

@implementation MKViewController
{
    NSArray *recipes;
}

@synthesize tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    recipes = @[@"Aromas阿罗玛",
                @"Fabria&Stone菲博瑞",
                @"Timeless永恒",
                @"New flora",
                @"艾乐瑞",
                @"芙德妮",
                @"诺曼蒂",
                @"塔迪新",
                @"巴西诺",
                @"汉堡",
                @"纽约",
                @"Fantasia凡塔斯",
                @"Nyans尼昂斯",
                @"Adesso阿迪斯",
                @"萨沃纳",
                @"芙乐儿",
                @"格瑞",
                @"格瑞斯",
                @"迪士尼",
                @"玛利亚",
                @"秋叶",
                @"阿迪斯",
                @"阿罗玛",
                @"丹斯",
                @"凡塔斯",
                @"西奥",
                @"永恒",
                @"Ginza银座",
                @"Cornelia科莉娅",
                @"Enfargat恩法特",
                @"Urban",
                @"seasons都市风情",
                @"Code red红密码",
                @"Floral",
                @"Floc绒花",
                @"Finesse菲丽",
                @"EU-Star欧洲之星",
                @"European Life欧品生活",
                @"Versatile沃赛迪",
                @"Dandino丹尼诺",
                @"European Classic欧洲经典",
                @"Mary玛丽",
                @"Wish威斯",
                @"Galleri佳乐瑞",
                @"Little Garden秘密花园",
                @"CN-Imperssion中国印象",
                @"City Life都市生活",
                @"Catalina Estrada卡特琳娜",
                @"Barcino巴西诺",
                @"Theo Papel西奥",
                @"Naturae自然界",
                @"Room Seven",
                @"七彩空间",
                @"Portia波西娅",
                @"Palazzo皇室经典",
                @"Golden Sands金沙时代",
                @"Disney迪士尼"];
}

//实现委托
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier =@"RecipeCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell==nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"showRecipeDetail"])
    {
     NSIndexPath *indexPath =
        [self.tableView indexPathForSelectedRow];
        MKDetailViewController *destViewController =
        segue.destinationViewController;
        destViewController.recipeName =
        [recipes objectAtIndex:indexPath.row];
        
    }
}


@end
