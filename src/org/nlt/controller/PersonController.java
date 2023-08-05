package org.nlt.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nlt.model.Persons;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PersonController extends ParentController {

	public PersonController() {
		System.out.println("Person Controller Object Created");
	}

	@RequestMapping(value = "/addPerson", method = RequestMethod.POST)
	public ModelAndView addPerson(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("AddPerson Method");

		Map m = new HashMap();
		
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String address = req.getParameter("address");
		String city = req.getParameter("city");
		String state = req.getParameter("state");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		
		String age = req.getParameter("age");
		String gender = "Male";
		
		
		m.put("FirstNameValue", firstName);
		m.put("LastNameValue", lastName);
		m.put("Address", address);
		m.put("City", city);
		m.put("State", state);
		m.put("Email", email);
		m.put("AgeValue", age);
		m.put("PhoneValue", phone);

		 
		 if (firstName.isEmpty()) {
			m.put("NameError", "*Name Required");
		}else if (lastName.isEmpty()) {
			m.put("LastNameError", "*LastName Required");
		} else if (address.isEmpty()) {
			m.put("AddressError", "*Address Required");
		}else if (city.isEmpty()) {
			m.put("CityError", "*City Required");
		}else if (state.isEmpty()) {
			m.put("StateError", "*State Required");
		}else if (email.isEmpty()) {
			m.put("EmailError", "*Email Required");
		}else if (phone.isEmpty()) {
			m.put("PhoneError", "*Phone Required");
		}   else {
			Persons person = new Persons();
			person.setFirstName(firstName);
			person.setLastName(lastName);
			person.setAddress(address);
			person.setCity(city);
			person.setState(state);
			person.setEmail(email);
			person.setGender(gender);
			person.setPhone(Long.parseLong(phone));
			person.setStatus(1);
			person.setCreated(new Date());
			person.setModified(new Date());
			if (personService.addPerson(person)) {
				m.put("SuccessMessage", "Record Submitted Successfully");
				m.put("FirstNameValue", "");
				m.put("LastNameValue", "");
				m.put("AddressValue", "");
				m.put("CityValue", "");
				m.put("StateValue", "");
				m.put("EmailValue", "");
				m.put("PhoneValue", "");
			} else {
				m.put("ErrorMessage", "Couldn't Submit Record!");
			}
		}

		m.put("Action", "./addPerson");
		m.put("ButtonValue", "SUBMIT");
		m.put("Title", "REGISTRATION PAGE");
		m.put("PersonList", personService.getPersons());
		return new ModelAndView("index", m);
	}

	@RequestMapping(value = "/getPersonEdit", method = RequestMethod.GET)
	public ModelAndView getPersonEdit(HttpServletRequest req, HttpServletResponse resp) {

		Map m = new HashMap();

		String id = req.getParameter("id");
		Persons person = personService.getPerson(Integer.parseInt(id));

		if (person != null) {
			m.put("IdValue", person.getId());
			m.put("FirstNameValue", person.getFirstName());
			m.put("LastNameValue", person.getLastName());
			m.put("AddressValue", person.getAddress());
			m.put("CityValue", person.getCity());
			m.put("StateValue", person.getState());
			m.put("EmailValue", person.getEmail());
			m.put("PhoneValue", person.getPhone());
		}

		m.put("Action", "./addPerson");
		m.put("ButtonValue", "SUBMIT");
		m.put("Title", "REGISTRATION PAGE");
		m.put("PersonList", personService.getPersons());
		return new ModelAndView("index", m);
	}

	@RequestMapping(value = "/deletePerson", method = RequestMethod.GET)
	public ModelAndView getPersonDelete(HttpServletRequest req, HttpServletResponse resp) {

		Map m = new HashMap();

		String id = req.getParameter("id");
		Persons person = personService.getPerson(Integer.parseInt(id));//will fetch existing object

		if (person != null) {
			person.setStatus(0);//overwrite
			person.setModified(new Date());//overwrite
			
			boolean result = personService.deletePerson(person);
			if(result)
			{
				m.put("SuccessMessage", "Record deleted Successfully");
				m.put("FirstNameValue", "");
				m.put("LastNameValue", "");
				m.put("AddressValue", "");
				m.put("CityValue", "");
				m.put("StateValue", "");
				m.put("EmailValue", "");
				m.put("PhoneValue", "");
			}
			else
			{
				m.put("ErrorMessage", "Couldn't Delete Record!");
			}
		}

		m.put("Action", "./deletePerson");
		m.put("ButtonValue", "DELETE");
		m.put("Title", "REGISTRATION PAGE");
		m.put("PersonList", personService.getPersons());
		return new ModelAndView("index", m);
	}

	@RequestMapping(value = "/updatePerson", method = RequestMethod.POST)
	public ModelAndView updatePerson(HttpServletRequest req, HttpServletResponse resp) 
	{
		Map m = new HashMap();

		String id = req.getParameter("id");
		Persons person = personService.getPerson(Integer.parseInt(id));

		if (person != null) 
		{
			String firstName = req.getParameter("firstName");
			String lastName = req.getParameter("lastName");
			String address = req.getParameter("address");
			String city = req.getParameter("city");
			String state = req.getParameter("state");
			String email = req.getParameter("email");
			String phone = req.getParameter("phone");
			String gender = req.getParameter("gender");

			person.setFirstName(firstName);
			person.setLastName(lastName);
			person.setAddress(address);
			person.setCity(city);
			person.setState(state);
			person.setEmail(email);
			person.setGender(gender);
			person.setPhone(Long.parseLong(phone));
			person.setModified(new Date());// overwrite

			boolean result = personService.updatePerson(person);
			if (result) 
			{
				m.put("SuccessMessage", "Record Submitted Successfully");
				m.put("FirstNameValue", "");
				m.put("LastNameValue", "");
				m.put("AddressValue", "");
				m.put("CityValue", "");
				m.put("StateValue", "");
				m.put("EmailValue", "");
				m.put("PhoneValue", "");
			} 
			else 
			{
				m.put("ErrorMessage", "Couldn't update records");
			}
		}
			m.put("Action", "./updatePerson");
			m.put("ButtonValue", "UPDATE");
			m.put("Title", "REGISTRATION PAGE");
			m.put("PersonList", personService.getPersons());
			return new ModelAndView("index", m);
		
	}
	
	
}