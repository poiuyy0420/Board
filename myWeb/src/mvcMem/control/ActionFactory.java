package mvcMem.control;

import mvcMem.action.Action;
import mvcMem.action.IdCheckAction;
import mvcMem.action.IndexAction;
import mvcMem.action.LoginFormAction;
import mvcMem.action.LoginProcAction;
import mvcMem.action.LogoutAction;
import mvcMem.action.ModifyFormAction;
import mvcMem.action.RegFormAction;
import mvcMem.action.RegProcAction;
import mvcMem.action.ZipCheckAction;

public class ActionFactory {
	private static ActionFactory factory;
	private ActionFactory() {}
	
	// 액션팩토리 객체 생성
	public static synchronized ActionFactory getInstance() {
		if(factory==null) {
			factory = new ActionFactory();
		}
		return factory;
	}
	
	public Action getAction(String cmd) {
		Action action = null;
		switch(cmd) {
		case "index":
			action = new IndexAction();
			break;
		case "regForm":
			action = new RegFormAction();
			break;
		case "idCheck":
			action = new IdCheckAction();
			break;
		case "zipCheck":
			action = new ZipCheckAction();
			break;
		case "regProc":
			action = new RegProcAction();
			break;
		case "login":
			action = new LoginFormAction();
			break;
		case "loginProc":
			action = new LoginProcAction();
			break;
		case "logout":
			action = new LogoutAction();
			break;
		case "modifyForm":
			action = new ModifyFormAction();
			break;

		}
		
		return action;
	}

}
