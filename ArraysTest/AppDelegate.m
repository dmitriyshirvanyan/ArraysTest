//
//  AppDelegate.m
//  ArraysTest
//
//  Created by dmitriyshirvanyan on 15.12.2021.
//

#import "AppDelegate.h"
#import "ASObject.h"
#import "ASChild.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor cyanColor];
    self.window.rootViewController = [[UIViewController alloc] init];
    [self.window makeKeyAndVisible];
    
    
    //NSArray* array = [[NSArray alloc]initWithObjects:@"string 1",@"string 2",@"string 3", nil];
    
    //NSArray* array = [NSArray arrayWithObjects:@"string 1", @"string 2", @"string 3", nil];
    
    //NSArray* array = @[@"string 1", @"string 2", @"string 3"];
    
    /*
    for (int i = 0; i < [array count]; i++) {
        NSLog(@"%@", [array objectAtIndex:i]);
        NSLog(@"i = %d", i);
    }
    
    for (int i = [array count] - 1; i >= 0; i--) {
        NSLog(@"%@", [array objectAtIndex:i]);
        NSLog(@"i = %d", i);
    }
    */
    

    /*
    for (NSString* string in array) {
        NSLog(@"%@", string);
        NSLog(@"index = %d",[array indexOfObject:string]);
    }
     */
    
    ASObject* obj1 = [[ASObject alloc] init];
    ASObject* obj2 = [[ASObject alloc] init];
    ASChild* obj3 = [[ASChild alloc] init];
    
    obj1.name = @"Object 1";
    obj2.name = @"Object 2";
    [obj3 setName:@"Object 3"];
    
    obj3.lastName = @"Last Name";
  
    NSArray* array = [NSArray arrayWithObjects:obj3, obj2, obj1, nil];
    
    for (ASObject* obj in array) {
        NSLog(@"name = %@", obj.name);
        [obj action];
        
        if ([obj isKindOfClass:[ASChild class]]) {
            
            ASChild* child = (ASChild*)obj;
            
            NSLog(@"last name = %@", child.lastName);
        }
    } 
     
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


@end
