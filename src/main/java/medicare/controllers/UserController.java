package medicare.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

//import medicare.models.FrontDesk;
import medicare.models.Patient;import medicare.services.PatientService;
@Controller
public class UserController {
	
	@Autowired PatientService psrv;
	@Autowired HttpSession session;
	
	@GetMapping("/patientregbyuser")
	public String regpatient(Model model)
	{
		String patientid="patient"+(psrv.countPatient()+1);
		model.addAttribute("patientid", patientid);
		System.out.println(model.getAttribute(patientid));
		
		return "addpatientbyuser";
	}
	@PostMapping("/registerpatientbyuser")
	public String savePatient(Patient pat,String role,RedirectAttributes ra,Model model) {
		psrv.savePatient(pat);
		System.out.println(pat);
		model.addAttribute("users",psrv.allUserPatients((String)session.getAttribute("userid"))); //psrv.allUserPatients((String)model.getAttribute("userid")));
		return "udashboard";
	}
	@GetMapping("/viewuserdboard")
	public String udashboard(Model model,RedirectAttributes ra) {
		ra.addFlashAttribute("msg", "Patient registered succecssfully");
		return "udashboard";
	}
	@GetMapping("/viewpatientsbyuser")
	public String udashboardz(Model model,RedirectAttributes ra) {
		model.addAttribute("users",psrv.allUserPatients((String)session.getAttribute("userid"))); //psrv.allUserPatients((String)model.getAttribute("userid")));
		ra.addFlashAttribute("msg", "Patient registered succecssfully");
		return "udashboard";
	}
	

	@GetMapping("/patientbill")
	public String z(Model model,RedirectAttributes ra) {
		model.addAttribute("users",psrv.allUserPatients((String)session.getAttribute("userid"))); //psrv.allUserPatients((String)model.getAttribute("userid")));
		return "searchpatientbyuser";
	}
	
	@PostMapping("/kk")
	public String searchpatient(String patientid,RedirectAttributes ra,Model model) {
		Patient pat=(psrv.userfindByPatientId(patientid,(String)session.getAttribute("userid")));
		model.addAttribute("patient", pat);
		System.out.println(pat);
		return "patientbillbyidforuser";
	}
	@GetMapping("/detailpd")
	public String view(String patientid,RedirectAttributes ra,Model model) {
		Patient pat=(psrv.userfindByPatientId(patientid,(String)session.getAttribute("userid")));
		model.addAttribute("patient", pat);
		System.out.println(pat);
		
		return "detailpd";
	}
	

}
