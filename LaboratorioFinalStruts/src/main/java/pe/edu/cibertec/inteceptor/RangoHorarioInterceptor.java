package pe.edu.cibertec.inteceptor;

import java.util.Calendar;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class RangoHorarioInterceptor implements Interceptor {
	private static final long serialVersionUID = 670529070821307910L;

	@Override
	public void destroy() {
		System.out.println("destroy");
	}

	@Override
	public void init() {
		System.out.println("init");
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("intercept");
		Calendar cl = Calendar.getInstance();
		int hora = cl.get(Calendar.HOUR_OF_DAY);
		if(hora>=18) {
			return "cerrado";
		}
		if(hora<9) {
			return "cerrado";
		}
		
		return invocation.invoke();
	}
	
}
