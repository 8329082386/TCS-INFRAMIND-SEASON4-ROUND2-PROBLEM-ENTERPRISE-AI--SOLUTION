package com.example.sms;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SendingSmsServlet")
public class SendingSmsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SendingSmsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    response.setContentType("text/html");
	    SendSms sm= new SendSms();
	    String num=request.getParameter("number");
	    String message="your_cost_for_"+request.getParameter("prdname")+"_is_match_you_can_purchase";
	    sm.sendmessage(message,num);

	    //response.sendRedirect("User_Dashboard.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
