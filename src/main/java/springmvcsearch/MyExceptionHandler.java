package springmvcsearch;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;

@ControllerAdvice
public class MyExceptionHandler {

	//handling exception in our spring mvc
	
		@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
		@ExceptionHandler(value = NullPointerException.class)
		public String exceptionHandlerNull(Model m) {
			m.addAttribute("msg","Null pointer exception has occured");
			return "null-page";
		}
		
		@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
		@ExceptionHandler(value = NumberFormatException.class)
		public String exceptionHandlerNumberFormat(Model m) {
			m.addAttribute("msg","Number format exception has occured");
			return "null-page";
		}
		
		@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
		@ExceptionHandler(value = Exception.class)
		public String exceptionHandlerGeneric(Model m) {
			m.addAttribute("msg"," exception has occured");
			return "null-page";
		}

}
