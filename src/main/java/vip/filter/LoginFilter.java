package vip.filter;

import net.rubyeye.xmemcached.MemcachedClient;
import net.rubyeye.xmemcached.exception.MemcachedException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import vip.util.CookieUtil;
import vip.util.SessionLogin;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.concurrent.TimeoutException;

public class LoginFilter implements Filter{

    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        //MemcachedClient  memcachedClient =  context.getBean(MemcachedClient.class);
        SessionLogin login = (SessionLogin) request.getSession().getAttribute("sessionLogin");
        String cookieValue = CookieUtil.get(request,"lg_");
        //response.sendError(403,"请先登录");
        if(1==1)
            filterChain.doFilter(servletRequest,servletResponse);
        return ;
        /*if(login == null){
            try {
                login = memcachedClient.get(cookieValue);
                if(login != null){
                    request.getSession().setAttribute("sessionLogin", login);
                    filterChain.doFilter(servletRequest,servletResponse);
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else{
            filterChain.doFilter(servletRequest,servletResponse);
            return;
        }
        response.sendError(403,"请先登录");*/
    }

    @Override
    public void destroy() {

    }
}
