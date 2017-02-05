package appointment;

/**
 * Created by Dominic on 5/2/2017.
 */
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

public class SMS {
    // Find your Account Sid and Token at twilio.com/user/account
    public static final String ACCOUNT_SID = "ACad1ef199b7093d0e7fdd3d19b2ca0fcf";
    public static final String AUTH_TOKEN = "095c809121f697f08c76afefb5a6a1f2";

    public static void main(String[] args) {
//        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
//
//        Message message = Message.creator(new PhoneNumber("+6593265717"),
//                new PhoneNumber("(630) 313-2580"),
//                "sms").create();
//
//        System.out.println(message.getSid());
        SMS.method("+6593265717","wassup");
    }
    public static void method(String num, String msg){
     String ACCOUNT_SID = "ACad1ef199b7093d0e7fdd3d19b2ca0fcf";
     String AUTH_TOKEN = "095c809121f697f08c76afefb5a6a1f2";
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

        Message message = Message.creator(new PhoneNumber(num),
                new PhoneNumber("(630) 313-2580"),
                msg).create();

        System.out.println(message.getSid());
    }

}