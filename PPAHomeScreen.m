//
//  PPAViewController.m
//  Personal Project App
//
//  Created by Albert Kragl on 2013-09-02.
//  Copyright (c) 2013 Albert Kragl. All rights reserved.
//

#import "PPAHomeScreen.h"

@interface PPAHomeScreen ()

@end

@implementation PPAHomeScreen

- (NSString *)dataFilePath
{
    NSError *error;
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"choices.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if (![fileManager fileExistsAtPath: path])
    {
        NSString *bundle = [[NSBundle mainBundle] pathForResource:@"choices" ofType:@"plist"];
        
        [fileManager copyItemAtPath:bundle toPath:path error:&error];
    }
    ////NSBundle *bundle = [NSBundle mainBundle];
    ////NSString *plistPath = [bundle pathForResource:@"choices" ofType:@"plist"];
    return path;
    //NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //NSString *documentDirectory = [paths objectAtIndex:0];
    //return [documentDirectory stringByAppendingPathComponent:@"choices.plist"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    CGFloat screenWidth = screenSize.width;
    CGFloat screenHeight = screenSize.height;
    
    NSString *fullImageName = [NSString stringWithFormat:@"Gtr%@%@", [NSString stringWithFormat:@" %1.0fx%1.0f", screenWidth * 2, screenHeight * 2], @".png"];
    UIImage *img = [UIImage imageNamed:fullImageName];
    
    /*
    self.imageview.frame = CGRectMake(
                                 self.imageview.frame.origin.x,
                                 self.imageview.frame.origin.y, screenWidth, screenHeight);
    
    self.imageview.contentMode = UIViewContentModeBottomLeft; // This determines position of image
    self.imageview.clipsToBounds = YES;
    */
    self.imageview.contentMode = UIViewContentModeTop; // This determines position of image
    [self.imageview setImage:img];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark PPAHomeScreen methods

-(IBAction)buttonPressed:(id)sender {
    UIButton *selectedButton = (UIButton *)sender;
    
    // Determine which button was pressed
    
    NSString *path = [self dataFilePath];
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
        NSMutableArray *array = [[NSMutableArray alloc] initWithContentsOfFile:path];
        [array replaceObjectAtIndex:0 withObject:[[NSNumber numberWithInteger:selectedButton.tag] stringValue]];
        NSLog([[NSNumber numberWithInteger:selectedButton.tag] stringValue]);
        
        [array writeToFile:path atomically:YES];
    
    }
}

@end


