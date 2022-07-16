package com.github.cheriimoya.OpenTOSCA-Nix;

import java.util.HashMap;

import javax.jws.Oneway;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.xml.bind.annotation.XmlElement;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.eclipse.winery.generators.ia.jaxws.AbstractService;

@WebService
public class com_github_cheriimoya_OpenTOSCA_Nix_neovim-nix__org_opentosca_interfaces_lifecycle extends AbstractService {

    private static final Logger logger = LoggerFactory.getLogger(
            com_github_cheriimoya_OpenTOSCA_Nix_neovim-nix__org_opentosca_interfaces_lifecycle.class
    );

	@WebMethod
	@SOAPBinding
	@Oneway
	public void install(

	) {
		// TODO: Implement your operation here.
	}



}
