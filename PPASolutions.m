//
//  PPASolutions.m
//  Personal Project App
//
//  Created by Albert Kragl on 2/9/2014.
//  Copyright (c) 2014 Albert Kragl. All rights reserved.
//

#import "PPASolutions.h"

@interface PPASolutions ()

@end

@implementation PPASolutions

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray *)getSolution:(NSString *)aSolutionId {
    
    /*
    UIImage *image1 = [UIImage imageNamed:@"Diagram 1.png"];
    UIImage *image2 = [UIImage imageNamed:@"Diagram 2.png"];
    UIImage *image3 = [UIImage imageNamed:@"Diagram 3.png"];
    UIImage *image4 = [UIImage imageNamed:@"Diagram 4.png"];
    UIImage *image5 = [UIImage imageNamed:@"Diagram 5.png"];
    UIImage *image6 = [UIImage imageNamed:@"Diagram 6.png"];
    UIImage *image7 = [UIImage imdageNamed:@"Diagram 7.png"];
    UIImage *image8 = [UIImage imageNamed:@"Diagram 8.png"];
    UIImage *image9 = [UIImage imageNamed:@"Diagram 9.png"];
    UIImage *image10 = [UIImage imageNamed:@"Diagram 10.png"];
    */
    
    NSMutableArray *solution1 = [[NSMutableArray alloc]initWithObjects:@"Diagram 1a", @"Text 1a", nil];
    NSMutableArray *solution2 = [[NSMutableArray alloc]initWithObjects:@"Diagram 2a", @"Text 1a", nil];
    NSMutableArray *solution3 = [[NSMutableArray alloc]initWithObjects:@"Diagram 3a", @"Text 1a", nil];
    NSMutableArray *solution4 = [[NSMutableArray alloc]initWithObjects:@"Diagram 4a", @"Text 1a", nil];
    NSMutableArray *solution5 = [[NSMutableArray alloc]initWithObjects:@"Diagram 5a", @"Text 5a", nil];
    NSMutableArray *solution6 = [[NSMutableArray alloc]initWithObjects:@"Diagram 6a", @"Text 5a", nil];
    NSMutableArray *solution7 = [[NSMutableArray alloc]initWithObjects:@"Diagram 7a", @"Text 7a", nil];
    NSMutableArray *solution8 = [[NSMutableArray alloc]initWithObjects:@"Diagram 8a", @"Text 7a", nil];
    NSMutableArray *solution9 = [[NSMutableArray alloc]initWithObjects:@"Diagram 9a", @"Text 7a", nil];
    NSMutableArray *solution10 = [[NSMutableArray alloc]initWithObjects:@"Diagram 10a", @"Text 7a", nil];
    NSMutableArray *solution11 = [[NSMutableArray alloc]initWithObjects:@"Diagram 11a", @"Text 11a", nil];
    NSMutableArray *solution12 = [[NSMutableArray alloc]initWithObjects:@"Diagram 12a", @"Text 11a", nil];
    NSMutableArray *solution13 = [[NSMutableArray alloc]initWithObjects:@"Diagram 13a", @"Text 11a", nil];
    NSMutableArray *solution14 = [[NSMutableArray alloc]initWithObjects:@"Diagram 14a", @"Text 11a", nil];
    NSMutableArray *solution15 = [[NSMutableArray alloc]initWithObjects:@"Diagram 15a", @"Text 15a", nil];
    NSMutableArray *solution16 = [[NSMutableArray alloc]initWithObjects:@"Diagram 16a", @"Text 15a", nil];
    NSMutableArray *solution17 = [[NSMutableArray alloc]initWithObjects:@"Diagram 17a", @"Text 15a", nil];
    NSMutableArray *solution18 = [[NSMutableArray alloc]initWithObjects:@"Diagram 18a", @"Text 15a", nil];
    NSMutableArray *solution19 = [[NSMutableArray alloc]initWithObjects:@"Diagram 19a", @"Text 19a", nil];
    NSMutableArray *solution20 = [[NSMutableArray alloc]initWithObjects:@"Diagram 20a", @"Text 19a", nil];
    NSMutableArray *solution21 = [[NSMutableArray alloc]initWithObjects:@"Diagram 21a", @"Text 21a", nil];
    NSMutableArray *solution22 = [[NSMutableArray alloc]initWithObjects:@"Diagram 22a", @"Text 21a", nil];
    NSMutableArray *solution23 = [[NSMutableArray alloc]initWithObjects:@"Diagram 23a", @"Text 23a", nil];
    NSMutableArray *solution24 = [[NSMutableArray alloc]initWithObjects:@"Diagram 24a", @"Text 24a", nil];
    NSMutableArray *solution25 = [[NSMutableArray alloc]initWithObjects:@"Diagram 25a", @"Text 23a", nil];
    NSMutableArray *solution26 = [[NSMutableArray alloc]initWithObjects:@"Diagram 26a", @"Text 26a", nil];
    NSMutableArray *solution27 = [[NSMutableArray alloc]initWithObjects:@"Diagram 27a", @"Text 26a", nil];
    NSMutableArray *solution28 = [[NSMutableArray alloc]initWithObjects:@"Diagram 28a", @"Text 28a", nil];
    NSMutableArray *solution29 = [[NSMutableArray alloc]initWithObjects:@"Diagram 29a", @"Text 29a", nil];
   
    if ([aSolutionId isEqualToString:@"1"]) {
        return solution1;
    }
    
    else if ([aSolutionId isEqualToString:@"2"]) {
        return solution2;
    }
    
    else if ([aSolutionId isEqualToString:@"3"]) {
        return solution3;
    }
    
    else if ([aSolutionId isEqualToString:@"4"]) {
        return solution4;
    }
    
    else if ([aSolutionId isEqualToString:@"5"]) {
        return solution5;
    }
    
    else if ([aSolutionId isEqualToString:@"6"]) {
        return solution6;
    }
    
    else if ([aSolutionId isEqualToString:@"7"]) {
        return solution7;
    }
    
    else if ([aSolutionId isEqualToString:@"8"]) {
        return solution8;
    }
    
    else if ([aSolutionId isEqualToString:@"9"]) {
        return solution9;
    }
    
    else if ([aSolutionId isEqualToString:@"10"]) {
        return solution10;
    }
    
    else if ([aSolutionId isEqualToString:@"11"]) {
        return solution11;
    }
    
    else if ([aSolutionId isEqualToString:@"12"]) {
        return solution12;
    }
    
    else if ([aSolutionId isEqualToString:@"13"]) {
        return solution13;
    }
    
    else if ([aSolutionId isEqualToString:@"14"]) {
        return solution14;
    }
    
    else if ([aSolutionId isEqualToString:@"15"]) {
        return solution15;
    }
    
    else if ([aSolutionId isEqualToString:@"16"]) {
        return solution16;
    }
    
    else if ([aSolutionId isEqualToString:@"17"]) {
        return solution17;
    }
    
    else if ([aSolutionId isEqualToString:@"18"]) {
        return solution18;
    }
    
    else if ([aSolutionId isEqualToString:@"19"]) {
        return solution19;
    }
    
    else if ([aSolutionId isEqualToString:@"20"]) {
        return solution20;
    }
    
    else if ([aSolutionId isEqualToString:@"21"]) {
        return solution21;
    }
    
    else if ([aSolutionId isEqualToString:@"22"]) {
        return solution22;
    }
    
    else if ([aSolutionId isEqualToString:@"23"]) {
        return solution23;
    }
    
    else if ([aSolutionId isEqualToString:@"24"]) {
        return solution24;
    }
    
    else if ([aSolutionId isEqualToString:@"25"]) {
        return solution25;
    }
    
    else if ([aSolutionId isEqualToString:@"26"]) {
        return solution26;
    }
    
    else if ([aSolutionId isEqualToString:@"27"]) {
        return solution27;
    }
    
    else if ([aSolutionId isEqualToString:@"28"]) {
        return solution28;
    }
    
    else if ([aSolutionId isEqualToString:@"29"]) {
        return solution29;
    }
    
    else {
        return nil;
    }
    
}

@end
