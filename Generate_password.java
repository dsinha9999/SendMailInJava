import java.util.Arrays;
import java.util.Random;
import static javax.management.Query.value;


public class Generate_password {

    public static void main(String[] args) {
        int length=10;
        String gen_pass=new String(pass(length));
        System.out.println(gen_pass);
        
    }
    
        static char[] pass(int len)
    {
        String alphabet="abcdefghijklmnopqrestuvwxyz";
        String alphabetC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String numbers="0123456789";
        String symbols="@#$%&*";
        String pass_string = alphabet+numbers+symbols+alphabetC;
        Random ran=new Random();
        char[] gpass=new char[len];
        for(int i=0;i<len;i++)
        {
            gpass[i]=pass_string.charAt(ran.nextInt(pass_string.length()));
        }
        
       
         return gpass;
    }
    
    