package springmvcsearch;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FormController {

	@RequestMapping("/complex")
	public String showForm() {
		return "complexForm";
	}
	
	@RequestMapping(value="/handleform",method = RequestMethod.POST)
	public String formHandler(@ModelAttribute("student") Student student,BindingResult result) {
		if(result.hasErrors()) {
			return "complexForm";
		}
		
		System.out.println(student);
		System.out.println(student.getAddress());
		return "success";
	}
}
