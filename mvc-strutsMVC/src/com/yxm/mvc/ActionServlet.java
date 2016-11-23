package com.yxm.mvc;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yxm.action.Action;

public class ActionServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * 无参构造方法，用于反射调用
	 */
	public ActionServlet(){
		super();
	}
	/**
	 * 页面中使用get方式提交，执行post方法
	 */
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException{
		System.out.println("执行doGet");
		doPost(req, res);
	}
	/**
	 * 页面使用post方式提交，，执行do_Dispatcher方法
	 */
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException{
		do_Dispatcher(req, res);
	}
	/**
	 * 用来处理视图层发送来的请求,并进行转发
	 * @param req
	 * @param res
	 */
	private void do_Dispatcher(HttpServletRequest req,HttpServletResponse res){
		try {
			//获取页面设定元素值
			String forwardJsp=(String) req.getParameter("forwardJsp");
			String logicName = (String) req.getParameter("logicName");
			
			//定义系统名变量
			String systemName = "";
			//获取访问路径
			String ss = req.getServletPath();
			
			systemName = ss.split("/")[1].replace(".do","");
			//进行页面值转换
			HashMap infoIn = getRequestToMap(req);
			String actionName = getActionName(systemName,logicName);
			System.out.println(actionName);
			//调用相应的业务逻辑com.yxm.action.HelloWorldAction
			Class<?> clazz = Class.forName(actionName);
			Action action = (Action)clazz.newInstance();
			Map infoOut = action.doAction(infoIn);
			//将处理后的结果返回页面
			req.setAttribute("infoOut", infoOut);
			RequestDispatcher rd = req.getRequestDispatcher("/jsp/" + forwardJsp+ ".jsp");
			rd.forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 将页面中所有元素放在HashMap中
	 * @param req
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unused")
	private HashMap getRequestToMap(HttpServletRequest req)throws
	Exception{
		req.setCharacterEncoding("GBK");
		HashMap infoIn = new HashMap();
		for (Enumeration e = req.getParameterNames(); e.hasMoreElements();){
			//获取页面中所有元素名
			String strName = (String)e.nextElement();
			//根据名称获取对应的值
			String[] values = req.getParameterValues(strName);
			
			if(values == null){//假如没有值
				infoIn.put(strName, "");
			}else if(values.length == 1){//假如只有一个值
				infoIn.put(strName, values[0]);
			}else{//假如有多个值
				infoIn.put(strName, values);
			} 
		}
		return infoIn;
	}
    
	/**
	 * 获取指定的逻辑名
	 * @param systemName
	 * @param actionName
	 * @return
	 * @throws IOException
	 * @throws Exception
	 */
	private String getActionName(String systemName,String actionName)throws IOException, Exception{
		return "com." + systemName + ".action." + actionName;
	}
	
	public void destroy() {
	}
}
