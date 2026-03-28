package ctrl;

import javax.servlet.http.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class LogoutCtrl {
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request,HttpSession session) {
		session.invalidate();
		String url = request.getParameter("url");
		return "redirect:/"+(url.equals("null")? "":url.replace("~", "&"));
	}
}
