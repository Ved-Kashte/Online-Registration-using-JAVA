package org.nlt.controller;


import org.nlt.services.HomeServices;
import org.nlt.services.PersonServices;

import org.nlt.services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;

public class ParentController {
	
	@Autowired
	protected UserServices userServices;

	@Autowired
	protected HomeServices homeService;

	@Autowired
	protected PersonServices personService;
}
