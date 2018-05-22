package pe.edu.cibertec.inteceptor;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
//import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class ClearCacheInterceptor  
implements Interceptor{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		
		System.out.println("intercept");
		
		ActionContext context = (ActionContext)invocation.getInvocationContext();
		HttpServletResponse response = (HttpServletResponse)context.get(StrutsStatics.HTTP_RESPONSE);
        response.setHeader("Pragma", "no-cache");
        response.addHeader("Cache-Control", "must-revalidate");
        response.addHeader("Cache-Control", "no-cache");
        response.addHeader("Cache-Control", "no-store");
        response.setDateHeader("Expires", 0);
        return invocation.invoke();
	}

	@Override
	public void destroy() {
		System.out.println("destroy");
		
	}

	@Override
	public void init() {
		System.out.println("init");
		
	}

}
