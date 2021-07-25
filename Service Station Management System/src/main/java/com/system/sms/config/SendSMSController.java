package com.system.sms.config;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.system.entity.Bookings;

@Controller
public class SendSMSController {
	
    String customerName;
    String tmp1;
    String tmp2;
    String date;
    String time;
    String contactNo;
    String temp;
    String msg;
    String msg1;

    @PostMapping("/sendSMS")	
    public String sendSMS(@ModelAttribute("employee") Bookings theEmployee){
    	
    	tmp1 = theEmployee.getCustomerName();
    	customerName = tmp1.replaceAll("\\s", "+");
    	date = theEmployee.getDate();
    	tmp2 = theEmployee.getTime();
    	time = tmp2.replaceAll("\\s", "+");
    	contactNo = theEmployee.getContactNo();
    	
    	temp = "OTEK+Auto+Service+Station\\nDear"+" "+customerName+",\\nYour+booking+is+confirmed !\\nPlease+come+at "+time+" "+"on"+" "+date+"";
    	msg = temp.replaceAll("\\s", "+");
    	
    	try {
    		
    		//String msg = "OTEK+Auto+Service+Station";
    		msg1 = "OTEK+Auto+Service+Station\\nDear"+"__"+customerName+",\\nYour+booking+is+confirmed!\\nPlease+come+at__"+time+"__"+"on"+"__"+date+"";
   		 
    		URL textit = new URL("http://textit.biz/sendmsg/index.php?id=&pw=&to="+contactNo+"&text="+msg+"");
    		BufferedReader in = new BufferedReader(
    		new InputStreamReader(textit.openStream()));
    		 
    		String inputLine;
    		while ((inputLine = in.readLine()) != null)
    		System.out.println(inputLine);
    		in.close();
    		
    		
        	}catch (Exception e) {
        		
        		e.printStackTrace();
        	}
    	
    		return "redirect:/inbox";
    	
    	}
    	
    }

