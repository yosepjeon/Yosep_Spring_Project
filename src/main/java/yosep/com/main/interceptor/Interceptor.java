package yosep.com.main.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
 
public class Interceptor extends HandlerInterceptorAdapter{
    private static final Logger logger = LoggerFactory.getLogger(Interceptor.class);
    
    static final String[] EXCLUDE_URL_LIST = {
        "/blog/login","/blog","/blog/first","/blog/signup","/blog/login"
    };
    
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {    
        String reqUrl = request.getRequestURL().toString();    
        for( String target : EXCLUDE_URL_LIST ){        
            if(reqUrl.indexOf(target)>-1){
                return true;    
            }            
        }        
        
        HttpSession session = request.getSession();        
        String userId = (String)session.getAttribute("userId");
        
        if(userId==null || userId.trim().equals("")){
            logger.info(">> interceptor catch!!! userId is null.. ");            
            session.invalidate();            
            response.sendRedirect("/main/blog/login");
            
            return false;            
        }
        
        return true;        
    }    
}
