package com.yxm.action;

import java.util.HashMap;
import java.util.Map;

public class ExamAction implements Action {
    //根据页面请求,进行动作转换
	@Override
	public HashMap doAction(HashMap infoIn) {
		String action = (infoIn.get("action") == null) ? "" : (String)
				infoIn.get("action");
		HashMap infoOut = new HashMap();
		if (action.equals("")) infoOut = this.doInit (infoIn);
		else if (action.equals("insert")) infoOut = this.doInsert (infoIn);
		else if (action.equals("update")) infoOut = this.doUpdate(infoIn);
		else if (action.equals("delete")) infoOut = this.doDelete(infoIn);
		else if (action.equals("query")) infoOut = this. doQuery(infoIn);
		return infoOut;
	}
	
	private HashMap doInit(HashMap infoIn){
		HashMap infoOut = infoIn;
		try {
			 
			} catch(Exception e) {
			e.printStackTrace();
			} finally {
			return infoOut;
			}
	}
	
	/**该方法用来进行新增
	* @param infoIn
	* @return HashMap
	*/
	private HashMap doInsert(HashMap infoIn) {
	HashMap infoOut = infoIn;
	try {
	 
	} catch(Exception e) {
	e.printStackTrace();
	} finally {
	return infoOut;
	}
	}
	
	private HashMap doUpdate(HashMap infoIn){
	 	 HashMap infoOut = infoIn;
		try{
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			return infoOut;
		}
		
	}
	/**该方法用来进行删除
	* @param infoIn
	* @return HashMap
	*/
	private HashMap doDelete(HashMap infoIn) {
	HashMap infoOut = infoIn;
	try {
	 
	} catch(Exception e) {
	e.printStackTrace();
	} finally {
	return infoOut;
	}
	}
	/**该方法用来进行查询
	* @param infoIn
	* @return HashMap
	*/
	private HashMap doQuery(HashMap infoIn) {
	HashMap infoOut = infoIn;
	try {
	  
	} catch(Exception e) {
	e.printStackTrace();
	} finally {
	return infoOut;
	}
	}
	}
