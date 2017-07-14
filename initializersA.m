#import <Foundation/Foundation.h>

@interface initializersA:NSObject 

@property (strong,nonatomic) NSString *fname;
@property (strong,nonatomic) NSString *lname;
@property (assign) float  age;

-(instancetype)initializeVar:(NSString*)fname lname:(NSString*)lname age:(float)age;
-(void)isAdult;
@end

@implementation initializersA 
-(instancetype)initializeVar:(NSString*)fname lname:(NSString*)lname age:(float)age
{
    if((self==[super init]))
    {
        _fname=fname;
        _lname=lname;
        _age  =age;
    }
    return self;
}

-(void)isAdult
{
    if(age>=18.0)
    NSLog(@"You Are Adult");
    else
    NSLog(@"You Are Not Adult");
}
@end

int main (int argc, const char * argv[])
{
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    initializersA *ini = [[initializersA alloc] initializeVar:@"Dharmendra" lname:@"Sinha" age:24.0];
    [ini isAdult];
 
   [pool drain];
   return 0;
}
