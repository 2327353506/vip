package vip.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class RedirectView {

    @RequestMapping(method = RequestMethod.GET)
    public String redirect(HttpSession session){
        String address = "main.jsp";
        session.setAttribute("address",address);
        return "index";
    }

    @RequestMapping(value = "/page/{path}")
    public String redirect(@PathVariable("path")String path,HttpSession session){
        String address = "/page/"+path+".jsp";
        session.setAttribute("address",address);
        return "index";
    }
}
