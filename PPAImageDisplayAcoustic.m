//
//  PPAImageDisplayAcoustic.m
//  Personal Project App
//
//  Created by Albert Kragl on 1/8/2014.
//  Copyright (c) 2014 Albert Kragl. All rights reserved.
//

#import "PPAImageDisplayAcoustic.h"
#import "PPADecisionEngine.h"
#import "PPASolutions.h"
#import "PPAHomeScreen.h"

@interface PPAImageDisplayAcoustic ()

@end

@implementation PPAImageDisplayAcoustic

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
    
    PPADecisionEngine *decisionEngine = [[PPADecisionEngine alloc] init];
    PPASolutions *solutions = [[PPASolutions alloc] init];
    
    self.solutions123 = [decisionEngine getSolutions];
    
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    CGFloat screenWidth = screenSize.width;
    CGFloat screenHeight = screenSize.height;
    
    // Finds standard screen size then multiplies by 2 to find retina size.

    self.sizeSuffix = [NSString stringWithFormat:@" %1.0fx%1.0f", screenWidth * 2, screenHeight * 2];
    
    // TBD write code to make OK button go back to home screen/gear list
    
    if ([[self.solutions123 objectAtIndex:0] isEqualToString:@"-1"]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"No solution found! Please double check your choices."
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    
    else {
        
        //NSLog([self.solutions123 objectAtIndex:0]);
        //NSLog([self.solutions123 objectAtIndex:1]);
        //NSLog([self.solutions123 objectAtIndex:2]);
        
        self.solution1 = [solutions getSolution:[self.solutions123 objectAtIndex:0]]; // First object = 0
        
        
        self.totalSolution = [[NSMutableArray alloc] init];
        
        solutions123Count = [self.solutions123 count];
        solution1Count = [self.solution1 count];
        [self.totalSolution addObjectsFromArray:self.solution1];
        
        if ([[self.solutions123 objectAtIndex:1] isEqualToString:@"-1"]) { // if statement for solution 2 = @"-1" add an else
            solution2Count = 0;
        }
        else {
            self.solution2 = [solutions getSolution:[self.solutions123 objectAtIndex:1]];
            solution2Count = [self.solution2 count];
            [self.totalSolution addObjectsFromArray:self.solution2];
        }
        
        if ([[self.solutions123 objectAtIndex:2] isEqualToString:@"-1"]) { // if statement for solution 3 = @"-1"
            solution3Count = 0;
        }
        else {
            self.solution3 = [solutions getSolution:[self.solutions123 objectAtIndex:2]];
            solution3Count = [self.solution3 count];
            [self.totalSolution addObjectsFromArray:self.solution3];
        }
        
        totalSolutionCount = [self.totalSolution count];
        totalSolutionIndex = 0; // Tells where the user currently is, number/value can change
        
        
        NSString *fullImageName = [NSString stringWithFormat:@"%@%@%@", [self.solution1 objectAtIndex:0], self.sizeSuffix, @".png"];
        //NSLog(fullImageName);
        UIImage *img = [UIImage imageNamed:fullImageName];
        [imageview setImage:img];
        
        [leftButton setTitle:@"Home" forState:UIControlStateNormal];
        
        if (totalSolutionCount == 1) {
            rightButton.hidden = TRUE;
        }
        
        else if (totalSolutionCount > 1 && solution1Count > 1) {
            [rightButton setTitle:@"Next" forState:UIControlStateNormal];
        }
        
        else {
            [rightButton setTitle:@"2nd Best" forState:UIControlStateNormal];
        }
        
        [navBarTitle setTitle:@"Best Solution"];
        
    }
    
    

    // ERROR MESSAGES
    
    /*
    if ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
        [[plistData objectAtIndex:3] isEqualToString:@"0"]) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Note"
                                                        message:@"Computer and software type do not match."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    
    if ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
        [[plistData objectAtIndex:3] isEqualToString:@"1"]) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Note"
                                                        message:@"Computer and software type do not match."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    
    if () {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"Please select at least one piece of equipment."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    */
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark alert dialogue handling method

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    PPAHomeScreen *homeScreen = (PPAHomeScreen *)[storyboard instantiateViewControllerWithIdentifier:@"Home Screen"];
    [self presentViewController:homeScreen animated:YES completion:nil];
}

#pragma mark button handling methods

-(IBAction)previousSolutionImage {
    if (totalSolutionIndex == 0) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
        PPAHomeScreen *homeScreen = (PPAHomeScreen *)[storyboard instantiateViewControllerWithIdentifier:@"Home Screen"];
        [self presentViewController:homeScreen animated:YES completion:nil];
    }
    
    if (totalSolutionIndex > 0) { // if index is not at very first picture, do this:
        totalSolutionIndex--;
        NSString *fullImageName = [NSString stringWithFormat:@"%@%@%@", [self.totalSolution objectAtIndex:totalSolutionIndex], self.sizeSuffix, @".png"];
        //NSLog(fullImageName);
        UIImage *img = [UIImage imageNamed:fullImageName];
    
        [imageview setImage:img];
    }
    
    if (totalSolutionIndex != totalSolutionCount - 1) {
        rightButton.hidden = FALSE;
    }
    
    if (totalSolutionIndex == 0) {
        [leftButton setTitle:@"Home" forState:UIControlStateNormal];
    }
    
    // need if for left button special text 1 (back to first solution)
    
    if (totalSolutionIndex == solution1Count) {
        [leftButton setTitle: @"Best" forState:UIControlStateNormal];
    }
    else if (totalSolutionIndex == solution1Count + solution2Count) {
        [leftButton setTitle: @"2nd Best" forState:UIControlStateNormal];
    }
    else if (totalSolutionIndex == 0) {
        [leftButton setTitle:@"Home" forState:UIControlStateNormal];
    }
    else {
        [leftButton setTitle: @"Previous" forState:UIControlStateNormal];
    }
    
    // need 1-2 ifs for right button text
    
    if (totalSolutionIndex == solution1Count - 1) {
        [rightButton setTitle: @"2nd Best" forState:UIControlStateNormal];
    }
    else if (totalSolutionIndex == solution1Count + solution2Count - 1) {
        [rightButton setTitle: @"3rd Best" forState:UIControlStateNormal];
    }
    else {
        [rightButton setTitle: @"Next" forState:UIControlStateNormal];
    }

    // Solution Title
    
    if (totalSolutionIndex >= 0 && totalSolutionIndex <= solution1Count - 1) {
        [navBarTitle setTitle:@"Best Solution"];
    }
    else if (totalSolutionIndex >= solution1Count && totalSolutionIndex <= solution1Count + solution2Count - 1) {
        [navBarTitle setTitle:@"2nd Solution"];
    }
    else if (totalSolutionIndex >= solution1Count + solution2Count && totalSolutionIndex <= totalSolutionCount - 1) {
        [navBarTitle setTitle:@"3rd Solution"];
    }
}

-(IBAction)nextSolutionImage { // TBD Need to change IBAction names
    
    if (totalSolutionIndex < totalSolutionCount - 1) { // if index is not at the last picture, do this:
        totalSolutionIndex++;
        NSString *fullImageName = [NSString stringWithFormat:@"%@%@%@", [self.totalSolution objectAtIndex:totalSolutionIndex], self.sizeSuffix, @".png"];
        NSLog(fullImageName);
        UIImage *img = [UIImage imageNamed:fullImageName];
      /*  [UIView transitionWithView:imageview
                          duration:0.5f
                           options:UIViewAnimationOptionTransitionFlipFromRight
                        animations:^{
                            imageview.image = img;
                        } completion:nil]; */
        [imageview setImage:img];
        
        rightButton.hidden = FALSE;
    }
    
    if (totalSolutionIndex == totalSolutionCount - 1) {
        rightButton.hidden = TRUE;
    }
    
    if (totalSolutionIndex == solution1Count - 1) {
        [rightButton setTitle: @"2nd Best" forState:UIControlStateNormal];
    }
    else if (totalSolutionIndex == solution1Count + solution2Count - 1) {
             [rightButton setTitle: @"3rd Best" forState:UIControlStateNormal];
    }
    else {
        [rightButton setTitle: @"Next" forState:UIControlStateNormal];
    }
    
    if (totalSolutionIndex == solution1Count) {
        [leftButton setTitle:@"Best" forState:UIControlStateNormal];
    }
    
    else if (totalSolutionIndex == solution1Count + solution2Count) {
        [leftButton setTitle:@"2nd Best" forState:UIControlStateNormal];
    }
    else {
        [leftButton setTitle:@"Previous" forState:UIControlStateNormal];
    }
    
    // Solution Title
    
    if (totalSolutionIndex >= 0 && totalSolutionIndex <= solution1Count - 1) {
        [navBarTitle setTitle:@"Best Solution"];
    }
    else if (totalSolutionIndex >= solution1Count && totalSolutionIndex <= solution1Count + solution2Count - 1) {
        [navBarTitle setTitle:@"2nd Solution"];
    }
    else if (totalSolutionIndex >= solution1Count + solution2Count && totalSolutionIndex <= totalSolutionCount - 1) {
        [navBarTitle setTitle:@"3rd Solution"];
    }
    
}

@end
