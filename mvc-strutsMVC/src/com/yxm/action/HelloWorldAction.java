package com.yxm.action;

import java.util.HashMap;

public class HelloWorldAction implements Action {
   /**
    * 该方法用来实现分动作处理
    */
	@Override
	public HashMap doAction(HashMap infoIn) {
		String action = (infoIn.get("action")==null)?"":(String)infoIn.get("action");
		HashMap infoOut = new HashMap();
		if(action.equals("")) infoOut = this.doInit(infoIn);
		else if(action.equals("show")) infoOut = this.doShow(infoIn);
		return infoOut;
	}
	/**
	 * 该方法用来实现没有传入动作时要处理的内容
	 * @param infoIn
	 * @return
	 */
	private HashMap doInit(HashMap infoIn){
		HashMap infoOut = infoIn;
		try {
			 infoOut.put("msg","HelloWorld");
			} catch(Exception e) {
			e.printStackTrace();
			} finally {
			return infoOut;
			}
	}
	
	/**该方法用来输出HelloWorld
	* @param infoIn
	* @return HashMap
	*/
	private HashMap doShow(HashMap infoIn) {
	HashMap infoOut = infoIn;
	try {
		infoOut.put("msg","HelloWorld");
	} catch(Exception e) {
	e.printStackTrace();
	} finally {
	return infoOut;
	}
	}
}
