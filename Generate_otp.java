import java.util.Arrays;
import java.util.Random;
import static javax.management.Query.value;


public class Generate_otp {

    public static void main(String[] args) {
        int length=4;
        
        String gen_otp=new String(otp(length));
                System.out.println(gen_otp);
        
    }
    
        static char[] otp(int len)
    {
        
        String numbers = "0123456789";
        Random ran=new Random();
        char[] gotp=new char[len];
        for(int i=0;i<len;i++)
        {
            gotp[i]=numbers.charAt(ran.nextInt(numbers.length()));
        }
        
       
         return gotp;
    }
    
    
    